import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/decoration_widget.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.readOnly = false,
    this.obscureText = false,
    this.controller,
    this.hint,
    this.label,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.textInputType,
    this.colorPrefixIcon,
    this.colorLabel,
    this.suffixIcon,
    this.colorSuffixIcon,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.onSaved,
    this.onTap,
    this.helpertext,
    this.underline = true,
    this.onPressedSuffix,
  });

  final bool readOnly;
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? onPressedSuffix;
  final TextInputType? textInputType;
  final Color? colorPrefixIcon;
  final Color? colorSuffixIcon;
  final Color? colorLabel;
  final bool obscureText;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool underline;
  final String? helpertext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      obscureText: obscureText,
      cursorColor: colorLabel,
      readOnly: readOnly,
      keyboardType: textInputType,
      controller: controller,
      onTap: onTap,
      inputFormatters: [
        if (textInputType == TextInputType.number)
          FilteringTextInputFormatter.digitsOnly
      ],
      decoration: DecorationClass.decoracionAuth(
        colorSuffixIcon: colorSuffixIcon,
        iconoSuffix: suffixIcon,
        onPressedSuffix: onPressedSuffix,
        texto: label,
        hint: hint,
        iconoPrefix: prefixIcon,
        colorPrefixIcon: colorPrefixIcon,
        colorLabel: colorLabel,
        helperText: helpertext,
      ),
      validator: validator,
      onChanged: (String value) {
        onChanged?.call(value);
      },
      onSaved: onSaved,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
    );
  }
}
