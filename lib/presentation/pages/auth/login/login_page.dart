import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/responses/auth_response/auth_response.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_text_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_password_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

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
                  PrimaryReactiveTextField(
                    formControl: form.identificationControl,
                    hintText: l10n.numCedula,
                    prefixIcon: Assets.svg.cedula.svg(),
                    keyboardType: TextInputType.number,
                    ligth: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(10),
                    ],
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
                        return Consumer(
                          builder: (_, ref, __) {
                            return PrimaryAsyncButton<
                                ResponseModel<List<LoginResponseModel>?>>(
                              title: l10n.loggin,
                              onError: (p0) => showAlert(
                                p0.translate(context),
                                TypeAlert.error,
                              ),
                              onSuccess: (result) {
                               isLoggedIn.value = true; 
                                context.navigateBack();
                              },
                              onPressedAsync: form.form.valid
                                  ? () async =>
                                      ref.watch(apiProvider).login(form.model)
                                  : null,
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    PrimaryLabel(
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
