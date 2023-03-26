import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/pages/simple_certificate_second_step/simple_certificate_second_step_page.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class SimpleCertificateFirstStepPersonalPage extends StatelessWidget {
  const SimpleCertificateFirstStepPersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return NuiModelFormBuilder(
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryReactiveTextField(
                    label: l10n.numCedula,
                    formControl: formModel.nuiControl,
                    hintText: '0123456789',
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ).horizontalPadding(60),
        bottomNavigationBar: ReactiveNuiModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.aceptar,
            onPressed: formModel.form.valid
                ? () =>
                    context.navigateTo(const SimpleCertificateSecondStepRoute())
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
