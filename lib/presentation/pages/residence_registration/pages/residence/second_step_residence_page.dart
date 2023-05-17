import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_agreemente_type.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SecondStepResidencePage extends ConsumerWidget {
  const SecondStepResidencePage({
    super.key,
    this.operation = Crud.create,
    this.residenceIndex,
  });
  final Crud operation;
  final int? residenceIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SecondStepResidenceModelFormBuilder(
      initState: (context, formModel) {
        if (operation == Crud.create) {
          formModel.electricalCodeControl.value = '';
          formModel.electricLightMeterControl.value = false;
        }
        formModel.electricLightMeterControl.valueChanges.listen(
          (event) {
            if (event ?? false) {
              formModel.electricalCodeControl
                ..setValidators([
                  Validators.required,
                  Validators.maxLength(10),
                  Validators.minLength(10),
                ])
                ..updateValueAndValidity();
            } else {
              formModel.electricalCodeControl
                ..clearValidators()
                ..value = ''
                ..updateValueAndValidity();
            }
          },
        );
      },
      model: operation.isEditOrRead
          ? ref.watch(residentialPProvider.notifier).getSecondStep()
          : null,
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: l10n.ingreseInfSol,
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                PrimaryReactiveCheckBox(
                  label: l10n.cuentaLuzElectrica,
                  formControl: formModel.electricLightMeterControl,
                  readOnly: operation.isRead,
                ),
                ReactiveSecondStepResidenceModelFormConsumer(
                  builder: (_, __, ___) => Visibility(
                    visible: formModel.electricLightMeterControl.value ?? false,
                    child: PrimaryReactiveTextField(
                      label: l10n.codigoElecNac,
                      readOnly: operation.isRead,
                      formControl: formModel.electricalCodeControl,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        //  solo 10 digitos
                        LengthLimitingTextInputFormatter(10),
                      ],
                    ),
                  ),
                ),
                PrimaryReactiveDropdown(
                  items: ResidentialHousingType.values,
                  label: l10n.tipoDeVivienda,
                  formControl: formModel.housingTypeControl,
                  readOnly: operation.isRead,
                ),
                PrimaryReactiveDropdown(
                  items: ResidentialTenureHousingAgreementeType.values,
                  label: l10n.tenencia,
                  formControl: formModel.tenureHousingTypeAgreementControl,
                  readOnly: operation.isRead,
                ),
                PrimaryReactiveTextField(
                  label: l10n.numerovillaedi,
                  formControl: formModel.numberVillaBuildingControl,
                  keyboardType: TextInputType.number,
                  readOnly: operation.isRead,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                PrimaryReactiveTextField(
                  label: l10n.numeroPiso,
                  formControl: formModel.floorNumberControl,
                  keyboardType: TextInputType.number,
                  readOnly: operation.isRead,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                PrimaryReactiveTextField(
                  label: l10n.numeroDepartamento,
                  formControl: formModel.departmentNumberControl,
                  keyboardType: TextInputType.number,
                  readOnly: operation.isRead,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                PrimaryReactiveDropdown(
                  items: ResidenceType.values,
                  label: l10n.tipoDeResidencia,
                  readOnly: operation.isRead,
                  formControl: formModel.typeControl,
                ),
              ],
            ).horizontalPadding(20),
          ),
        ),
        bottomNavigationBar: ReactiveSecondStepResidenceModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: operation.isCreateOrEdit ? l10n.guardar : l10n.aceptar,
            onPressed: formModel.form.valid
                ? () {
                    if (operation.isCreateOrEdit) {
                      ref
                          .read(residentialPProvider.notifier)
                          .updateSecondStep(formModel.model);
                      final residence = ref.watch(residentialPProvider);

                      final existResidence =
                          ref.watch(resRegProvider.notifier).existResidence(
                                residence,
                                operation,
                              );
                      if (existResidence) {
                        showAlert(l10n.noRepetir, TypeAlert.error);
                        return;
                      }
                      if (operation.isCreate) {
                        ref
                            .read(resRegProvider.notifier)
                            .addResidence(residence);
                      } else {
                        ref
                            .read(resRegProvider.notifier)
                            .editResidence(residenceIndex!, residence);
                      }
                      showAlert(l10n.residenciaGuardadaCor, TypeAlert.success);
                    }
                    context.navigateTo(
                      ResidenceRegistrationRouterRoute(showAgreement: false),
                    );
                  }
                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
