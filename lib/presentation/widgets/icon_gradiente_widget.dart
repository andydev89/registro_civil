import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class IconGradientWidget extends StatelessWidget {
  const IconGradientWidget({
    super.key,
    this.size,
    this.icono,
  });
  final double? size;
  final IconData? icono;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 40,
      height: size ?? 40,
      decoration: BoxDecoration(
        gradient: gradientePrincipal(),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icono ?? Icons.check,
          size: size ?? 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
