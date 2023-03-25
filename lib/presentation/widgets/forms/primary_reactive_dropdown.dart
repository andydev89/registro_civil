import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15),
        ).verticalPadding(5),
        ReactiveDropdownField(
          formControl: formControl,
          formControlName: formControlName,
          borderRadius: BorderRadius.circular(10),
          decoration: primaryInputDecoration(
            hintText: hintText,
          ),
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.translate(context)),
                ),
              )
              .toList(),
        ),
      ],
    ).verticalPadding(10);
  }
}
