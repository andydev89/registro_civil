import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_form_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step4Page extends HookConsumerWidget {
  const Step4Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final newPasswordController = useTextEditingController();
    final showPassword = useState(false);

    void toggleShowPassword() {
      showPassword.value = !showPassword.value;
    }

    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: ScrollableContent(
        child: EnterDataModelFormBuilder(
          builder: (_, form, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: PrimaryLabel(
                    l10n.ingDatos,
                  ),
                ),
                PrimaryReactiveFormField(
                  formControl: form.emailControl,
                  title: l10n.correoE,
                  keyboardType: TextInputType.emailAddress,
                ),
                PrimaryReactiveFormField(
                  formControl: form.confirmPasswordForm.newPasswordControl,
                  obscureText: !showPassword.value,
                  title: l10n.password,
                  controller: newPasswordController,
                  suffixIcon: SecondaryIconButton(
                    onPressed: toggleShowPassword,
                    icon: showPassword.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                PrimaryReactiveFormField(
                  formControl: form.confirmPasswordForm.confirmPasswordControl,
                  obscureText: !showPassword.value,
                  title: l10n.confirmarContrasena,
                  suffixIcon: SecondaryIconButton(
                    onPressed: toggleShowPassword,
                    icon: showPassword.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
                ReactiveEnterDataModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryButton(
                      title: l10n.registrar,
                      width: double.maxFinite,
                      onPressedAsync: form.form.valid
                          ? () async {
                              ref
                                  .read(registerProvider.notifier)
                                  .updateEnterData(form.model);
                              ref
                                  .watch(
                                CheckRegisterProvider(
                                  ref.read(registerProvider),
                                ),
                              )
                                  .whenData((success) {
                                if (success) {
                                  return context.replaceRoute(
                                    SuccessRoute(
                                      child: Column(
                                        children: [
                                          PrimaryLabel(
                                            l10n.regSatisfactorio,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          PrimaryLabel(l10n.envCorreo),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              });
                            }
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
