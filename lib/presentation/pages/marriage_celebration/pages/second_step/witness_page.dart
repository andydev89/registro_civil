import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/nui_type.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class WitnessPage extends ConsumerWidget {
  const WitnessPage({
    super.key,
    required this.indexWitness,
    this.operation = Crud.create,
  });
  final int indexWitness;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final witness1 = ref.read(witnesssProvider(0));
    final witness2 = ref.read(witnesssProvider(1));
    return WitnessFormBuilder(
      model: indexWitness == 0 ? witness1 : witness2,
      initState: (_, formModel) {
        final model = ref.read(marriageCelebrationProvider);
        formModel.nuiControl.setValidators(
          [
            requiredValidator,
            ecuadorDniValidator,
            length10Validator,
            (control) => notRepeat(
                  control,
                  indexWitness == 0
                      ? NuiType.witness1.nuis(
                          model.copyWith(
                            secondWitness: ref.watch(witnesssProvider(1)),
                          ),
                        )
                      : NuiType.witness2.nuis(
                          model.copyWith(
                            firstWitness: ref.watch(witnesssProvider(0)),
                          ),
                        ),
                )
          ],
        );
        formModel.form.valueChanges
            .distinct(
              (prev, curr) => const DeepCollectionEquality().equals(prev, curr),
            )
            .listen(
              (event) => updateWitness(
                ref: ref,
                witness: formModel.model,
                index: indexWitness,
              ),
            );
      },
      builder: (context, form, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(l10n.numCedula),
            PrimaryReactiveNuiField(
              readOnly: operation.isRead,
              formControl: form.nuiControl,
            ),
            PrimaryText(l10n.nombreApe),
            PrimaryReactiveTextField(
              readOnly: operation.isRead,
              formControl: form.nameControl,
              textCapitalization: TextCapitalization.words,
            ),
          ],
        ).horizontalPadding(20),
        bottomNavigationBar: ReactiveWitnessFormConsumer(
          builder: (_, form, __) {
            final witness1 = ref.read(witnesssProvider(0));
            final witness2 = ref.read(witnesssProvider(1));
            final model = ref.read(marriageCelebrationProvider);
            final form1 = createWitnessFormGroup(
              witness1,
              list: NuiType.witness1.nuis(
                model.copyWith(
                  secondWitness: witness2,
                ),
              ),
            );
            final form2 = createWitnessFormGroup(
              witness2,
              list: NuiType.witness2.nuis(
                model.copyWith(
                  firstWitness: witness1,
                ),
              ),
            );
            final valid = form1.valid && form2.valid;
            return PrimaryButton(
              title: l10n.siguiente,
              onPressed: valid || operation.isRead
                  ? () {
                      if (operation.isCreate) {
                        ref.read(marriageCelebrationProvider.notifier)
                          ..setWitness(witness1, 0)
                          ..setWitness(witness2, 1);
                      } else {
                        final marriage = ref.read(marriageCelebrationProvider);
                        ref
                          ..read(partnersProvider(0).notifier)
                              .init(marriage.firstPartner!)
                          ..read(partnersProvider(1).notifier)
                              .init(marriage.secondPartner!);
                      }
                      context.navigateTo(
                        MarriageCelebrationThirdStepRouterRoute(
                          children: [
                            ThirdStepContractingPartyRoute(
                              operation: operation,
                              children: [
                                ContractingPartyRoute(
                                  operation: operation,
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
        ).symmetricPadding(10, 10),
      ),
    );
  }
}
