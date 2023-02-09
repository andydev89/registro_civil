import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.width = double.minPositive,
    this.onPressed,
    required this.title,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
    this.height = 40,
    this.radius = 25,
    this.fontSize = fontSizeDefault,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
  });

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  final double width;
  final double height;
  final double radius;
  final void Function()? onPressed;
  final double fontSize;
  final MainAxisAlignment mainAxisAlignment;
  final String title;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final FontWeight fontWeight;
  final bool isToUpperCase;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        decoration: BoxDecoration(
          gradient: gradientePrincipal(),
        ),
        height: height+10,
        child: ElevatedButton(
          onPressed: onPressed == null
              ? null
              : () {
                  FocusScope.of(context).unfocus();
                  onPressed!.call();
                },
          style: botonEstilo(
            backgroundColor: backgroundColor ?? Colors.transparent,
            disabledBackgroundColor: disabledBackgroundColor,
            colorText: colorText,
            disabledForegroundColor: disabledForegroundColor,
            width: width,
            height: height,
            radius: radius,
            padding: padding,
            elevation: elevation,
          ),
          child: TextoWidget(
            fontWeight: fontWeight,
            fontSize: fontSize,
            title,
            color: onPressed == null ? disabledForegroundColor : colorText,
            mainAxisAlignment: mainAxisAlignment,
            isToUpperCase: isToUpperCase,
          ),
        ),
      ),
    );
  }
}
