import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/models/auth/enter_email_model.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ForgotPasswordFirstPage extends ConsumerWidget {
  const ForgotPasswordFirstPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return TranslucentCard(
      scrollContentOnResized: true,
      child: EnterEmailModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryTitle(
                title: l10n.cambiarContrasena,
                color: Colors.white,
              ),
              PrimaryText(
                l10n.ingreseCorreo,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              PrimaryReactiveEmailField(
                formControl: form.emailControl,
                hintText: l10n.correoE,
                ligth: true,
              ),
              const SizedBox(
                height: 5,
              ),
              ReactiveEnterEmailModelFormConsumer(
                builder: (_, form, __) {
                  return PrimaryAsyncButton(
                    title: l10n.enviarCorreo,
                    onPressed: form.form.valid
                        ? () => ref
                            .watch(forgotPasswordProvider.notifier)
                            .forgotPasswordStep1(form.model)
                            .when(
                              ok: (_) => context.navigateTo(
                                ForgotPasswordOtpVerificationRoute(
                                  command: 'RECOVER_LOST_PASSWORD',
                                  email: form.emailControl.value ?? '',
                                  // userId: (me as MeModel).id,
                                  // userId: '',
                                ),
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
