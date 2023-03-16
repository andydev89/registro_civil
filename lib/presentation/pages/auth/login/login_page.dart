import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_form_field.dart';
import 'package:registro_civil_apk/presentation/widgets/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
      scrollContentOnResized: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PrimaryTitle(
            title: l10n.loggin,
          ),
          PrimaryTextFormField(
            label: l10n.numCedula,
            prefixIcon: Icons.payment,
            textInputType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          PrimaryTextFormField(
            label: l10n.password,
            prefixIcon: Icons.key,
            obscureText: true,
            suffixIcon: Ionicons.eye_off_outline,
            colorSuffixIcon: Colors.white,
          ),
          TextButtonWidget(
            title: l10n.olvPassword,
            mainAxisAlignment: MainAxisAlignment.end,
            onPressed: () =>
                context.navigateTo(const ForgotPasswordRouterRoute()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButtonAuth(
                icon: IconoBotonEnum.faceID,
                onPressed: () => context.navigateTo(const ScanRouterRoute()),
              ),
              IconButtonAuth(
                icon: IconoBotonEnum.huella,
                onPressed: () =>
                    context.navigateTo(const FingerPrintRouterRoute()),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ElevatedButtonWidget(
              title: l10n.loggin,
              width: double.maxFinite,
              onPressed: () => context.replaceRoute(const HomeRouterRoute()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: PrimaryLabel(
              l10n.noCuenta,
            ),
          ),
          TextButtonWidget(
            title: l10n.regAqui,
            onPressed: () => context.navigateTo(const RegisterRouterRoute()),
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
