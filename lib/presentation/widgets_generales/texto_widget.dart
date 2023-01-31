import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';

class TextoWidget extends StatelessWidget {
  const TextoWidget(
    this.titulo, {
    this.icono,
    this.color = Colors.white,
    this.colorIcono,
    this.fontSize = fontSizeDefault,
    this.iconSize = 20,
    this.fontWeight = FontWeight.normal,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.isToUpperCase = false,
    this.maxlines,
    this.textAlign = TextAlign.center,
    super.key,
  });
  final String titulo;
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: icono != null,
          child: Column(
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
          child: Text(
            isToUpperCase ? titulo.toUpperCase() : titulo,
            style: TextStyle(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: maxlines,
            key: UniqueKey(),
            textAlign: textAlign,
          ),
        ),
      ],
    );
  }
}
