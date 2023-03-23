import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveCheckBox extends StatelessWidget {
  const PrimaryReactiveCheckBox({
    super.key,
    required this.formControl,
    required this.label,
  });
  final FormControl<bool> formControl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ReactiveCheckbox(
          formControl: formControl,
        ),
        PrimaryText(label),
      ],
    );
  }
}
