import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class CircularIconAuth extends StatelessWidget {
  const CircularIconAuth({
    super.key,
    required this.child,
    this.bottomLabbel,
    this.horPadding = 35,
    this.verPadding = 35,
  });
  final Widget child;
  final String? bottomLabbel;
  final double horPadding;
  final double verPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: grey,
              width: 5,
            ),
          ),
          child: child.symmetricPadding(verPadding, horPadding),
        ),
        if (bottomLabbel != null)
          PrimaryLabel(
            bottomLabbel!,
            color: Colors.white,
          ),
      ],
    );
  }
}
