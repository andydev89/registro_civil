import 'package:async_button_builder/async_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryAsyncButton<T> extends StatelessWidget {
  const PrimaryAsyncButton({
    super.key,
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.colorText,
    this.disabledForegroundColor,
    this.onPressedAsync,
    required this.title,
    this.padding = const EdgeInsets.symmetric(vertical: 17),
    this.elevation,
    this.fontSize = fontSizeDefault,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.fontWeight = FontWeight.bold,
    this.isToUpperCase = false,
    this.onError,
    this.onSuccess,
  });

  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? colorText;
  final Color? disabledForegroundColor;
  final void Function()? onSuccess;
  final void Function(Object)? onError;
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
    var buttonState = const ButtonState.idle();
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        gradient: gradientePrincipal(),
      ),
      // height: height + 15,
      child: AsyncButtonBuilder(
        buttonState: buttonState,
        loadingWidget: const AspectRatio(
          aspectRatio: 1,
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
        onPressed: onPressedAsync,
        builder: (context, child, callback, buttonState) {
          final buttonColor = buttonState.when(
            idle: () => backgroundColor ?? Colors.transparent,
            loading: () => backgroundColor ?? Colors.transparent,
            error: (error, _) => backgroundColor ?? Colors.transparent,
            success: () => backgroundColor ?? Colors.transparent,
          );
          return ElevatedButton(
            onPressed: callback,
            style: botonEstilo(
              backgroundColor: buttonColor,
              disabledBackgroundColor: buttonColor,
              colorText: colorText,
              disabledForegroundColor: buttonColor,
              padding: padding,
              elevation: elevation,
            ),
            child: SizedBox(
              height: 20,
              child: child,
            ),
          );
        },
        successWidget: const Icon(
          Icons.check,
          color: Colors.white,
        ),
        errorWidget: const Icon(
          Icons.error,
          color: Colors.red,
        ),
        successPadding: EdgeInsets.zero,
        child: PrimaryLabel(
          isToUpperCase ? title.toUpperCase() : title,
          color: colorText,
          fontSize: fontSize,
          fontWeight: fontWeight,
          mainAxisAlignment: mainAxisAlignment,
        ),
      ),
    );
  }
}
