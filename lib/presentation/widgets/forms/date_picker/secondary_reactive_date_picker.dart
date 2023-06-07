// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/date_picker/date_picker.dart'
    as picker;
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class SecondaryReactiveDatePicker extends StatelessWidget {
  const SecondaryReactiveDatePicker({
    super.key,
    required this.formControl,
    this.label,
    this.hintText,
    this.onDaySelected,
    this.readOnly = false,
    this.initialDate,
    this.firstDate,
    this.lastDate,
  });

  final FormControl<DateTime> formControl;
  final String? label;
  final String? hintText;
  final void Function(DateTime?)? onDaySelected;
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
        onTap: (control) async {
          if (!readOnly) {
            final pickedDate = await picker.showDatePicker(
              context: context,
              initialDate: formControl.value ?? DateTime.now(),
              firstDate: firstDate ?? DateTime.utc(1800),
              lastDate: lastDate ?? DateTime.utc(2100),
              builder: (context, child) {
                return Theme(
                  data: ThemeData.light().copyWith(
                    // primaryColor: const Color(0xFF8CE7F1),
                    colorScheme: const ColorScheme.light(
                      primary: blue,
                    ),
                    buttonTheme: const ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (pickedDate != null) {
              formControl.value = pickedDate;
              if (onDaySelected != null) {
                onDaySelected?.call(pickedDate);
              }
            }
          }
        },
        formControl: formControl,
        setSuffixIconConstraints: true,
      ),
    );
  }
}
