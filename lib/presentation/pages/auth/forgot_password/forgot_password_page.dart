import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          PrimaryLabel(l10n.ingreseCorreo),
          const SizedBox(
            height: 5,
          ),
          TextFormFieldAuth(
            label: l10n.correoE,
            //prefixIcon: Icons.payment,
            textInputType: TextInputType.emailAddress,
            inputFormatters: const [],
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButtonWidget(
            title: l10n.siguiente,
            onPressed: () => context.navigateTo(const ChangePasswordRoute()),
          ).withRevealAnimation,
        ],
      ),
    );
  }
}
