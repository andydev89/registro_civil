import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/schedule_shift/schedule_shift_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_shift/widgets/schedule_shift_scaffold.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_form_field.dart';

class ScheduleShiftThirdStepPage extends StatelessWidget {
  const ScheduleShiftThirdStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleShiftThirdStepModelFormBuilder(
      builder: (context, formModel, child) => ScheduleShiftScaffold(
        title: l10n.realizarPago,
        subtitle: l10n.introduzcaCodigoBancario,
        body: Column(
          children: [
            PrimaryReactiveDropdown(
              formControl: formModel.stateControl,
              items: const [
                'Provincia 1',
                'Provincia 2',
                'Provincia 3',
              ],
              hintText: '${l10n.seleccione}...',
              label: l10n.provincia,
            ),
            PrimaryReactiveDropdown(
              formControl: formModel.agencyControl,
              items: const [
                'Agencia 1',
                'Agencia 2',
                'Agencia 3',
              ],
              hintText: '${l10n.seleccione}...',
              label: l10n.agencia,
            ),
            ReactiveDatePicker(
              builder: (context, picker, child) => PrimaryReactiveFormField(
                label: l10n.fechaParaTurno,
                hintText: '${l10n.seleccione}...',
                suffixIcon: Assets.svg.calendar.svg(),
                onTap: (control) => picker.showPicker(),
                formControl: formModel.dateControl,
                ligthTheme: false,
              ),
              formControl: formModel.dateControl,
              firstDate: DateTime.now(),
              lastDate: DateUtils.addMonthsToMonthDate(DateTime.now(), 30),
            ),
          ],
        ).horizontalPadding(40),
        bottomNavigationBar: ReactiveScheduleShiftThirdStepModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(const ScheduleShiftThirdStepRoute())
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
