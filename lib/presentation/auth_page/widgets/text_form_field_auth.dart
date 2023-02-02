import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/decoration_widget.dart';

class TextFormFieldAuth extends StatelessWidget {
  const TextFormFieldAuth({
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
    this.borderColor,
    this.inputFormatters,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.padding = 25,
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
  final Color? borderColor;
  final List<TextInputFormatter>? inputFormatters;
  final FontWeight fontWeight;
  final double fontSize;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      obscureText: obscureText,
      cursorColor: colorLabel ?? Theme.of(context).primaryColor,
      readOnly: readOnly,
      keyboardType: textInputType,
      controller: controller,
      onTap: onTap,
      inputFormatters: inputFormatters,
      style: TextStyle(
        color: colorLabel ?? Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      decoration: DecorationClass.decoracionAuth(
        padding: padding,
        colorSuffixIcon: colorSuffixIcon,
        iconoSuffix: suffixIcon,
        onPressedSuffix: onPressedSuffix,
        texto: label,
        hint: hint,
        iconoPrefix: prefixIcon,
        colorPrefixIcon: colorPrefixIcon ?? Theme.of(context).primaryColor,
        colorLabel: colorLabel ?? Colors.white,
        helperText: helpertext,
        borderColor: borderColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
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
