import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

Future<void> showAceptAgreement(BuildContext context) async {
  var condition = false;
  final l10n = context.l10n;

  await showDialog<void>(
    context: context,
    barrierDismissible: false, // Prevents dismissing by tapping outside
    builder: (BuildContext context) {
      return AceptAgreementFormBuilder(
        builder: (context, formModel, _) {
          return WillPopScope(
            onWillPop: () {
              if (condition) {
                return Future.value(true);
              } else {
                return Future.value(false);
              }
            },
            child: AlertDialog(
              title: Row(
                children: [
                  Assets.svg.error.svg(width: 24, height: 24),
                  const SizedBox(width: 10),
                  PrimaryText(
                    l10n.advertencia,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      child: PrimaryText(
                        l10n.textoIntRegMat,
                        overFlow: TextOverflow.visible,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  PrimaryReactiveCheckBox(
                    label: l10n.aceptoAdv,
                    formControl: formModel.aceptControl,
                    overFlow: TextOverflow.visible,
                    maxLines: 5,
                  ),
                ],
              ),
              actions: [
                Column(
                  children: [
                    ReactiveAceptAgreementFormConsumer(
                      builder: (_, formModel, __) {
                        return PrimaryButton(
                          title: l10n.aceptar,
                          onPressed: formModel.form.valid
                              ? () {
                                  condition = true;
                                  Navigator.of(context).pop();
                                }
                              : null,
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      title: l10n.cancelar,
                      onPressed: () {
                        condition = true;
                        Navigator.of(context).pop();
                        context.navigateBack();
                      },
                    ),
                  ],
                ).symmetricPadding(10, 30)
              ],
            ),
          );
        },
      );
    },
  );
}
