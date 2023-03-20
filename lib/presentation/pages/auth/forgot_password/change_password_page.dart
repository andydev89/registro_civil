import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      scrollContentOnResized: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PrimaryTitle(
            title: l10n.cambiarContrasena,
            color: Colors.white,
          ),
          PrimaryLabel(l10n.ingreseDatos),
          const SizedBox(
            height: 5,
          ),
          PrimaryTextField(
            hintText: l10n.nuevaContrasena,
            ligth: true,
            // suffixIcon: Ionicons.eye_off_outline,
            // colorSuffixIcon: Colors.white,
            textInputType: TextInputType.visiblePassword,
            suffixIcon: SecondaryIconButton(
              onPressed: () {},
              icon: Icons.remove_red_eye,
            ),
          ),
          PrimaryTextField(
            hintText: l10n.confirmarContrasena,
            ligth: true,
            suffixIcon: SecondaryIconButton(
              onPressed: () {},
              icon: Icons.remove_red_eye,
            ),
            textInputType: TextInputType.visiblePassword,
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
