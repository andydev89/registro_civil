import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step3Page extends ConsumerWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
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
                Column(
                  children: [
                    PrimaryLabel(
                      l10n.ingreseDatos,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        PrimaryLabel(
                          'Nombre: Luis Pérez Pérez',
                          textAlign: TextAlign.start,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PrimaryReactiveTextField(
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Theme.of(context).primaryColor,
                      ),
                      formControl: form.emailControl,
                      ligth: true,
                      hintText: l10n.correoE,
                    ),
                    const SizedBox(height: 20),
                    PrimaryReactiveTextField(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Theme.of(context).primaryColor,
                      ),
                      ligth: true,
                      formControl: form.phoneNumberControl,
                      hintText: l10n.telefonoCel,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ReactiveEnterDataModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryButton(
                      title: l10n.verificar,
                      onPressed: form.form.valid
                          ? () {
                              ref
                                  .read(registerProvider.notifier)
                                  .updateEnterData(form.model);
                              ref.read(stepperIndexProvider.notifier).index++;
                              context.navigateTo(const Step4Route());
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
