import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({
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
    this.mainAxisAlignment = MainAxisAlignment.center,
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
  final MainAxisAlignment mainAxisAlignment;
  final Color colorBorder;
  final double widthBorde;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(width, height),
        foregroundColor: foregroundColor ?? Colors.white,
        backgroundColor: backgroundColor,
        padding: padding,
        shape: shape(
          radius: radius,
          colorBorder: colorBorder,
          widthBorde: widthBorde,
        ),
      ),
      onPressed: onPressed == null
          ? null
          : () {
              FocusScope.of(context).unfocus();
              onPressed!.call();
            },
      child: PrimaryLabel(
        isToUpperCase ? title.toUpperCase() : title,
        fontSize: fontSize,
        fontWeight: fontWeight,
        mainAxisAlignment: mainAxisAlignment,
      ),
    );
  }
}
