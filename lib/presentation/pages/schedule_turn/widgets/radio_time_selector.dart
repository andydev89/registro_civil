import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_radio_tile.dart';

class RadioTimeSelector extends StatelessWidget {
  const RadioTimeSelector({
    super.key,
    required this.times,
    required this.label,
    required this.formControl,
  });

  final FormControl<TimeOfDay> formControl;
  final String label;
  final List<TimeOfDay> times;

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
        Center(
          child: Wrap(
            children: times
                .map(
                  (e) => PrimaryReactiveRadioTile(
                    label: DateFormat.jm().format(
                      DateTime(
                        now.year,
                        now.month,
                        now.day,
                        e.hour,
                        e.minute,
                      ),
                    ),
                    value: e,
                    formControl: formControl,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    ).verticalPadding(10);
  }
}
