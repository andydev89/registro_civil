import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryButton extends HookWidget {
  const PrimaryButton({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.onPressed,
    this.onPressedAsync,
    required this.title,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
    // this.height = 40,
    // this.radius = 25,
    this.fontSize = fontSizeDefault,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
  }) : assert(
          onPressed == null || onPressedAsync == null,
          'No se pueden proporcionar onPressed '
          'y onPressedAsync al mismo tiempo',
        );

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  // final double height;
  // final double radius;
  final void Function()? onPressed;
  final Future<void> Function()? onPressedAsync;
  final double fontSize;
  final MainAxisAlignment mainAxisAlignment;
  final String title;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final FontWeight fontWeight;
  final bool isToUpperCase;

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: gradientePrincipal(),
      ),
      // height: height + 15,
      child: ElevatedButton(
        onPressed: onPressed == null && onPressedAsync == null
            ? null
            : () async {
                if (isLoading.value) return;
                if (onPressedAsync != null) {
                  isLoading.value = true;
                  await onPressedAsync!.call();
                  isLoading.value = false;
                } else {
                  onPressed!.call();
                }
              },
        style: botonEstilo(
          backgroundColor: backgroundColor ?? Colors.transparent,
          disabledBackgroundColor: disabledBackgroundColor,
          colorText: colorText,
          disabledForegroundColor: disabledForegroundColor,
          // height: height,
          // radius: radius,
          padding: padding,
          elevation: elevation,
        ),
        child: isLoading.value
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
            : PrimaryLabel(
                fontWeight: fontWeight,
                fontSize: fontSize,
                title,
                color: onPressed == null ? disabledForegroundColor : colorText,
                mainAxisAlignment: mainAxisAlignment,
                isToUpperCase: isToUpperCase,
              ),
      ),
    );
  }
}
