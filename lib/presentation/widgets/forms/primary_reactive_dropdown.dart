import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PrimaryReactiveDropdown<T> extends StatelessWidget {
  const PrimaryReactiveDropdown({
    super.key,
    required this.formControl,
    required this.items,
    this.hintText,
    required this.label,
  });
  final FormControl<T> formControl;
  final List<T> items;
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
          borderRadius: BorderRadius.circular(10),
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.toString()),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
