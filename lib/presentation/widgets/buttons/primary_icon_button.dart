import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class PrimaryIconButton extends StatelessWidget {
  const PrimaryIconButton({
    required this.icon,
    this.color = Colors.white,
    this.onPressed,
    this.height,
    this.width,
    super.key,
    this.shape,
    this.splashBorderRadius,
  });
  final Widget icon;
  final void Function()? onPressed;
  final Color color;
  final double? width;
  final double? height;
  final ShapeBorder? shape;
  final BorderRadius? splashBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: onPressed == null ? Colors.grey : null,
        gradient: onPressed != null ? gradientePrincipal() : null,
        shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius()),
        shadows: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: splashBorderRadius ?? borderRadius(),
        child: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: icon,
            onPressed: onPressed,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
