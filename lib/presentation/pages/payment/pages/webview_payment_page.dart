import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPaymentPage extends StatelessWidget {
  const WebviewPaymentPage({
    super.key,
    required this.url,
    required this.placeToPayReference,
    required this.totalToPay,
    this.onTap,
  });
  final String url;
  final PlaceToPayReferenceModel placeToPayReference;
  final double totalToPay;
  final void Function(BuildContext)? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(url))
          ..setNavigationDelegate(
            NavigationDelegate(
              onNavigationRequest: (request) {
                if (request.url.contains('transaction_done')) {
                  context.replaceRoute(
                    NotificationRoute(
                      buttonText: l10n.continuar,
                      message: l10n.pagoRealizadoConExito,
                      notificationType: NotificationType.success,
                      title: l10n.confirmacionDePago,
                      onTap: (context) => onTap?.call(context),
                      description: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // TODO(alejandro): traducir los textos
                        children: [
                          PrimaryCaption(
                            'Pagado:'
                            ' \$${totalToPay.toStringAsFixed(2)}',
                            textAlign: TextAlign.start,
                          ),
                          PrimaryCaption(
                            'Número de transacción:'
                            ' ${placeToPayReference.paymentGatewayReference}',
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  );
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
              // onPageFinished: (url) {
              //   onPageFinished?.call();
              // },
            ),
          )
          ..setJavaScriptMode(JavaScriptMode.unrestricted),
      ),
    );
  }
}
