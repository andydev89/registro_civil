import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_date_picker.dart';

class ScheduleDatePicker extends ConsumerWidget {
  const ScheduleDatePicker({
    super.key,
    required this.label,
    required this.formControl,
    required this.scheduleId,
    required this.typeOfServiceModel,
    required this.agency,
    required this.starDate,
    required this.initialTime,
    required this.endTime,
    this.readOnly = false,
  });

  final FormControl<DateTime> formControl;
  final FormControl<String> scheduleId;
  final FormControl<TimeOfDay>? initialTime;
  final FormControl<TimeOfDay>? endTime;
  final String label;
  final TypeOfServiceModel typeOfServiceModel;
  final FormControl<AgencyModel> agency;
  final DateTime starDate;
  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedules = ref.watch(
      availableSchedulesProvider(
        startDate: starDate,
        endDate: starDate.lastDateOfMonth,
        agency: agency.value?.id ?? '',
        typeOfService: typeOfServiceModel.id,
        special: false,
      ),
    );
    agency.statusChanged.listen((event) {
      if (agency.valid) {
        formControl.reset();
        return ref.refresh(
          availableSchedulesProvider(
            startDate: starDate,
            endDate: starDate.lastDateOfMonth,
            agency: agency.value?.id ?? '',
            typeOfService: typeOfServiceModel.id,
            special: false,
          ),
        );
      }
    });
    return PrimaryReactiveDatePicker(
      formControl: formControl,
      readOnly: readOnly,
      label: label,
      availablesDate: schedules.asData?.value.when(
            ok: (data) => data.map((e) => e.date).toList(),
            err: (error) => [],
          ) ??
          [],
      isLoading: schedules.isLoading,
      hasError: schedules.hasError,
      onError: () => ref.refresh(
        availableSchedulesProvider(
          startDate: starDate,
          endDate: starDate.lastDateOfMonth,
          agency: agency.value?.id ?? '',
          typeOfService: typeOfServiceModel.id,
          special: false,
        ),
      ),
      onDaySelected: (selectedDay) async {
        final result = await ref.read(
          availableSchedulesProvider(
            startDate: selectedDay.copyWith(day: 1),
            endDate: selectedDay.lastDateOfMonth,
            agency: agency.value?.id ?? '',
            typeOfService: typeOfServiceModel.id,
            special: false,
          ).future,
        );
        result.when(
          ok: (data) {
            final selectedSchedue = data.firstWhere(
              (element) => element.date.onlyDate == selectedDay.onlyDate,
            );
            initialTime?.updateValue(selectedSchedue.startTime);
            endTime?.updateValue(selectedSchedue.endingTime);
            scheduleId.updateValue(selectedSchedue.id);
          },
          err: (error) => null,
        );
      },
      onPageChanged: (date) async {
        final result = await ref.refresh(
          availableSchedulesProvider(
            startDate: date,
            endDate: date.lastDateOfMonth,
            agency: agency.value?.id ?? '',
            typeOfService: typeOfServiceModel.id,
            special: false,
          ).future,
        );
        final dates = result.when(
          ok: (data) => data.map((e) => e.date).toList(),
          err: (error) => <DateTime>[],
        );
        return dates;
      },
    );
  }
}
