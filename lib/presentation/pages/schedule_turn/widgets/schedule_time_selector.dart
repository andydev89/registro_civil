import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/radio_time_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

// class ScheduleTimeSelector extends ConsumerWidget {
//   const ScheduleTimeSelector({
//     super.key,
//     required this.formControl,
//   });
//   final FormControl<TimeOfDay> formControl;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final schedules = ref.watch(availableSchedulesProvider);
//     return schedules.when(
//       data: (data) {
//         final times = data.
//         return RadioTimeSelector(
//         times: data.first.,
//         label: 'asd',
//         formControl: formControl,
//       );
//       },
//       error: (error, stackTrace) => ErrorStatus(messagge: error.toString()),
//       loading: () => const LoadingStatus(),
//     );
//   }
// }
