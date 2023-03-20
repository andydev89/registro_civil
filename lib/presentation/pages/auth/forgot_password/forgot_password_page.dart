import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          PrimaryLabel(
            l10n.ingreseCorreo,
          ),
          const SizedBox(
            height: 5,
          ),
          PrimaryTextField(
            textInputType: TextInputType.emailAddress,
            hintText: l10n.correoE,
            ligth: true,
          ),
          const SizedBox(
            height: 5,
          ),
          PrimaryButton(
            title: l10n.siguiente,
            onPressed: () => context.navigateTo(const ChangePasswordRoute()),
          ).withRevealAnimation,
        ],
      ),
    );
  }
}
