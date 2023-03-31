import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveRadioTile<T> extends StatelessWidget {
  const PrimaryReactiveRadioTile({
    super.key,
    required this.label,
    required this.value,
    this.onChanged,
    required this.formControl,
  });

  final String label;
  final T value;
  final void Function(T)? onChanged;
  final FormControl<T> formControl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const StadiumBorder(),
      onTap: () => formControl.updateValue(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ReactiveRadio<T>(
            value: value,
            formControl: formControl,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: PrimaryText(
                label,
                color: ligthBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
