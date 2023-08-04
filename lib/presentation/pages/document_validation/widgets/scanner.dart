import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerPage extends StatefulWidget {
  QRScannerPage({super.key, this.isQRScanner = true/*, required this.onScan*/});

  bool isQRScanner;
  // void Function(String? scannedText) onScan;

  @override
  State<StatefulWidget> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool? flashEnabled = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildQrView(context),
      /*floatingActionButton: FloatingActionButton(
          heroTag: 'scan_qr',
          onPressed: () async {
            await controller?.toggleFlash();
            this.flashEnabled = await controller?.getFlashStatus();
            setState(() {});
          },
          child: this.flashEnabled != null && this.flashEnabled == false
              ? Icon(Icons.flashlight_off)
              : Icon(Icons.flashlight_on),
          backgroundColor: AppTheme.secondaryColor,
        )*/
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    print("Size screen: ${MediaQuery.of(context).size.width}");
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    // List<BarcodeFormat> barcodeFormats = BarcodeFormat.values.where((element) => element != BarcodeFormat.qrcode).toList();
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      formatsAllowed:
          widget.isQRScanner ? [BarcodeFormat.qrcode] : BarcodeFormat.values,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          // borderRadius: 10,
          borderLength: 8,
          borderWidth: 6),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    this.controller?.resumeCamera();
    controller.scannedDataStream.listen((scanData) {
      print("Scaned text: ${scanData.code}");
      this.controller?.dispose();
      // widget.onScan(scanData.code);
      // Navigator.pop(context, scanData.code);
      context.popRoute(scanData.code);
      /* print("Scaned text: ${scanData.code}");
      setState(() {
        result = scanData;
      });*/
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
