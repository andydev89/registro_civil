import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SecondStepResidencePage extends ConsumerWidget {
  const SecondStepResidencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SecondStepResidenceModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: l10n.ingreseInfSol,
        body: Column(
          children: [
            PrimaryReactiveCheckBox(
              label: l10n.cuentaLuzElectrica,
              formControl: formModel.electricLightMeterControl,
            ),
            ReactiveSecondStepResidenceModelFormConsumer(
              builder: (_, __, ___) => Visibility(
                visible: formModel.electricLightMeterControl.value ?? false,
                child: PrimaryReactiveTextField(
                  label: l10n.codigoElecNac,
                  formControl: formModel.electricalCodeControl,
                ),
              ),
            ),
            PrimaryReactiveDropdown(
              label: l10n.tipoDeVivienda,
              formControl: formModel.housingTypeControl,
            ),
            PrimaryReactiveDropdown(
              label: l10n.tenencia,
              formControl: formModel.tenureHousingTypeAgreementControl,
            ),
            PrimaryReactiveTextField(
              label: l10n.numerovillaedi,
              formControl: formModel.numberVillaBuildingControl,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            PrimaryReactiveTextField(
              label: l10n.numeroPiso,
              formControl: formModel.floorNumberControl,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            PrimaryReactiveTextField(
              label: l10n.numeroDepartamento,
              formControl: formModel.departmentNumberControl,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            PrimaryReactiveDropdown(
              label: l10n.tipoDeResidencia,
              formControl: formModel.typeControl,
            ),
          ],
        ),
        bottomNavigationBar: ReactiveSecondStepResidenceModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.siguiente,
            onPressed: formModel.form.valid
                ? () {
                    ref
                        .read(residentialPProvider.notifier)
                        .updateSecondStep(formModel.model);
                    context.navigateBack();
                  }
                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
