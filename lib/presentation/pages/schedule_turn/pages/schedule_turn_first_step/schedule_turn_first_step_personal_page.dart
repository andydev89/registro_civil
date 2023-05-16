import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ScheduleTurnFirstStepPersonalPage extends StatelessWidget {
  const ScheduleTurnFirstStepPersonalPage({
    super.key,
    required this.typeOfService,
  });
  final TypeServiceModel typeOfService;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleTurnFirstStepPersonalModelFormBuilder(
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
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
                    if (formModel.model.paymentMethod ==
                        PaymentMethodType.correspondentPayment) {
                      context.navigateTo(
                        CodeRoute(
                          typeOfService: typeOfService,
                          includMe: true,
                          procedureType: ProcedureType.personal,
                          relatives: const [],
                        ),
                      );
                    } else {
                      context.navigateTo(
                        ScheduleTurnSecondRoute(
                          paymentMethod: formModel.model.paymentMethod,
                          typeOfService: typeOfService,
                          includMe: true,
                          procedureType: ProcedureType.personal,
                          relatives: const [],
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
