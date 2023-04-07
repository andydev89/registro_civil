import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_password_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class Step5Page extends ConsumerWidget {
  const Step5Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
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
                      // onPressed: form.form.valid
                      //     ? () {
                      //         ref
                      //             .read(registerModelRivProvider.notifier)
                      //             .updatePassword(form.model);
                      //         final registerModel = ref.watch(
                      //           registerModelRivProvider,
                      //         );
                      //         return ref
                      //             .read(registerProvider.notifier)
                      //             .register(registerModel)
                      //             .when(
                      //               ok: (result) => context.replaceRoute(
                      //                 SuccessRoute(
                      //                   child: Column(
                      //                     children: [
                      //                       PrimaryLabel(
                      //                         l10n.regSatisfactorio,
                      //                         color: Colors.white,
                      //                       ),
                      //                       const SizedBox(
                      //                         height: 30,
                      //                       ),
                      //                       PrimaryLabel(
                      //                         l10n.envCorreo,
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.normal,
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 ),
                      //               ),
                      //               err: (error) => showAlert(
                      //                 error.translate(context),
                      //                 TypeAlert.error,
                      //               ),
                      //             );
                      //       }
                      //     : null,
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
