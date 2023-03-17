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
  });
  final Widget icon;
  final void Function()? onPressed;
  final Color color;
  final double? width;
  final double? height;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        gradient: gradientePrincipal(),
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
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        color: Colors.white,
      ),
    );
  }
}
