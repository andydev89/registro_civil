import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondarySvgIconButton extends StatelessWidget {
  const SecondarySvgIconButton({
    super.key,
    required this.svgIcon,
    this.onPressed,
  });
  final SvgPicture svgIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: RawMaterialButton(
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: svgIcon,
      ),
    );
  }
}
