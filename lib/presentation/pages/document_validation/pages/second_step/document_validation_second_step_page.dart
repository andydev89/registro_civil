import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class DocumentValidationSecondStepPage extends ConsumerWidget {
  const DocumentValidationSecondStepPage({
    required this.document,
    required this.model,
    required this.code,
    required this.date,
    super.key,
  });

  final String document;
  final String code;
  final String date;
  final TypeServiceModel model;

  String _getFileName() {
    final currentDate = DateFormat('ddMMyyyy-HHmmss').format(DateTime.now());
    return '${code}_$currentDate.pdf';
  }

  Future<String?> _downloadPdf() async {
    // Decodificar el PDF desde Base64 a bytes

    try {
      final bytes = base64.decode(document);

      // Solicitar permiso para acceder al almacenamiento externo
      if (await Permission.storage.request().isGranted) {
        // Decodificar el PDF desde Base64 a bytes
        final downloadDirectory = await getDownloadPath();
        final directoryPath = '$downloadDirectory/Registro Civil';

        final baseDirExists = Directory(directoryPath).existsSync();
        if (!baseDirExists) {
          // Crear la carpeta si no existe
          await Directory(directoryPath).create(recursive: true);
        }

        // Generar un nombre de archivo único
        final fileName = _getFileName();
        final filePath = '$directoryPath/$fileName';

        // Guardar el archivo en la carpeta especificada
        await File(filePath).writeAsBytes(bytes, flush: true);
        return fileName;
      }
    } catch (err) {
      return null;
    }
    return null;
  }

  Future<void> _openCertificate() async {
    final bytes = base64.decode(document);

    final tempDirectory = await getTemporaryDirectory();
    final tempFilePath = '${tempDirectory.path}/temp.pdf';

    // Guardar el archivo en el directorio temporal
    await File(tempFilePath).writeAsBytes(bytes);

    // Abrir el archivo con openFile
    await OpenFile.open(tempFilePath);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return FocusScope(
      node: FocusScopeNode(
        canRequestFocus: false,
      ),
      child: PrimaryScaffold(
        title: '${l10n.verificarInfo}: ${model.name}',
        body: Expanded(
          child: Scaffold(
            body: PDFViewWidget(document: document),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryAsyncButton(
              title: l10n.descargar,
              onPressed: () async {
                await _downloadPdf().then((value) {
                  if (value != null) {
                    showContentDialog(
                      context,
                      title: PrimaryTitle(
                        title: l10n.descargaExitosa,
                        textAlign: TextAlign.center,
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: fontSizeDefault,
                                  ),
                                  text: l10n.ubicacionArchivo,
                                ),
                                TextSpan(
                                  style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: fontSizeDefault,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  text: 'Download/$value',
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      actions: (navState) => [
                        PrimaryButton(
                          title: l10n.aceptar,
                          onPressed: () => navState.pop(),
                        ).symmetricPadding(10, 30),
                        /*PrimaryButton(
                          title: l10n.cancelar,
                          onPressed: () => navState.pop(),
                        ).symmetricPadding(10, 30)*/
                      ],
                    );
                  } else {
                    showAlert(
                      l10n.descargaCertErr,
                      TypeAlert.error,
                    );
                  }
                });
              },
            ),
            const SizedBox(
              height: 8,
            ),
            PrimaryAsyncButton(
              title: l10n.abrirCertificado,
              onPressed: _openCertificate,
            ),
          ],
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
