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
  String? errorText,
  double prefixHorizontalPadding = 15,
  double suffixHorizontalPadding = 10,
  ///Esto es para establecer el tamano del suffix icon
  bool setSuffixIconConstraints = false,
}) {
  return InputDecoration(
    suffix: suffix,
    suffixIcon: suffixIcon?.horizontalPadding(suffixHorizontalPadding),
    prefixIcon: prefixIcon?.horizontalPadding(prefixHorizontalPadding),
    counterText: '',
    // prefixIconConstraints: const BoxConstraints(maxHeight: 20),
    suffixIconConstraints: setSuffixIconConstraints
        ? const BoxConstraints(
            // maxWidth: 40,
            maxHeight: 40,
          )
        : null,
    hintText: hintText,
    hintStyle: TextStyle(
      color: light ? Colors.white : Colors.grey,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    errorMaxLines: 2,
    errorText: errorText,
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

InputDecoration editableInputDecoration({
  bool light = false,
  Widget? suffixIcon,
  Widget? prefixIcon,
  double? fontSize,
  FontWeight? fontWeight,
  String? hintText,
  bool readOnly = false,
  String? errorText,
  bool setSuffixIconConstraints = false,
  bool filled = false,
}) {
  return InputDecoration(
    suffixIcon: suffixIcon != null ? Padding(
      padding: const EdgeInsets.only(left: 10),
      child: suffixIcon,
    ) : null,
    filled: filled,
    fillColor: Colors.red.withOpacity(.2),
    hintText: hintText,
    hintStyle: TextStyle(
      color: light ? Colors.white : Colors.grey,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    errorMaxLines: 2,
    errorText: errorText,
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

