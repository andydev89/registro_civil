import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key, required this.onLogin});

  // ignore: avoid_positional_boolean_parameters
  final void Function(BuildContext, bool) onLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    // ref.listen(
    //   loginProvider,
    //   (previous, next) {
    //     next.whenData(
    //       (value) => value.when(
    //         ok: onLogin,
    //         err: (error) => showAlert(
    //           error.translate(context),
    //           TypeAlert.error,
    //         ),
    //       ),
    //     );
    //   },
    // );
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
                    icon: AuthIconButtonType.faceID,
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
                                  .when(
                                    ok: (value) => onLogin(context, value),
                                    err: (error) {
                                      var message = error.translate(context);
                                      if (error.code == 401) {
                                        message = l10n.credencialesInvalidas;
                                      }
                                      showAlert(
                                        message,
                                        TypeAlert.error,
                                      );
                                    },
                                  )
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
