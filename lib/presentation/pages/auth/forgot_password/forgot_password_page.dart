import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/models/auth/enter_email_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      scrollContentOnResized: true,
      child: EnterEmailModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.cambiarContrasena,
                color: Colors.white,
              ),
              PrimaryText(
                l10n.ingreseCorreo,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              PrimaryReactiveEmailField(
                formControl: form.emailControl,
                hintText: l10n.correoE,
                ligth: true,
              ),
              const SizedBox(
                height: 5,
              ),
              ReactiveEnterEmailModelFormConsumer(
                builder: (_, form, __) {
                  return PrimaryButton(
                    title: l10n.siguiente,
                    onPressed: form.form.valid
                        ? () => context.navigateTo(const ChangePasswordRoute())
                        : null,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
