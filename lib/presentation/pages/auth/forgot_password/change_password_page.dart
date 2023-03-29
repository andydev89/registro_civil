import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_password_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      scrollContentOnResized: true,
      child: PasswordModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.cambiarContrasena,
                color: Colors.white,
              ),
              PrimaryLabel(
                l10n.ingreseCon,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              PrimaryReactivePasswordField(
                ligth: true,
                formControl: form.confirmPasswordForm.newPasswordControl,
                hintText: l10n.password,
                prefixIcon: Assets.svg.key.svg(),
              ),
              PrimaryReactivePasswordField(
                ligth: true,
                formControl: form.confirmPasswordForm.confirmPasswordControl,
                hintText: l10n.confirmarContrasena,
                prefixIcon: Assets.svg.key.svg(),
              ),
              const SizedBox(
                height: 5,
              ),
              ReactivePasswordModelFormConsumer(
                builder: (_, form, __) {
                  return PrimaryButton(
                    title: l10n.cambiarContrasena,
                    onPressed: form.form.valid ? () {} : null,
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
