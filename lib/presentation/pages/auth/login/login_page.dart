import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_text_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_form_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final newPasswordController = useTextEditingController();
    final showPassword = useState(false);
    void toggleShowPassword() {
      showPassword.value = !showPassword.value;
    }

    return AuthCard(
      scrollContentOnResized: true,
      child: LoginModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.loggin,
              ),
              PrimaryReactiveFormField(
                formControl: form.identificationControl,
                title: l10n.numCedula,
                prefixIcon: Icons.payment,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
              ),
              PrimaryReactiveFormField(
                formControl: form.passwordControl,
                title: l10n.password,
                obscureText: !showPassword.value,
                controller: newPasswordController,
                prefixIcon: Icons.key,
                suffixIcon: SecondaryIconButton(
                  onPressed: toggleShowPassword,
                  icon: showPassword.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              PrimaryTextButton(
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
                    onPressed: () =>
                        context.navigateTo(const ScanRouterRoute()),
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
                child: ReactiveLoginModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryButton(
                      title: l10n.loggin,
                      width: double.maxFinite,
                      onPressed: form.form.valid
                          ? () {
                              context.replaceRoute(const RootRouterRoute());
                            }
                          : null,
                    );
                  },
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
              PrimaryTextButton(
                title: l10n.regAqui,
                onPressed: () =>
                    context.navigateTo(const RegisterRouterRoute()),
                fontWeight: FontWeight.bold,
              )
            ],
          );
        },
      ),
    );
  }
}
