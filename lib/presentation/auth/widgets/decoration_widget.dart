import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';

class DecorationClass {
  static InputDecoration decoracionAuth({
    String? texto,
    String? hint,
    IconData? iconoPrefix,
    IconData? iconoSuffix,
    void Function()? onPressedSuffix,
    Color? colorPrefixIcon,
    Color? colorSuffixIcon,
    Color? colorLabel,
    double fontSize = fontSizeDefault,
    double? radius,
    double padding = 25,
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
      suffixIcon: iconoSuffix != null
          ? IconButton(
              onPressed: onPressedSuffix,
              icon: Icon(
                iconoSuffix,
                color: colorSuffixIcon ?? colorPrefixIcon,
                size: 25,
              ),
            )
          : null,
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

  static BorderRadius borderRadius({double? radius}) {
    return BorderRadius.circular(radius ?? 12);
  }

  static EdgeInsetsGeometry paddingPrincipal({double? padding}) {
    return EdgeInsets.all(padding ?? 12);
  }

  static ButtonStyle botonEstilo({
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

  static RoundedRectangleBorder shape({
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
}
