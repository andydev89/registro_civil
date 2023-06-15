import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';

class ForgotPasswordSecondPage extends ConsumerWidget {
  const ForgotPasswordSecondPage({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return TranslucentCard(
      scrollContentOnResized: true,
      child: ForgotConfirmPasswordModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.cambiarContrasena,
                color: Colors.white,
              ),
              PrimaryText(
                l10n.ingreseCon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              PrimaryReactivePasswordField(
                ligth: true,
                formControl: form.newPasswordControl,
                hintText: l10n.password,
                prefixIcon: Assets.svg.key.svg(),
              ),
              PrimaryReactivePasswordField(
                ligth: true,
                formControl: form.confirmPasswordControl,
                hintText: l10n.confirmarContrasena,
                prefixIcon: Assets.svg.key.svg(),
              ),
              const SizedBox(
                height: 5,
              ),
              ReactiveForgotConfirmPasswordModelFormConsumer(
                builder: (_, form, __) {
                  return PrimaryAsyncButton(
                    title: l10n.cambiarContrasena,
                    onPressed: form.form.valid
                        ? () =>
                            ref
                                .read(forgotPasswordProvider.notifier)
                                .forgotPasswordStep3(
                                  ForgotConfirmPasswordModel(
                                    userId: userId,
                                    confirmPassword: form.model.confirmPassword,
                                    newPassword: form.model.newPassword,
                                  ),
                                )
                                .when(
                                  ok: (_) => context.replaceRoute(
                                    SuccessRoute(title: l10n.cambioClaveOk),
                                  ),
                                  err: (err) => showAlert(
                                    err.translate(context),
                                    TypeAlert.error,
                                  ),
                                )
                        : null,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
