import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/radio_time_selector.dart';

class ScheduleTimeSelector extends ConsumerWidget {
  const ScheduleTimeSelector({
    super.key,
    required this.formControl,
    required this.initialTime,
    required this.endTime,
  });
  final FormControl<TimeOfDay> formControl;
  final TimeOfDay initialTime;
  final TimeOfDay endTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return RadioTimeSelector(
      formControl: formControl,
      label: l10n.horDisponibles,
      times: List.generate(
        (endTime.hour - initialTime.hour) + 1,
        (index) {
          // print(index);
          // print(initialTime);
          // print(endTime);
          return TimeOfDay(
            hour: initialTime.hour + index,
            minute: initialTime.minute,
          );
        },
      ),
    );
  }
}
