import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveDropdown<T> extends StatelessWidget {
  const PrimaryReactiveDropdown({
    super.key,
    this.formControl,
    this.formControlName,
    required this.items,
    this.hintText,
    required this.label,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final List<Translatable> items;
  final String? hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(
          label,
        ).verticalPadding(5),
        ReactiveDropdownField(
          formControl: formControl,
          formControlName: formControlName,
          borderRadius: BorderRadius.circular(10),
          decoration: primaryInputDecoration(
            hintText: hintText ?? '${l10n.seleccione}...',
          ),
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.translate(context)),
                ),
              )
              .toList(),
          validationMessages: validationMessage(l10n),
        ),
      ],
    ).verticalPadding(10);
  }
}
