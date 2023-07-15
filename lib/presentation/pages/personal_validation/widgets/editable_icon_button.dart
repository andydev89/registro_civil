import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class EditableIconButton extends StatelessWidget {
  const EditableIconButton({
    this.color = Colors.white,
    this.onPressed,
    this.height,
    this.width,
    super.key,
    this.shape,
    this.splashBorderRadius,
    this.isEdited = false,
    this.isEditing = false,
  });

  final void Function()? onPressed;
  final Color color;
  final double? width;
  final double? height;
  final ShapeBorder? shape;
  final BorderRadius? splashBorderRadius;
  final bool isEdited;
  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    final gradient = isEditing
        ? gradientePrincipal(
            colors: greenGradient,
          )
        : isEdited
            ? gradientePrincipal(colors: greyGradient)
            : gradientePrincipal();
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: onPressed == null ? Colors.grey : null,
        gradient: gradient,
        shape: shape ?? RoundedRectangleBorder(borderRadius: borderRadius()),
        shadows: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(-2, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: splashBorderRadius ?? borderRadius(),
        child: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: isEditing
                ? const Icon(Icons.check)
                : isEdited
                    ? const Icon(Icons.clear)
                    : const Icon(Icons.edit),
            onPressed: onPressed,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
