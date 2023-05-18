import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class LogoBottomSheet extends StatelessWidget {
  const LogoBottomSheet({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightFooter,
      decoration: BoxDecoration(
        gradient: backgroundColor == null ? gradientePrincipal() : null,
        color: backgroundColor,
      ),
      child: Assets.png.footer.image(),
    );
  }
}
