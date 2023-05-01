import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
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
    this.ligth = false,
    this.onTap,
    this.onChanged,
    this.readOnly = false,
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
  final bool ligth;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final bool readOnly;

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
          readOnly: readOnly,
          onChanged: onChanged,
          controller: controller,
          style: TextStyle(
            color: ligth ? Colors.white : Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          decoration: primaryInputDecoration(
            light: ligth,
            hintText: hintText,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
