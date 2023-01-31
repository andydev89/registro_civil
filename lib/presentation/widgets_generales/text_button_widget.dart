import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.isToUpperCase = false,
    this.width = double.infinity,
    this.height = 40,
    this.radius = 25,
    this.fontSize = fontSizeDefault,
    this.padding = const EdgeInsets.all(10),
    this.fontWeight = FontWeight.normal,
    this.alignment = Alignment.center,
    this.colorBorder = Colors.transparent,
    this.widthBorde = 1,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final double width;
  final double height;
  final double radius;
  final void Function()? onPressed;
  final double fontSize;
  final String title;
  final EdgeInsetsGeometry padding;
  final double? elevation;
  final FontWeight fontWeight;
  final bool isToUpperCase;
  final AlignmentGeometry alignment;
  final Color colorBorder;
  final double widthBorde;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(width, height),
        foregroundColor: foregroundColor ?? Colors.white,
        backgroundColor: backgroundColor,
        alignment: alignment,
        padding: padding,
        shape: DecorationClass.shape(
          radius: radius,
          colorBorder: colorBorder,
          widthBorde: widthBorde,
        ),
      ),
      onPressed: onPressed == null ? null : () {
        FocusScope.of(context).unfocus();
        onPressed!.call();
      },
      child: TextoWidget(
        isToUpperCase ? title.toUpperCase() : title,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
