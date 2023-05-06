import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_phone_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class RequestInformationFirstStepPage extends StatelessWidget {
  const RequestInformationFirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationFirstStepModelFormBuilder(
      initState: (context, formModel) {
        formModel.haveElectricLightMeterControl
          ..valueChanges.listen((event) {
            if (event == false) {
              formModel.nationalElectricUnicCodeControl.reset();
            }
          })
          ..updateValue(false);
      },
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
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
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                  ).withRevealAnimation,
                ),
              ),
              PrimaryReactivePhoneField(
                formControl: formModel.phoneNumberControl,
                label: l10n.telefonoCel,
              ),
              PrimaryReactiveEmailField(
                formControl: formModel.emailAddressControl,
                label: l10n.correoE,
              ),
              PrimaryReactiveTextAreaField(
                formControl: formModel.observationsControl,
                label: l10n.observaciones,
              ),
            ],
          ).horizontalPadding(20),
        ),
        bottomNavigationBar:
            ReactiveResidenceRegistrationFirstStepModelFormConsumer(
          builder: (_, formModel, __) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryButton(
                title: l10n.siguiente,
                onPressed: formModel.form.valid ? () {} : null,
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                title: l10n.siguiente,
                onPressed: () => context.navigateBack(),
              ),
            ],
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
