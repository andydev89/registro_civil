import 'package:async_button_builder/async_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryAsyncButton<T> extends StatelessWidget {
  const PrimaryAsyncButton({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.onPressed,
    required this.title,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
    this.fontSize = fontSizeDefault,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
    this.onError,
    this.onSuccess,
  });

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  final void Function(T)? onSuccess;
  final void Function(StatusCode)? onError;
  final Future<T> Function()? onPressed;
  final double fontSize;
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
      child: AsyncButtonBuilder(
        loadingWidget: const AspectRatio(
          aspectRatio: 1,
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
        onPressed: onPressed,
        builder: (context, child, callback, buttonState) {
          final buttonColor = buttonState.when(
            idle: () => backgroundColor ?? Colors.transparent,
            loading: () => backgroundColor ?? Colors.transparent,
            error: (error, _) => backgroundColor ?? Colors.transparent,
            success: () => backgroundColor ?? Colors.transparent,
          );
          return ElevatedButton(
            onPressed: onPressed == null ? null : callback,
            style: botonEstilo(
              backgroundColor: onPressed == null ? null : buttonColor,
              disabledBackgroundColor: onPressed == null ? null : buttonColor,
              colorText: onPressed == null ? null : colorText,
              disabledForegroundColor: onPressed == null ? null : buttonColor,
              padding: padding,
              elevation: elevation,
            ),
            child: SizedBox(
              height: 20,
              child: child,
            ),
          );
        },
        showSuccess: false,
        showError: false,
        successPadding: EdgeInsets.zero,
        child: PrimaryLabel(
          isToUpperCase ? title.toUpperCase() : title,
          color: onPressed == null ? Colors.grey : Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
