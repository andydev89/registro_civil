import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ChoosePaymentMethodPage extends StatelessWidget {
  const ChoosePaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleTurnFirstStepPersonalModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.seleccioneMetodoPago,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PaymentSelector(
                label: l10n.seleccioneMetodoPago,
                formControl: formModel.paymentMethodControl,
                paymentMethods: PaymentMethodType.values,
              ).verticalPadding(20),
            ],
          ),
        ),
        bottomNavigationBar:
            ReactiveScheduleTurnFirstStepPersonalModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () {
                    // if (formModel.model.paymentMethod ==
                    //     PaymentMethodType.correspondentPayment) {
                    //   context.navigateTo(
                    //     CodeRoute(
                    //       typeOfService: typeOfService,
                    //       includMe: true,
                    //       procedureType: ProcedureType.personal,
                    //       relatives: const [],
                    //     ),
                    //   );
                    // } else {
                    //   context.navigateTo(
                    //     ScheduleTurnSecondRoute(
                    //       paymentMethod: formModel.model.paymentMethod,
                    //       typeOfService: typeOfService,
                    //       includMe: true,
                    //       procedureType: ProcedureType.personal,
                    //       relatives: const [],
                    //     ),
                    //   );
                    // }
                  }
                : null,
          ),
        ).symmetricPadding(10,30),
      ),
    );
  }
}
