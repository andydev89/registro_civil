import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_date_picker.dart';

class ScheduleDatePicker extends ConsumerWidget {
  const ScheduleDatePicker({
    super.key,
    required this.label,
    required this.formControl,
    required this.typeOfServiceModel,
    required this.starDate,
  });

  final FormControl<DateTime> formControl;
  final String label;
  final TypeOfServiceModel typeOfServiceModel;
  final DateTime starDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedules = ref.watch(
      availableSchedulesProvider(
        starDate,
        starDate.lastDateOfMonth,
        typeOfServiceModel.id,
      ),
    );
    return PrimaryReactiveDatePicker(
      formControl: formControl,
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
          typeOfServiceModel.id,
        ),
      ),
      onPageChanged: (date) => ref.refresh(
        availableSchedulesProvider(
          date,
          date.lastDateOfMonth,
          typeOfServiceModel.id,
        ),
      ),
    );
  }
}
