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

class Step1Page extends ConsumerWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return NuiModelFormBuilder(
      builder: (_, form, __) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: ScrollableContent(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PrimaryText(
                  l10n.ingNumCedula,
                  color: Colors.white,
                ),
                PrimaryReactiveNuiField<String>(
                  formControl: form.nuiControl,
                  hintText: l10n.numCedula,
                  ligth: true,
                  prefixIcon: Assets.svg.cedula.svg(),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          bottomNavigationBar: ReactiveNuiModelFormConsumer(
            builder: (_, form, __) {
              return PrimaryAsyncButton(
                title: l10n.validar,
                onPressed: form.nuiControl.valid
                    ? () => ref
                        .read(registerValidateCitizenProvider.notifier)
                        .registerValidateCitizen(form.model)
                        .when(
                          ok: (citizen) {
                            ref.read(stepperIndexProvider.notifier).increment();
                            ref
                                .read(citizenProvider.notifier)
                                .setCitizen(citizen);
                            context.navigateTo(const Step2Route());
                          },
                          err: (error) => showAlert(
                            error.translate(context),
                            TypeAlert.error,
                          ),
                        )
                    : null,
              );
            },
          ),
        );
      },
    );
  }
}
