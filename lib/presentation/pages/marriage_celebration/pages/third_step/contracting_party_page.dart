import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/binary_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
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
    final model = ref.watch(marriageCelebrationProvider);
    final isCP =
        model.requestOwnerType == MarriageCelebrationType.contractingParty;
    final partner1 = !isCP
        ? ref.watch(PartnersProvider(0))
        : ref.watch(PartnersProvider(0)).updateFromWitness(model.firstWitness);
    final partner2 = ref.watch(PartnersProvider(1));
    return MarriageCelebrationModelFormBuilder(
      initState: (_, formModel) {
        final form = indexContractingParty == 0
            ? formModel.firstPartnerForm
            : formModel.secondPartnerForm;
        formModel.form.valueChanges
            .distinct(
              (prev, curr) => const DeepCollectionEquality().equals(prev, curr),
            )
            .listen(
              (event) => updatePartner(
                ref: ref,
                partner: form.model,
                index: indexContractingParty,
              ),
            );
      },
      model: MarriageCelebrationModel(
        firstPartner: partner1,
        secondPartner: partner2,
      ),
      builder: (_, formModel, __) {
        final form = indexContractingParty == 0
            ? formModel.firstPartnerForm
            : formModel.secondPartnerForm;
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
                PrimaryText(l10n.estadoCiv),
                PrimaryReactiveDropdown(
                  formControl: form.maritalStatusControl,
                  items: MaritalStatus.values,
                ),
                PrimaryText(l10n.tieneHij),
                PrimaryReactiveDropdown(
                  formControl: form.hasChildrenControl,
                  items: Binary.values,
                ),
                ReactiveMarriageCelebrationModelFormConsumer(
                  builder: (_, __, ___) => Visibility(
                    visible: form.hasChildrenControl?.value == Binary.yes,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(l10n.tusHiSon),
                        PrimaryReactiveDropdown(
                          formControl: form.childrenRelationshipControl,
                          items: ChildrenRelationShip.values,
                        ),
                      ],
                    ),
                  ),
                ),
                PrimaryReactiveCheckBox(
                  formControl: form.conadisControl,
                  label: l10n.tieneCarConadis,
                ),
                ReactiveMarriageCelebrationModelFormConsumer(
                  builder: (_, __, ___) => Visibility(
                    visible: form.conadisControl.value ?? false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PrimaryText('No. CONADIS'),
                        PrimaryReactiveTextField(
                          formControl: form.conadisNumberControl,
                          hintText: '01234567',
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(8),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ).horizontalPadding(20),
          ),
          bottomNavigationBar: ReactiveMarriageCelebrationModelFormConsumer(
            builder: (_, form, __) {
              final form1 = createPartnerFormGroup(partner1);
              final form2 = createPartnerFormGroup(partner2);
              final valid = form1.valid && form2.valid;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    title: l10n.siguiente,
                    onPressed: valid
                        ? () {
                            ref.read(marriageCelebrationProvider.notifier)
                              ..setPartner(partner1, 0)
                              ..setPartner(partner2, 1);
                            context.navigateTo(
                              MarriageCelebrationFourthStepRouterRoute(),
                            );
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
