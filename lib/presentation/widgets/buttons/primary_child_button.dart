import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class PrimaryChildButton extends StatelessWidget {
  const PrimaryChildButton({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.onPressed,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
  });

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  final void Function()? onPressed;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: gradientePrincipal(),
      ),
      // height: height + 15,
      child: ElevatedButton(
        onPressed: onPressed,
        style: botonEstilo(
          backgroundColor: backgroundColor ?? Colors.transparent,
          disabledBackgroundColor: disabledBackgroundColor,
          colorText: colorText,
          disabledForegroundColor: disabledForegroundColor,
          padding: padding,
          elevation: elevation,
        ),
        child: child,
      ),
    );
  }
}
