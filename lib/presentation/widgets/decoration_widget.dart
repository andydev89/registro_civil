import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

InputDecoration decoracionAuth({
  String? texto,
  String? hint,
  IconData? iconoPrefix,
  Widget? suffixIcon,
  void Function()? onPressedSuffix,
  Color? colorPrefixIcon,
  Color? colorLabel,
  double fontSize = fontSizeDefault,
  double? radius,
  double? padding = 25,
  FontWeight fontWeight = FontWeight.bold,
  String? helperText,
  Widget? label,
  Color? borderColor,
}) {
  return InputDecoration(
    contentPadding: paddingPrincipal(padding: padding),
    label: label,
    helperText: helperText,
    labelStyle: TextStyle(
      color: colorLabel,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    hintStyle: TextStyle(
      color: colorLabel,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    helperStyle: TextStyle(
      color: colorLabel,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
    // errorStyle: TextStyle(
    //   color: Colors.red,
    //   fontWeight: fontWeight,
    // ),
    focusedBorder: OutlineInputBorder(
      borderRadius: borderRadius(radius: radius),
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    ),
    disabledBorder: OutlineInputBorder(borderRadius: borderRadius()),
    enabledBorder: OutlineInputBorder(
      borderRadius: borderRadius(),
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    ),
    labelText: texto,
    suffixIcon: suffixIcon,
    prefixIcon: iconoPrefix == null
        ? null
        : Icon(
            iconoPrefix,
            size: 25,
            color: colorPrefixIcon,
          ),
    border: OutlineInputBorder(
      borderRadius: borderRadius(),
      borderSide: BorderSide(color: borderColor ?? Colors.white),
    ),
    hintText: hint,
  );
}

BorderRadius borderRadius({double? radius}) {
  return BorderRadius.circular(radius ?? 12);
}

EdgeInsetsGeometry paddingPrincipal({double? padding}) {
  return EdgeInsets.all(padding ?? 12);
}

ButtonStyle botonEstilo({
  Color? backgroundColor,
  Color? disabledBackgroundColor,
  Color? colorText,
  Color? disabledForegroundColor,
  double width = double.infinity,
  double height = 40,
  double radius = 30,
  EdgeInsetsGeometry? padding,
  double? elevation,
  AlignmentGeometry? alignment,
}) {
  return ElevatedButton.styleFrom(
    elevation: elevation,
    minimumSize: Size(width, height),
    padding: padding,
    backgroundColor: backgroundColor,
    foregroundColor: colorText,
    disabledForegroundColor: disabledForegroundColor,
    disabledBackgroundColor: disabledBackgroundColor ?? Colors.grey.shade300,
    alignment: alignment,
    textStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
    shape: shape(radius: radius),
  );
}

RoundedRectangleBorder shape({
  double? radius,
  Color colorBorder = Colors.transparent,
  double widthBorde = 1,
}) {
  return RoundedRectangleBorder(
    side: BorderSide(
      color: colorBorder,
      width: widthBorde,
    ),
    borderRadius: borderRadius(radius: radius),
  );
}

LinearGradient gradientePrincipal({
  List<Color>? colors,
  AlignmentGeometry? begin,
  AlignmentGeometry? end,
}) =>
    LinearGradient(
      colors: colors ?? gradienteApp,
      begin: begin ?? Alignment.topLeft,
      end: end ?? Alignment.bottomRight,
    );
