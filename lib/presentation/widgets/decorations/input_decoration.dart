import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';

InputDecoration primaryInputDecoration({
  bool light = false,
  Widget? suffixIcon,
  Widget? suffix,
  Widget? prefixIcon,
  double? fontSize,
  FontWeight? fontWeight,
  String? hintText,
  bool readOnly = false,

  ///Esto es para establecer el tamano del suffix icon
  bool setSuffixIconConstraints = false,
}) {
  return InputDecoration(
    suffix: suffix,
    suffixIcon: suffixIcon?.horizontalPadding(10),
    prefixIcon: prefixIcon?.horizontalPadding(15),
    // prefixIconConstraints: const BoxConstraints(maxHeight: 20),
    suffixIconConstraints:
        setSuffixIconConstraints ? const BoxConstraints(maxHeight: 20) : null,
    hintText: hintText,
    hintStyle: TextStyle(
      color: light ? Colors.white : Colors.grey,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: readOnly
            ? Colors.grey
            : light
                ? Colors.white
                : Colors.black,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: light ? Colors.white : Colors.black,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 20,
    ),
  );
}
