import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ErrorStatus extends StatelessWidget {
  const ErrorStatus({
    super.key,
    required this.messagge,
    this.onPressed,
  });
  final String messagge;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PrimaryText(messagge),
        if (onPressed != null)
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.refresh),
          )
      ],
    ).verticalPadding(10);
  }
}
