import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class PrimaryReactiveMap extends StatelessWidget {
  const PrimaryReactiveMap({
    super.key,
    required this.formControl,
    required this.label,
  });
  final FormControl<String> formControl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return PrimaryReactiveTextField(
      formControl: formControl,
      label: label,
      suffixIcon: Assets.svg.mapMarker.svg().symmetricPadding(5, 5),
      readOnly: true,
      onTap: (formControl) => showMapPickerDialog(context),
    );
  }
}
