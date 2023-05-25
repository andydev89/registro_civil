import 'package:async_button_builder/async_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PrimaryAsyncIconButton<T> extends StatelessWidget {
  const PrimaryAsyncIconButton({
    super.key,
    this.onPressed,
    required this.icon,
  });

  final Future<T> Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return AsyncButtonBuilder(
      loadingWidget: const CircularProgressIndicator.adaptive(),
      successWidget: Assets.svg.starCheck.svg(),
      onPressed: onPressed,
      builder: (context, child, callback, buttonState) {
        return PrimaryIconButton(
          onPressed: onPressed == null ? null : callback,
          icon: child,
        );
      },
      // showSuccess: false,
      // showError: false,
      successPadding: EdgeInsets.zero,
      child: icon,
    );
  }
}
