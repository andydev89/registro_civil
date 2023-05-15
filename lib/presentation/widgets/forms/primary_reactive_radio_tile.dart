import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class PrimaryReactiveRadioTile<T> extends StatelessWidget {
  const PrimaryReactiveRadioTile({
    super.key,
    required this.label,
    required this.value,
    this.onChanged,
    required this.formControl,
    this.color = ligthBlue,
  });

  final String label;
  final T value;
  final void Function(FormControl<T>)? onChanged;
  final FormControl<T> formControl;
  final Color color;

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
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
