import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons_group/rigth_left_buttons.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class RequestInformationFirstStepPage extends StatelessWidget {
  const RequestInformationFirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationFirstStepModelFormBuilder(
      initState: (context, formModel) {
        formModel.haveElectricLightMeterControl.updateValue(false);
      },
      builder: (context, formModel, child) => SingleChildScrollView(
        child: Column(
          children: [
            PrimaryReactiveCheckBox(
              formControl: formModel.haveElectricLightMeterControl,
              label: l10n.cuentaConMedidorDeLuzElectrica,
            ),
            ReactiveResidenceRegistrationFirstStepModelFormConsumer(
              builder: (context, formModel, child) => Visibility(
                visible: formModel.haveElectricLightMeterControl.value!,
                child: PrimaryReactiveTextField(
                  formControl: formModel.nationalElectricUnicCodeControl,
                  label: l10n.codigoUnicoElectricoNacional,
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
            RigthLeftButtons(
              rigthButtonTitle: l10n.siguiente,
              onRigth: () =>
                  context.navigateTo(const RequestInformationSecondStepRoute()),
              onLeft: () => context.navigateTo(const HomeRouterRoute()),
            ).verticalPadding(10),
          ],
        ),
      ),
    );
  }
}
