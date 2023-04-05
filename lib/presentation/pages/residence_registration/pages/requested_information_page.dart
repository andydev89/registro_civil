import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class RequestedInformationPage extends StatelessWidget {
  const RequestedInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationModelFormBuilder(
      initState: (context, formModel) {
        formModel.haveElectricLightMeterControl.updateValue(false);
      },
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: 'Ingrese la infromación solicitada',
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                PrimaryReactiveCheckBox(
                  formControl: formModel.haveElectricLightMeterControl,
                  label: 'Cuenta con medidor de luz eléctrica',
                ),
                ReactiveResidenceRegistrationModelFormConsumer(
                  builder: (context, formModel, child) => Visibility(
                    visible: formModel.haveElectricLightMeterControl.value!,
                    child: PrimaryReactiveTextField(
                      formControl: formModel.nationalElectricUnicCodeControl,
                      label: 'Código único eléctrico nacional',
                    ).withRevealAnimation,
                  ),
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.phoneNumberControl,
                  label: l10n.telefonoCel,
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.emailAddressControl,
                  label: l10n.correoE,
                ),
                PrimaryReactiveTextAreaField(
                  formControl: formModel.observationsControl,
                  label: l10n.observaciones,
                ),
                SelectElementFromApi(
                  formControl: formModel.provinceControl,
                  label: l10n.provincia,
                  provider: provincesProvider,
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.cantonControl,
                  label: 'Canton',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.parroquiaControl,
                  label: 'Parroquia',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.primaryStreetControl,
                  label: 'Calle primcipal',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.secondaryStreetControl,
                  label: 'Calle secundaria',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.houseTypeControl,
                  label: 'Tipo de vivienda',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.tenureControl,
                  label: 'Tenure',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.villageOrBuildingNumberControl,
                  label: 'Numero de villa o edificio',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.floorNumberControl,
                  label: 'Numero de piso',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.appartmentNumberControl,
                  label: 'Numero de apartamento',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.residenceTypeControl,
                  label: 'Tipo de residencia',
                ),
                const PrimaryButton(
                  title: 'Añadir residencia',
                ),
                const SizedBox(
                  height: 10,
                ),
                const PrimaryButton(
                  title: 'Ver certificado',
                ),
                const SizedBox(
                  height: 10,
                ),
                PrimaryButton(
                  title: l10n.cancelar,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
