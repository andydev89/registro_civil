import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveCheckBox extends StatelessWidget {
  const PrimaryReactiveCheckBox({
    super.key,
    required this.formControl,
    required this.label,
    this.onChanged,
    this.activeColor,
    this.checkColor,
    this.underlining = false,
    this.textAlign = TextAlign.start,
  });
  final FormControl<bool> formControl;
  final String label;
  final void Function(FormControl<bool>)? onChanged;
  final Color? activeColor;
  final Color? checkColor;
  final bool underlining;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ReactiveCheckboxListTile(
      formControl: formControl,
      onChanged: onChanged,
      activeColor: activeColor,
      checkColor: checkColor,
      shape: const StadiumBorder(),
      title: PrimaryText(
        label,
        underlining: underlining,
        textAlign: textAlign,
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
