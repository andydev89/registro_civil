import 'package:async_button_builder/async_button_builder.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
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
  final void Function(StatusCodes)? onError;
  final Future<T> Function()? onPressedAsync;
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
        onPressed: () async {
          try {
            final result = await onPressedAsync?.call();
            onSuccess?.call(result as T);
          } catch (e) {
            if (e is! DioError) return onError?.call(StatusCodes.s999);

            onError?.call(
              convertToStatusCode(e.response?.data as Map<String, dynamic>),
            );
          }
        },
        builder: (context, child, callback, buttonState) {
          final buttonColor = buttonState.when(
            idle: () => backgroundColor ?? Colors.transparent,
            loading: () => backgroundColor ?? Colors.transparent,
            error: (error, _) => backgroundColor ?? Colors.transparent,
            success: () => backgroundColor ?? Colors.transparent,
          );
          return ElevatedButton(
            onPressed: onPressedAsync == null ? null : callback,
            style: botonEstilo(
              backgroundColor: onPressedAsync == null ? null : buttonColor,
              disabledBackgroundColor:
                  onPressedAsync == null ? null : buttonColor,
              colorText: onPressedAsync == null ? null : colorText,
              disabledForegroundColor:
                  onPressedAsync == null ? null : buttonColor,
              padding: padding,
              elevation: elevation,
            ),
            child: SizedBox(
              height: 20,
              child: child,
            ),
          );
        },
        // successWidget: const Icon(
        //   Icons.check,
        //   color: Colors.white,
        // ),
        // errorWidget: const Icon(
        //   Icons.error,
        //   color: Colors.red,
        // ),
        showSuccess: false,
        showError: false,
        successPadding: EdgeInsets.zero,
        child: PrimaryLabel(
          isToUpperCase ? title.toUpperCase() : title,
          color: onPressedAsync == null ? Colors.grey : Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
