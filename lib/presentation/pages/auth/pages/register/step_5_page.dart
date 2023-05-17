import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class Step5Page extends ConsumerWidget {
  const Step5Page({
    super.key,
    required this.code,
  });
  final String code;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).state--;
        return Future(() => true);
      },
      child: ScrollableContent(
        child: PasswordModelFormBuilder(
          builder: (_, form, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    PrimaryText(
                      l10n.ingreseCon,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    PrimaryReactivePasswordField(
                      ligth: true,
                      formControl: form.confirmPasswordForm.newPasswordControl,
                      hintText: l10n.password,
                      prefixIcon: Assets.svg.key.svg(),
                    ),
                    PrimaryReactivePasswordField(
                      ligth: true,
                      formControl:
                          form.confirmPasswordForm.confirmPasswordControl,
                      hintText: l10n.confirmarContrasena,
                      prefixIcon: Assets.svg.key.svg(),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ReactivePasswordModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryAsyncButton(
                      title: l10n.registrar,
                      onError: (p0) => showAlert(
                        p0.translate(context),
                        TypeAlert.error,
                      ),
                      onPressed: form.form.valid
                          ? () => ref
                              .read(registerCodeProvider.notifier)
                              .registerCode(
                                RegisterModel(
                                  code: code,
                                  password:
                                      form.model.confirmPassword!.newPassword,
                                ),
                              )
                              .when(
                                ok: (_) =>
                                    context.replaceRoute(const SuccessRoute()),
                                err: (error) => showAlert(
                                  error.translate(context),
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
      ),
    );
  }
}
