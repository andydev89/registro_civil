import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class LogoBottomSheet extends StatelessWidget {
  const LogoBottomSheet({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: backgroundColor == null ? gradientePrincipal() : null,
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.img.general.footer.image(),
          const Flexible(
            child: PrimaryLabel(
              'apps.registrocivil.gob.ec',
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
