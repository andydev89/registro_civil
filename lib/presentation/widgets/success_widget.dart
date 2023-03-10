import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return gradientePrincipal().createShader(bounds);
      },
      child: Assets.img.general.checkmark.image(),
    );
  }
}
