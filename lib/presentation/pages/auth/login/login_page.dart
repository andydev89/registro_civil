import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_text_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_password_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key, required this.onLogin});
  final void Function(bool) onLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    ref.listen(
      loginProvider,
      (previous, next) {
        next.when(
          ok: onLogin,
          err: (error) => showAlert(
            error.translate(context),
            TypeAlert.error,
          ),
        );
      },
    );
    return TranslucentCard(
      scrollContentOnResized: true,
      child: LoginModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.loggin,
                color: Colors.white,
              ),
              Column(
                children: [
                  PrimaryReactiveNuiField(
                    formControl: form.identificationControl,
                    hintText: l10n.numCedula,
                    prefixIcon: Assets.svg.cedula.svg(),
                    ligth: true,
                  ),
                  PrimaryReactivePasswordField(
                    formControl: form.passwordControl,
                    hintText: l10n.password,
                    ligth: true,
                    prefixIcon: Assets.svg.key.svg(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PrimaryTextButton(
                        title: l10n.olvPassword,
                        width: double.minPositive,
                        onPressed: () => context
                            .navigateTo(const ForgotPasswordRouterRoute()),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonAuth(
                    icon: IconoBotonEnum.faceID,
                    onPressed: () =>
                        context.navigateTo(const ScanRouterRoute()),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    ReactiveLoginModelFormConsumer(
                      builder: (_, form, __) {
                        return PrimaryAsyncButton(
                          title: l10n.loggin,
                          onPressed: form.form.valid
                              ? () => ref
                                  .read(loginProvider.notifier)
                                  .login(form.model)
                              : null,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    PrimaryText(
                      l10n.noCuenta,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrimaryTextButton(
                      title: l10n.regAqui,
                      foregroundColor: Colors.white,
                      onPressed: () =>
                          context.navigateTo(const RegisterRouterRoute()),
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
