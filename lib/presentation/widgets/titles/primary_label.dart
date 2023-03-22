import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryLabel extends StatelessWidget {
  const PrimaryLabel(
    this.title, {
    this.color = blue,
    this.colorIcono,
    this.fontSize = fontSizeDefault + 5,
    this.iconSize = 20,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
    this.maxlines = 2,
    this.textAlign = TextAlign.center,
    super.key,
    this.shadows,
  });
  final String title;
  final Color? color;
  final Color? colorIcono;
  final double fontSize;
  final double iconSize;
  final FontWeight fontWeight;
  final bool isToUpperCase;
  final int? maxlines;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return PrimaryText(
      title,
      isToUpperCase: isToUpperCase,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      shadows: shadows,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
