import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ContractingPartyPage extends ConsumerWidget {
  const ContractingPartyPage({
    super.key,
    required this.indexContractingParty,
  });
  final int indexContractingParty;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final witness1 = ref.watch(witness1Provider);
    final witness2 = ref.watch(witness2Provider);
    return WitnessFormBuilder(
      model: indexContractingParty == 0 ? witness1 : witness2,
      builder: (context, form, child) {
        form.nuiControl.valueChanges.listen((event) {
          updateWitness(
            ref: ref,
            witness: form.model,
            index: indexContractingParty,
          );
        });
        form.nameControl.valueChanges.listen((event) {
          updateWitness(
            ref: ref,
            witness: form.model,
            index: indexContractingParty,
          );
        });
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: ScrollableContent(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(l10n.numCedula),
                PrimaryReactiveNuiField(
                  formControl: form.nuiControl,
                ),
                PrimaryText(l10n.nombreApe),
                PrimaryReactiveTextField(
                  formControl: form.nameControl,
                  textCapitalization: TextCapitalization.words,
                ),
              ],
            ).horizontalPadding(20),
          ),
          bottomNavigationBar: ReactiveWitnessFormConsumer(
            builder: (_, form, __) {
              final valid = witness1.isValid && witness2.isValid;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    title: l10n.siguiente,
                    onPressed: valid
                        ? () {
                            // ref.read(marriageCelebrationProvider.notifier)
                            //   ..setWitness(witness1, 0)
                            //   ..setWitness(witness2, 1);
                            // final model =
                            //     ref.watch(marriageCelebrationProvider);
                            // if (model.isOutside) {
                            //   context
                            //       .navigateTo(const OffSiteRoute());
                            //   return;
                            // }
                            //  context
                            //       .navigateTo(const SecondStepOffSiteRoute());
                          }
                        : null,
                  ),
                  const SizedBox(height: 10),
                  PrimaryButton(
                    title: l10n.cancelar,
                    onPressed: () => context.navigateBack(),
                  )
                ],
              );
            },
          ).symmetricPadding(10, 30),
        );
      },
    );
  }
}
