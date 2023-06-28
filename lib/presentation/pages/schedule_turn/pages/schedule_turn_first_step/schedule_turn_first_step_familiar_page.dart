import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ScheduleTurnFirstStepFamiliarPage extends ConsumerWidget {
  const ScheduleTurnFirstStepFamiliarPage({
    super.key,
    required this.typeOfService,
  });

  final TypeServiceModel typeOfService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ScheduleTurnFirstStepFamiliarModelFormBuilder(
      initState: (context, formModel) {
        formModel.scheduleForMeControl.updateValue(false);
        formModel.addFamilyItem(
          FamiliarFormModel(),
        );
      },
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: PrimaryReactiveCheckBox(
                        formControl: formModel.scheduleForMeControl,
                        label: l10n.agendarTurnoParaMi,
                      ),
                    ),
                    PrimaryIconButton(
                      icon: Assets.svg.familyAdd.svg(),
                      onPressed: () {
                        formModel.addFamilyItem(
                          FamiliarFormModel(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // ignore: lines_longer_than_80_chars
              ReactiveScheduleTurnFirstStepFamiliarModelFormFormGroupArrayBuilder(
                extended: formModel.familyExtendedControl,
                itemBuilder: (context, i, item, formModel) {
                  return Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            PrimaryReactiveNuiField<String>(
                              key: Key(
                                item!.identificationNumberControl.hashCode
                                    .toString(),
                              ),
                              formControl: item.identificationNumberControl,
                              label: l10n.cedula,
                              onChanged: (value) {
                                if (item.relationshipApprovedControl?.value ??
                                    false) {
                                  item.relationshipApprovedControl
                                      ?.updateValue(false);
                                }
                              },
                            ),
                            PrimaryReactiveDropdown<RelationshipType>(
                              key: Key(
                                item.relationshipControl.hashCode.toString(),
                              ),
                              formControl: item.relationshipControl,
                              label: l10n.parentezco,
                              items: RelationshipType.values,
                              onChanged:
                                  (FormControl<RelationshipType?> value) {
                                if (item.relationshipApprovedControl!.value ??
                                    false) {
                                  item.relationshipApprovedControl
                                      ?.updateValue(false);
                                }
                              },
                            ),
                          ],
                        ).horizontalPadding(15),
                      ),
                      Column(
                        children: [
                          PrimaryAsyncIconButton(
                            icon: Assets.svg.starCheck.svg(
                              width: 20,
                              height: 20,
                            ),
                            onPressed: (item.identificationNumberControl
                                            ?.valid ??
                                        false) &&
                                    (item.relationshipControl?.valid ?? false)
                                ? () async {
                                    final user =
                                        await ref.read(meProvider.future);
                                    final result = await ref.read(
                                      checkRelationshipProvider(
                                        firstNui: user.identification,
                                        secondNui: item
                                            .identificationNumberControl!
                                            .value!,
                                        relationship: item
                                            .relationshipControl!.value!.toText,
                                      ).future,
                                    );
                                    return result.when(
                                      ok: (value) {
                                        item.relationshipApprovedControl
                                            ?.updateValue(
                                          value.result,
                                        );
                                        if (!value.result) {
                                          showAlert(
                                            l10n.noExisteParentezco,
                                            TypeAlert.error,
                                          );
                                        }
                                      },
                                      err: (error) {
                                        showAlert(
                                          error.translate(context),
                                          TypeAlert.error,
                                        );
                                      },
                                    );
                                  }
                                : null,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PrimaryIconButton(
                            icon: Assets.svg.trash.svg(
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () {
                              formModel.removeFamilyItemAtIndex(
                                i,
                              );
                            },
                          ),
                        ],
                      ).horizontalPadding(5),
                    ],
                  );
                },
              ),
              PaymentSelector(
                label: l10n.seleccioneMetodoPago,
                formControl: formModel.paymentMethodControl,
                paymentMethods: PaymentMethodType.values,
              ).symmetricPadding(20, 5),
            ],
          ),
        ),
        bottomNavigationBar:
            ReactiveScheduleTurnFirstStepFamiliarModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () {
                    context.navigateTo(
                      ScheduleTurnSecondRoute(
                        paymentMethod: formModel.model.paymentMethod,
                        typeOfService: typeOfService,
                        includMe: formModel.model.scheduleForMe,
                        procedureType: ProcedureType.familiar,
                        relatives: formModel.model.family
                            .map(
                              (e) => RelativeModel(
                                identification: e.identificationNumber!,
                                familiarKin: e.relationship!,
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }
                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
