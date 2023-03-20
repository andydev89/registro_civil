import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/relationship_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/data/models/schedule_shift/schedule_shift_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class ScheduleTurnFirstStepFamiliarPage extends StatelessWidget {
  const ScheduleTurnFirstStepFamiliarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleShiftFirstStepFamiliarModelFormBuilder(
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryReactiveTextField(
                formControl: formModel.identificationNumberControl,
                hintText: '${l10n.escriba}...',
                keyboardType: TextInputType.number,
              ).horizontalPadding(40),
              PrimaryReactiveDropdown(
                label: l10n.servicio,
                formControl: formModel.relationshipControl,
                items: RelationshipType.values,
                hintText: '${l10n.seleccione}...',
              ).horizontalPadding(40),
              PrimaryReactiveDropdown(
                label: l10n.seleccioneMetodoPago,
                formControl: formModel.serviceControl,
                items: ServiceType.values,
                hintText: '${l10n.seleccione}...',
              ).horizontalPadding(40),
              PaymentSelector(
                label: l10n.seleccioneMetodoPago,
                formControl: formModel.paymentMethodControl,
                paymentMethods: PaymentMethodType.values,
              ).symmetricPadding(20, 20),
            ],
          ),
        ),
        bottomNavigationBar:
            ReactiveScheduleShiftFirstStepFamiliarModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(const ScheduleTurnSecondStepRoute())
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
