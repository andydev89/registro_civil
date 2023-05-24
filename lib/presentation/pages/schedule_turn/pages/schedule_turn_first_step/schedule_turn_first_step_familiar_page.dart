import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
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
              // ignore: lines_longer_than_80_chars
              // ignore: lines_longer_than_80_chars
              ReactiveScheduleTurnFirstStepFamiliarModelFormFormGroupArrayBuilder(
                extended: formModel.familyExtendedControl,
                itemBuilder: (context, i, item, formModel) => Row(
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
                          ),
                          PrimaryReactiveDropdown<RelationshipType>(
                            key: Key(
                              item.relationshipControl.hashCode.toString(),
                            ),
                            formControl: item.relationshipControl,
                            label: l10n.parentezco,
                            items: RelationshipType.values,
                          ),
                        ],
                      ).horizontalPadding(20),
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
                    ).verticalPadding(15),
                  ],
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
