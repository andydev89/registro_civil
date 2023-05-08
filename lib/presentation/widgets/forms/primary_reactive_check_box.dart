import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveCheckBox extends StatelessWidget {
  const PrimaryReactiveCheckBox({
    super.key,
    this.formControl,
    this.formControlName,
    required this.label,
    this.onChanged,
    this.activeColor,
    this.checkColor,
    this.underlining = false,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overFlow,
  }) : assert(
          formControl != null || formControlName != null,
          'formControl or formControlName must be provided',
        );
  final FormControl<bool>? formControl;
  final String label;
  final void Function(FormControl<bool>)? onChanged;
  final Color? activeColor;
  final Color? checkColor;
  final bool underlining;
  final TextAlign? textAlign;
  final String? formControlName;
  final int? maxLines;
  final TextOverflow? overFlow;

  @override
  Widget build(BuildContext context) {
    return ReactiveCheckboxListTile(
      formControlName: formControlName,
      formControl: formControl,
      onChanged: onChanged,
      activeColor: activeColor,
      checkColor: checkColor,
      shape: const StadiumBorder(),
      title: PrimaryText(
        label,
        underlining: underlining,
        textAlign: textAlign,
        maxLines: maxLines,
        overFlow: overFlow,
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
