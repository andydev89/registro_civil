import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText(
    this.title, {
    this.color = primaryColor,
    this.fontSize = fontSizeDefault,
    this.fontWeight = FontWeight.normal,
    this.isToUpperCase = false,
    this.maxLines,
    this.textAlign = TextAlign.center,
    super.key,
    this.shadows,
  });

  final String title;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isToUpperCase;
  final int? maxLines;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      isToUpperCase ? title.toUpperCase() : title,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        shadows: shadows,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
