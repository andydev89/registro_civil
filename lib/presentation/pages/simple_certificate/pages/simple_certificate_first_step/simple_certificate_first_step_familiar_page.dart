import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/relationship_simple_certificate_enum.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class SimpleCertificateFirstStepFamiliarPage extends StatelessWidget {
  const SimpleCertificateFirstStepFamiliarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SimpleCertificateFirstStepFamiliarModelFormBuilder(
      builder: (context, formModel, child) {
        final isCanadis = ValueNotifier(
            formModel.conadisModelForm.conadisControl.value ?? false);
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryLabel(
                  l10n.numeroCedFam,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start,
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.nuiControl,
                  hintText: '${l10n.escriba}...',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: PrimaryReactiveDropdown<
                          RelationshipSimpleCertificateEnum>(
                        formControl: formModel.relationshipControl,
                        items: RelationshipSimpleCertificateEnum.values,
                        label: l10n.parentezco,
                        hintText: '${l10n.seleccione}...',
                      ),
                    ),
                  ],
                ),
                PrimaryReactiveCheckBox(
                  formControl: formModel.conadisModelForm.conadisControl,
                  label: l10n.tieneCarConadis,
                  onChanged: (value) => isCanadis.value = value.value ?? false,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: isCanadis,
                  builder: (_, value, __) {
                    return Visibility(
                      visible: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PrimaryLabel(
                            'No. CONADIS',
                            fontWeight: FontWeight.normal,
                          ),
                          PrimaryReactiveTextField(
                            formControl:
                                formModel.conadisModelForm.conadisNumberControl,
                            hintText: '01234567',
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(8),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ).horizontalPadding(60),
          ),
          bottomNavigationBar:
              ReactiveSimpleCertificateFirstStepFamiliarModelFormConsumer(
            builder: (context, formModel, child) => PrimaryButton(
              title: l10n.aceptar,
              onPressed: formModel.form.valid
                  ? () => context
                      .navigateTo(const SimpleCertificateSecondStepRoute())
                  : null,
            ).symmetricPadding(10, 30),
          ),
        );
      },
    );
  }
}
