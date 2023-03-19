import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_form_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
      scrollContentOnResized: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PrimaryTitle(
            title: l10n.cambiarContrasena,
          ),
          PrimaryLabel(l10n.ingreseDatos),
          const SizedBox(
            height: 5,
          ),
          PrimaryTextFormField(
            label: l10n.nuevaContrasena,
            // suffixIcon: Ionicons.eye_off_outline,
            // colorSuffixIcon: Colors.white,
            textInputType: TextInputType.visiblePassword,
            inputFormatters: const [],
            suffixIcon: SecondaryIconButton(
              onPressed: () {},
              icon: Icons.remove_red_eye,
            ),
          ),
          PrimaryTextFormField(
            label: l10n.confirmarContrasena,
            suffixIcon: SecondaryIconButton(
              onPressed: () {},
              icon: Icons.remove_red_eye,
            ),
            textInputType: TextInputType.visiblePassword,
            inputFormatters: const [],
          ),
          const SizedBox(
            height: 5,
          ),
          PrimaryButton(
            title: l10n.cambiarContrasena,
          ).withRevealAnimation,
        ],
      ),
    );
  }
}
