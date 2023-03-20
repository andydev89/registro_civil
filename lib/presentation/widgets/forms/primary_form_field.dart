import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';

class PrimaryTextFormField extends StatelessWidget {
  const PrimaryTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.label,
    this.prefixIcon,
    this.textInputType,
    this.suffixIcon,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.padding = 18,
    this.ligthTheme = false,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? label;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final FontWeight fontWeight;
  final double fontSize;
  final double? padding;
  final bool ligthTheme;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Text(
            label!,
            style: const TextStyle(fontSize: 15),
          ).verticalPadding(5),
        TextFormField(
          key: key,
          keyboardType: textInputType,
          onTap: onTap,
          controller: controller,
          style: TextStyle(
            color: ligthTheme ? Colors.white : Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon?.horizontalPadding(10),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
      ],
    );
  }
}
