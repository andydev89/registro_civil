import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_date_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

class ScheduleDatePicker extends ConsumerWidget {
  const ScheduleDatePicker({
    super.key,
    required this.label,
    required this.formControl,
    required this.typeOfServiceModel,
  });

  final FormControl<DateTime> formControl;
  final String label;
  final TypeOfServiceModel typeOfServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedules = ref.watch(
      availableSchedulesProvider(
        DateTime.now(),
        DateTime.now().lastDateOfMonth,
        typeOfServiceModel.id,
      ),
    );
    return schedules.when(
      data: (data) => data.when(
        ok: (schedules) => PrimaryReactiveDatePicker(
          formControl: formControl,
          label: label,
          availablesDate: schedules.map((e) => e.date).toList(),
        ),
        err: (error) => ErrorStatus(messagge: error.toString()),
      ),
      error: (error, stackTrace) => ErrorStatus(messagge: error.toString()),
      loading: () => const LoadingStatus(),
    );
  }
}
