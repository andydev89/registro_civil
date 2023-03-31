import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/relationship_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/service_type.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';

class ScheduleTurnFirstStepFamiliarPage extends StatelessWidget {
  const ScheduleTurnFirstStepFamiliarPage({super.key});

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
                                      onPressed: () {},
                                    ).verticalPadding(15),
                                  ],
                                ),
                              ),
                              PrimaryReactiveDropdown<ServiceType>(
                                label: l10n.tipoServicio,
                                formControlName: '$key.service',
                                items: ServiceType.values,
                              ).horizontalPadding(20),
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
                        const CodeRoute(),
                      );
                    } else {
                      context.navigateTo(
                        ScheduleTurnSecondRoute(
                          paymentMethod: formModel.model.paymentMethod,
                        ),
                      );
                    }
                  }
                : null,
          ),
        ).verticalPadding(20),
      ),
    );
  }
}
