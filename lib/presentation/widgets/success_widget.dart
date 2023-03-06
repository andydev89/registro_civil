import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
    this.color,
    this.width,
    this.fit,
  });
  final Color? color;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return gradientePrincipal().createShader(bounds);
      },
      child: Image.asset(
        'assets/img/general/checkmark.png',
        color: color ?? Theme.of(context).primaryColor,
        width: width ?? MediaQuery.of(context).size.width * 0.6,
        fit: fit,
      ),
    );
  }
}
