import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class PrimaryCaption extends StatelessWidget {
  const PrimaryCaption(
    this.title, {
    this.color = grey,
    this.fontSize = fontSizeDefault,
    this.isToUpperCase = false,
    this.textAlign = TextAlign.center,
    super.key,
  });

  final String title;
  final Color? color;
  final double fontSize;
  final bool isToUpperCase;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      isToUpperCase ? title.toUpperCase() : title,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
