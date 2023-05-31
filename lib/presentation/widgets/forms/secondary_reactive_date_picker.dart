
import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class SecondaryReactiveDatePicker extends StatelessWidget {
  const SecondaryReactiveDatePicker({
    super.key,
    required this.formControl,
    this.label,
    this.hintText,
    required this.onDaySelected,
    this.readOnly = false,
    this.initialDate,
    this.firstDate,
    this.lastDate,
  });

  final FormControl<DateTime> formControl;
  final String? label;
  final String? hintText;
  final void Function(DateTime?) onDaySelected;
  final bool readOnly;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AbsorbPointer(
      absorbing: readOnly,
      child: PrimaryReactiveTextField(
        label: label,
        readOnly: readOnly,
        hintText: hintText ?? '${l10n.seleccione}...',
        suffixIcon: Assets.svg.calendar.svg(),
        onTap: (control) async => !readOnly
            ? await showDatePicker(
                context: context,
                initialDate: initialDate ?? DateTime.now(),
                firstDate: firstDate ?? DateTime.utc(1800),
                lastDate: lastDate ?? DateTime.utc(2100),
                ).then(onDaySelected)
            : null,
        formControl: formControl,
        setSuffixIconConstraints: true,
      ),
    );
  }
}