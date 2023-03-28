import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step1Page extends ConsumerWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ScrollableContent(
      child: NuiModelFormBuilder(
        builder: (_, form, __) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryLabel(
                l10n.ingNumCedula,
                color: Colors.white,
              ),
              PrimaryReactiveNuiField<String>(
                formControl: form.nuiControl,
                hintText: l10n.numCedula,
                ligth: true,
                prefixIcon: Assets.svg.cedula.svg(),
              ),
              ReactiveNuiModelFormConsumer(
                builder: (_, form, __) {
                  return PrimaryButton(
                    title: l10n.validar,
                    onPressed: form.nuiControl.valid
                        ? () {
                            ref
                                .read(registerProvider.notifier)
                                .updateNui(form.model);
                            ref.read(stepperIndexProvider.notifier).index++;
                            context.navigateTo(const Step2Route());
                          }
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
