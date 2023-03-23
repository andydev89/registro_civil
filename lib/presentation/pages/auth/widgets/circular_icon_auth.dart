import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class CircularIconAuth extends StatelessWidget {
  const CircularIconAuth({
    super.key,
    required this.child,
    this.padding = 50,
    this.bottomLabbel,
  });
  final Widget child;
  final double padding;
  final String? bottomLabbel;

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
          child: Center(
            child: child.symmetricPadding(padding, padding),
          ),
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
