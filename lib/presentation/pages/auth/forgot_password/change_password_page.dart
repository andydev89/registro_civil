import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
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
          TextFormFieldAuth(
            label: l10n.nuevaContrasena,
            suffixIcon: Ionicons.eye_off_outline,
            colorSuffixIcon: Colors.white,
            textInputType: TextInputType.visiblePassword,
            inputFormatters: const [],
          ),
          TextFormFieldAuth(
            label: l10n.confirmarContrasena,
            colorSuffixIcon: Colors.white,
            suffixIcon: Ionicons.eye_off_outline,
            textInputType: TextInputType.visiblePassword,
            inputFormatters: const [],
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButtonWidget(
            title: l10n.cambiarContrasena,
          ).withRevealAnimation,
        ],
      ),
    );
  }
}
