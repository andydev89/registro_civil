import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.onPressed,
    required this.title,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
    // this.height = 40,
    // this.radius = 25,
    this.fontSize = fontSizeDefault,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
  });

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  // final double height;
  // final double radius;
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
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: gradientePrincipal(),
      ),
      // height: height + 15,
      child: ElevatedButton(
        onPressed: onPressed == null ? null : () {
          FocusScope.of(context).unfocus();
          onPressed!.call();
        },
        style: botonEstilo(
          backgroundColor: backgroundColor ?? Colors.transparent,
          disabledBackgroundColor: disabledBackgroundColor,
          colorText: colorText,
          disabledForegroundColor: disabledForegroundColor,
          padding: padding,
          elevation: elevation,
        ),
        child: PrimaryLabel(
          fontWeight: fontWeight,
          fontSize: fontSize,
          title,
          color: onPressed == null ? disabledForegroundColor : colorText,
          isToUpperCase: isToUpperCase,
        ),
      ),
    ).withRevealAnimation;
  }
}
