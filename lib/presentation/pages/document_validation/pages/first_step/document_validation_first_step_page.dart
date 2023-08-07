import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/document_validation/document_validation_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/document_validation/document_validation.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

class DocumentValidationFirstStepPage extends ConsumerWidget {
  const DocumentValidationFirstStepPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  String getDocumentCode(String cadena) {
    final exp = RegExp(r'No. certificado: (\d{3}-\d{3}-\d{5})');
    final match = exp.firstMatch(cadena);
    return match != null ? match.group(1) ?? '' : '';
  }

  DateTime? getIssueDate(String cadena) {
    final exp = RegExp(r'Fecha de emision: (\d{1,2}/\d{1,2}/\d{4})');
    final match = exp.firstMatch(cadena);
    if (match == null || match.group(1) == null) {
      return null;
    }
    final result = DateFormat('dd/MM/yyyy').parse(match.group(1)!);
    return result;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return DocumentValidationModelFormBuilder(
      builder: (context, formModel, child) {
        return PrimaryScaffold(
          title: l10n.validacionDocumentos,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveTextField(
                    label: l10n.nroDocumento,
                    formControl: formModel.documentCodeControl,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ],
                    suffixHorizontalPadding: 4,
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        size: 20,
                        color: blue,
                      ),
                      onPressed: () async {
                        await Permission.camera
                            .request()
                            .isGranted
                            .then((value) async {
                          if (value) {
                            final result = await context.pushRoute(
                              QRScannerRoute(),
                            );
                            if (result != null && result is String) {
                              final code = getDocumentCode(result);
                              final date = getIssueDate(result);
                              formModel.issueDateControl.updateValue(date);
                              formModel.documentCodeControl
                                  .updateValue(code.replaceAll('-', ''));
                              // print(result);
                            }
                          }
                        });
                      },
                    ),
                  ),
                  PrimaryReactiveDatePicker(
                    label: l10n.fechaEmision,
                    firstDate: DateTime(2023),
                    initFocusedDay: true,
                    lastDate: DateTime.now(),
                    formControl: formModel.issueDateControl,
                    availablesDate: null,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveDocumentValidationModelFormConsumer(
            builder: (_, formModel, __) => PrimaryAsyncButton(
              title: l10n.validar,
              onPressed: formModel.form.valid
                  ? () async {
                      final date = DateFormat('yyyy-MM-dd').format(
                        formModel.issueDateControl.value!,
                      );
                      await ref
                          .read(
                        validateDocumentProvider(
                          documentCode:
                              formModel.documentCodeControl.value ?? '',
                          issueDate: date,
                        ).future,
                      )
                          .when(
                        ok: (data) {
                          context.navigateTo(
                            DocumentValidationSecondStepRoute(
                              document: data.resultado,
                              model: typeServiceModel,
                              code: formModel.documentCodeControl.value ?? '',
                              date: date,
                            ),
                          );
                        },
                        err: (err) {
                          showAlert(
                            err.translate(context),
                            TypeAlert.error,
                          );
                        },
                      );
                    }
                  : null,
            ).symmetricPadding(10, 20),
          ),
        );
      },
    );
  }
}
