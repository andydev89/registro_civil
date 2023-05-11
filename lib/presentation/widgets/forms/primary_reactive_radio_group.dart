import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_radio_tile.dart';

class PrimaryReactiveRadioGroup<T extends Translatable>
    extends StatelessWidget {
  const PrimaryReactiveRadioGroup({
    super.key,
    required this.formControl,
    required this.elements,
  });
  final FormControl<T> formControl;
  final List<T> elements;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: elements
          .map(
            (e) => PrimaryReactiveRadioTile(
              value: e,
              label: e.translate(context),
              formControl: formControl,
              color: Colors.black,
            ),
          )
          .toList(),
    );
  }
}
