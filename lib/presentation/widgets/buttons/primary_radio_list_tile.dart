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
    this.readOnly = false,
  });
  final T value;
  final T? groupValue;
  final String title;
  final Color? titleColor;
  final TextAlign? textAlign;
  final void Function(T?)? onChanged;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: readOnly,
      child: RadioListTile<T>(
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
      ),
    );
  }
}
