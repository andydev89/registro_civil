import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ScheduleTurnFirstStepFamiliarPage extends StatelessWidget {
  const ScheduleTurnFirstStepFamiliarPage({
    super.key,
    required this.typeOfService,
  });
  final TypeServiceModel typeOfService;

  @override
  Widget build(BuildContext context) {
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
              ReactiveFormArray(
                formArray: formModel.familyControl,
                builder: (context, formArray, child) => Column(
                  children: formModel.familyControl.value!
                      .asMap()
                      .map(
                        (key, value) => MapEntry(
                          key,
                          Column(
                            children: [
                              PrimaryReactiveNuiField<String>(
                                formControlName: '$key.identificationNumber',
                                label: l10n.cedula,
                              ).horizontalPadding(20),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: PrimaryReactiveDropdown<
                                          RelationshipType>(
                                        label: l10n.parentezco,
                                        formControlName: '$key.relationship',
                                        items: RelationshipType.values,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    PrimaryIconButton(
                                      icon: Assets.svg.starCheck.svg(),
                                      onPressed: () {
                                        // TODO(alejandro): algo en
                                        // el parentezco
                                      },
                                    ).verticalPadding(15),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .values
                      .toList(),
                ),
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
                    if (formModel.model.paymentMethod ==
                        PaymentMethodType.correspondentPayment) {
                      context.navigateTo(
                        CodeRoute(
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
                    } else {
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
                  }
                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
