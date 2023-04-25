import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryRadioListTile<T> extends StatelessWidget {
  const PrimaryRadioListTile({
    required this.value,
    this.groupValue,
    super.key,
    this.onChanged,
    required this.title,
    this.titleColor,
    this.textAlign = TextAlign.start,
  });
  final T value;
  final T? groupValue;
  final String title;
  final Color? titleColor;
  final TextAlign? textAlign;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<T>(
      value: value,
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      groupValue: groupValue,
      shape: const StadiumBorder(),
      title: PrimaryText(
        title,
        color: titleColor,
        textAlign: TextAlign.start,
      ),
      onChanged: onChanged,
    );
  }
}
