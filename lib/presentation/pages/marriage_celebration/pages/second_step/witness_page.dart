import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
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

class WitnessPage extends ConsumerWidget {
  const WitnessPage({
    super.key,
    required this.indexWitness,
  });
  final int indexWitness;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final witness1 = ref.watch(WitnesssProvider(0));
    final witness2 = ref.watch(WitnesssProvider(1));
    return WitnessFormBuilder(
      model: indexWitness == 0 ? witness1 : witness2,
      initState: (_, formModel) => formModel.form.valueChanges
          .distinct(
            (prev, curr) => const DeepCollectionEquality().equals(prev, curr),
          )
          .listen(
            (event) => updateWitness(
              ref: ref,
              witness: formModel.model,
              index: indexWitness,
            ),
          ),
      builder: (context, form, child) => Scaffold(
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
            final form1 = createWitnessFormGroup(witness1);
            final form2 = createWitnessFormGroup(witness2);
            final valid = form1.valid && form2.valid;
            return PrimaryButton(
              title: l10n.siguiente,
              onPressed: valid
                  ? () {
                      ref.read(marriageCelebrationProvider.notifier)
                        ..setWitness(witness1, 0)
                        ..setWitness(witness2, 1);
                      context.navigateTo(
                        MarriageCelebrationThirdStepRouterRoute(
                          children: [
                            ThirdStepContractingPartyRoute(
                              children: [
                                ContractingPartyRoute(
                                  indexContractingParty: 0,
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  : null,
            );
          },
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
