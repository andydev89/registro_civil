import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/agencias_test.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/provincias_test.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/data/models/schedule_shift/schedule_shift_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/radio_time_selector.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ScheduleTurnThirdStepPage extends StatelessWidget {
  const ScheduleTurnThirdStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleShiftThirdStepModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.obtTurno,
        subtitle: l10n.completeInformacionSolicitada,
        body: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryReactiveDropdown(
                  formControl: formModel.stateControl,
                  //TODO esto va a cambiar por un objeto q viene del back
                  items: ProvinciasTest.values,
                  hintText: '${l10n.seleccione}...',
                  label: l10n.provincia,
                ),
                PrimaryReactiveDropdown(
                  formControl: formModel.agencyControl,
                  //TODO esto va a cambiar por un objeto q viene del back
                  items: AgenciasTest.values,
                  hintText: '${l10n.seleccione}...',
                  label: l10n.agencia,
                ),
                ReactiveDatePicker(
                  builder: (context, picker, child) => PrimaryReactiveTextField(
                    label: l10n.fechaParaTurno,
                    hintText: '${l10n.seleccione}...',
                    suffixIcon: Assets.svg.calendar.svg(),
                    onTap: (control) => picker.showPicker(),
                    formControl: formModel.dateControl,
                    setSuffixIconConstraints: true,
                  ),
                  formControl: formModel.dateControl,
                  firstDate: DateTime.now(),
                  lastDate: DateUtils.addMonthsToMonthDate(DateTime.now(), 30),
                ),
                RadioTimeSelector(
                  label: l10n.horDisponibles,
                  formControl: formModel.timeControl,
                  times: const [
                    TimeOfDay(
                      hour: 8,
                      minute: 0,
                    ),
                    TimeOfDay(
                      hour: 11,
                      minute: 0,
                    ),
                    TimeOfDay(
                      hour: 15,
                      minute: 0,
                    ),
                    TimeOfDay(
                      hour: 9,
                      minute: 0,
                    ),
                    TimeOfDay(
                      hour: 2,
                      minute: 0,
                    ),
                  ],
                ),
              ],
            ).horizontalPadding(40),
          ),
        ),
        bottomNavigationBar: ReactiveScheduleShiftThirdStepModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.ageTurno,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(
                      ShiftDetailsRoute(
                        city: 'Guayaquil',
                        agency: 'Matriz',
                        service: ServiceType.identificationCard,
                        date: DateTime.now(),
                        time: TimeOfDay.now(),
                      ),
                    )
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
