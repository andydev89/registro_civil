import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';

class ScheduleTurnFirstStepPersonalPage extends StatelessWidget {
  const ScheduleTurnFirstStepPersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleTurnFirstStepPersonalModelFormBuilder(
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SelectElementFromApi<TypeOfServiceModel>(
                formControl: formModel.serviceControl,
                label: l10n.tipoServicio,
                provider: servicesProvider,
              ).horizontalPadding(20),
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
                    if (formModel.model.paymentMethod ==
                        PaymentMethodType.correspondentPayment) {
                      context.navigateTo(
                        CodeRoute(
                          typeOfServiceModel: formModel.model.service,
                        ),
                      );
                    } else {
                      context.navigateTo(
                        ScheduleTurnSecondRoute(
                          paymentMethod: formModel.model.paymentMethod,
                          typeOfServiceModel: formModel.model.service,
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
