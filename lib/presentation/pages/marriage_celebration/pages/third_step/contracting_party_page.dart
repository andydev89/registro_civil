import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
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

class ContractingPartyPage extends ConsumerStatefulWidget {
  const ContractingPartyPage({
    super.key,
    required this.indexContractingParty,
    this.operation = Crud.create,
  });
  final int indexContractingParty;
  final Crud operation;

  @override
  ConsumerState<ContractingPartyPage> createState() =>
      _ContractingPartyPageState();
}

class _ContractingPartyPageState extends ConsumerState<ContractingPartyPage> {
  late Partner partner1;
  late Partner partner2;
  late MarriageCelebrationModel model;

  @override
  void initState() {
    super.initState();
    model = ref.read(marriageCelebrationProvider);
    final isCP =
        model.requestOwnerType == MarriageCelebrationType.contractingParty;
    final oldPartner1 = ref.read(partnersProvider(0));
    partner1 =
        !isCP ? oldPartner1 : oldPartner1.updateFromWitness(model.firstWitness);
    partner2 = ref.read(partnersProvider(1));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PartnerFormBuilder(
      model: widget.indexContractingParty == 0 ? partner1 : partner2,
      initState: (_, formModel) => formModel.form.valueChanges
          .distinct(
            (prev, curr) => const DeepCollectionEquality().equals(prev, curr),
          )
          .listen(
            (event) => updatePartner(
              ref: ref,
              partner: formModel.model,
              index: widget.indexContractingParty,
            ),
          ),
      builder: (_, formModel, __) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: ScrollableContent(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(l10n.numCedula),
                PrimaryReactiveNuiField(
                  readOnly: widget.operation.isRead,
                  formControl: formModel.nuiControl,
                ),
                PrimaryText(l10n.nombreApe),
                PrimaryReactiveTextField(
                  readOnly: widget.operation.isRead,
                  formControl: formModel.nameControl,
                  textCapitalization: TextCapitalization.words,
                ),
                PrimaryText(l10n.estadoCiv),
                PrimaryReactiveDropdown(
                  readOnly: widget.operation.isRead,
                  formControl: formModel.maritalStatusControl,
                  items: MaritalStatusType.values,
                ),
                PrimaryText(l10n.tieneHij),
                PrimaryReactiveDropdown(
                  readOnly: widget.operation.isRead,
                  init: widget.operation.isRead,
                  formControl: formModel.hasChildrenControl,
                  items: Binary.values,
                ),
                ReactivePartnerFormConsumer(
                  builder: (_, __, ___) => Visibility(
                    visible: formModel.hasChildrenControl.value == Binary.yes,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(l10n.tusHiSon),
                        PrimaryReactiveDropdown(
                          init: widget.operation.isRead,
                          readOnly: widget.operation.isRead,
                          formControl: formModel.childrenRelationshipControl,
                          items: ChildrenRelationShipType.values,
                        ),
                      ],
                    ),
                  ),
                ),
                PrimaryReactiveCheckBox(
                  readOnly: widget.operation.isRead,
                  formControl: formModel.conadisControl,
                  label: l10n.tieneCarConadis,
                ),
                ReactivePartnerFormConsumer(
                  builder: (_, __, ___) => Visibility(
                    visible: formModel.conadisControl.value ?? false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PrimaryText('No. CONADIS'),
                        PrimaryReactiveTextField(
                          readOnly: widget.operation.isRead,
                          formControl: formModel.conadisNumberControl,
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
          bottomNavigationBar: ReactivePartnerFormConsumer(
            builder: (_, form, __) {
              final partner1 = ref.watch(partnersProvider(0));
              final partner2 = ref.watch(partnersProvider(1));
              final form1 = createPartnerFormGroup(partner1);
              final form2 = createPartnerFormGroup(partner2);
              final valid = form1.valid && form2.valid;
              return PrimaryButton(
                title:
                    widget.operation.isCreate ? l10n.siguiente : l10n.aceptar,
                onPressed: widget.operation.isCreate && valid ||
                        widget.operation.isRead
                    ? () {
                        if (widget.operation.isCreate) {
                          ref.read(marriageCelebrationProvider.notifier)
                            ..setPartner(partner1, 0)
                            ..setPartner(partner2, 1);
                          context.navigateTo(
                            MarriageCelebrationFourthStepRouterRoute(),
                          );
                          return;
                        }
                        context.navigateTo(
                          MarriageCelebrationRouterRoute(showAgreement: false),
                        );
                      }
                    : null,
              );
            },
          ).symmetricPadding(10, 10),
        );
      },
    );
  }
}
