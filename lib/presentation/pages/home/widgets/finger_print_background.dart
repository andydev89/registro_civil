import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

class FingerPrintBackground extends StatelessWidget {
  const FingerPrintBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(50, 170),
      child: Transform.rotate(
        angle: -1,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Assets.img.general.huella.image(
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
