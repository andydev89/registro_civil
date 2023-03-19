import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_form_field.dart';
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
        child: SecurityQuestionsModelFormBuilder(
          builder: (_, form, __) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: PrimaryLabel(
                    l10n.resSigPreguntas,
                  ),
                ),
                PrimaryLabel(
                  l10n.cuaSegNomPrimo,
                  textAlign: TextAlign.start,
                ),
                PrimaryReactiveFormField(
                  formControl: form.nameElderCousinControl,
                  title: l10n.responda,
                ),
                PrimaryLabel(
                  l10n.ciuConPadres,
                  textAlign: TextAlign.start,
                ),
                PrimaryReactiveFormField(
                  formControl: form.cityMetParentsControl,
                  title: l10n.responda,
                ),
                ReactiveSecurityQuestionsModelFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryButton(
                      title: l10n.siguiente,
                      width: double.maxFinite,
                      onPressed: form.form.valid
                          ? () {
                              ref
                                  .read(registerProvider.notifier)
                                  .updateSecurityQuestions(form.model);
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
