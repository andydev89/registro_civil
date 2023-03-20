import 'package:auto_route/auto_route.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/schedule_shift_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/data/models/schedule_shift/schedule_shift_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_shift/widgets/schedule_shift_scaffold.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';

class ScheduleShiftFirstStepPage extends StatelessWidget {
  const ScheduleShiftFirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleShiftFirstStepModelFormBuilder(
      builder: (context, formModel, child) => ScheduleShiftScaffold(
        title: l10n.obtengaSuTurno,
        subtitle: l10n.completeInformacionSolicitada,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    ReactiveRadio(
                      formControl: formModel.scheduleShiftControl,
                      value: ScheduleShiftType.personal,
                    ),
                    Text(l10n.personal),
                  ],
                ),
                Row(
                  children: [
                    ReactiveRadio(
                      formControl: formModel.scheduleShiftControl,
                      value: ScheduleShiftType.familiar,
                    ),
                    Text(l10n.familiar),
                  ],
                ),
              ],
            ),
            PrimaryReactiveDropdown(
              label: l10n.servicio,
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
        bottomNavigationBar: ReactiveScheduleShiftFirstStepModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(const ScheduleShiftSecondStepRoute())
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
