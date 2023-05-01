import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class InputDecorationWidget extends StatelessWidget {
  const InputDecorationWidget({
    super.key,
    required this.formControl,
    this.onTap,
    this.suffixIcon,
  });
  final FormControl<String?>? formControl;
  final void Function()? onTap;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormField(
      formControl: formControl,
      builder: (field) {
        return InkWell(
          onTap: onTap,
          child: InputDecorator(
            decoration: primaryInputDecoration(
              errorText: field.errorText,
              suffixIcon: suffixIcon,
            ),
            child: PrimaryText(
              formControl?.value ?? '',
              textAlign: TextAlign.start,
            ),
          ).verticalPadding(10),
        );
      },
    );
  }
}
