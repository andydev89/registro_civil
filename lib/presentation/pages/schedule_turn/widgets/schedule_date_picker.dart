import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    required this.typeOfServiceModel,
    required this.agency,
    required this.starDate,
    required this.initialTime,
    required this.endTime,
    this.disable = false,
  });

  final FormControl<DateTime> formControl;
  final FormControl<TimeOfDay>? initialTime;
  final FormControl<TimeOfDay>? endTime;
  final String label;
  final TypeOfServiceModel typeOfServiceModel;
  final FormControl<AgencyModel> agency;
  final DateTime starDate;
  final bool disable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedules = ref.watch(
      availableSchedulesProvider(
        starDate,
        starDate.lastDateOfMonth,
        agency.value?.id ?? '',
        typeOfServiceModel.id,
      ),
    );
    agency.statusChanged.listen((event) {
      if (agency.valid) {
        return ref.refresh(
          availableSchedulesProvider(
            starDate,
            starDate.lastDateOfMonth,
            agency.value?.id ?? '',
            typeOfServiceModel.id,
          ),
        );
      }
    });
    return PrimaryReactiveDatePicker(
      formControl: formControl,
      disable: disable,
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
          starDate,
          starDate.lastDateOfMonth,
          agency.value?.id ?? '',
          typeOfServiceModel.id,
        ),
      ),
      onDaySelected: (selectedDay) {
        schedules.asData?.value.when(
          ok: (data) {
            final selectedSchedue = data.firstWhere(
              (element) => element.date.onlyDate == selectedDay.onlyDate,
            );
            initialTime?.updateValue(selectedSchedue.startTime);
            endTime?.updateValue(selectedSchedue.endingTime);
          },
          err: (error) => null,
        );
      },
      onPageChanged: (date) => ref.refresh(
        availableSchedulesProvider(
          date,
          date.lastDateOfMonth,
          agency.value?.id ?? '',
          typeOfServiceModel.id,
        ),
      ),
    );
  }
}
