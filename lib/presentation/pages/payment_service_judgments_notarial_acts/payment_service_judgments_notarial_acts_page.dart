import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/payment_service_judgments_notarial_acts/payment_service_judgments_notarial_acts_type.dart';
import 'package:registro_civil_apk/data/models/payment_service_judgments_notarial_acts/payment_service_judgments_notarial_acts_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_check_box.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class PaymentServiceJudgmentsNotarialActsPage extends StatelessWidget {
  const PaymentServiceJudgmentsNotarialActsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PaymentServiceJudgmentsNotarialActsModelFormBuilder(
      builder: (_, formModel, __) {
        for (final _ in PaymentServiceJudgmentsNotarialActsType.values) {
          formModel.typesControl
              .add(FormControl<bool>(value: false, validators: []));
        }
        return PrimaryScaffold(
          title: l10n.pagoSerIngSeAcNot,
          body: Expanded(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    // ignore: lines_longer_than_80_chars
                    ReactivePaymentServiceJudgmentsNotarialActsModelFormArrayBuilder(
                      formControl: formModel.typesControl,
                      itemBuilder: (_, index, value, formModel) {
                        return PrimaryReactiveCheckBox(
                          formControl: formModel.typesControl.controls[index]
                              as FormControl<bool>,
                          label: PaymentServiceJudgmentsNotarialActsType.values
                              .elementAt(index)
                              .translate(context),
                        );
                      },
                    ),
                    SelectElementFromApi(
                      formControl: formModel.provinceControl,
                      label: l10n.provincia,
                      provider: provincesProvider,
                    ).horizontalPadding(20),
                    SelectElementFromApi(
                      formControl: formModel.agencyControl,
                      label: l10n.agencia,
                      provider: agenciesProvider,
                    ).horizontalPadding(20),
                  ],
                ),
              ).verticalPadding(20),
              // ignore: lines_longer_than_80_chars
              bottomNavigationBar:
                  ReactivePaymentServiceJudgmentsNotarialActsModelFormConsumer(
                builder: (context, formModel, child) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PrimaryButton(
                      title: l10n.pagar,
                      onPressed: formModel.form.valid ? () {} : null,
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      title: l10n.cancelar,
                      onPressed: () => context.navigateBack(),
                    ),
                  ],
                ),
              ).symmetricPadding(10, 30),
            ),
          ),
        );
      },
    );
  }
}
