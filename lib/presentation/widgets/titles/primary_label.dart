import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryLabel extends StatelessWidget {
  const PrimaryLabel(
    this.title, {
    this.icono,
    this.color = Colors.white,
    this.colorIcono,
    this.fontSize = fontSizeDefault + 5,
    this.iconSize = 20,
    this.fontWeight = FontWeight.normal,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.isToUpperCase = false,
    this.maxlines = 2,
    this.textAlign = TextAlign.center,
    super.key,
    this.shadows,
    this.underlining = false,
  });
  final String title;
  final IconData? icono;
  final Color? color;
  final Color? colorIcono;
  final double fontSize;
  final double iconSize;
  final FontWeight fontWeight;
  final MainAxisAlignment mainAxisAlignment;
  final bool isToUpperCase;
  final int? maxlines;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final bool underlining;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: icono != null,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icono,
                color: colorIcono ?? color,
                size: iconSize,
              ),
              const SizedBox(width: 25),
            ],
          ),
        ),
        Flexible(
          child: PrimaryText(
            title,
            isToUpperCase: isToUpperCase,
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            shadows: shadows,
            maxLines: maxlines,
            textAlign: textAlign,
            underlining: underlining,
          ),
        ),
      ],
    );
  }
}
