import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class RadioTimeSelector extends StatelessWidget {
  const RadioTimeSelector({
    super.key,
    required this.times,
    required this.label,
    required this.formControl,
  });
  final List<TimeOfDay> times;
  final String label;
  final FormControl<TimeOfDay> formControl;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ).verticalPadding(5),
        Wrap(
          children: times
              .map(
                (e) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ReactiveRadio(
                      value: e,
                      formControl: formControl,
                    ),
                    PrimaryText(
                      DateFormat.jm().format(
                        DateTime(
                          now.year,
                          now.month,
                          now.day,
                          e.hour,
                          e.minute,
                        ),
                      ),
                      color: ligthBlue,
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    ).verticalPadding(10);
  }
}
