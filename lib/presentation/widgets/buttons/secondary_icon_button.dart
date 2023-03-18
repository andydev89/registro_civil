import 'package:flutter/material.dart';

class SecondaryIconButton extends StatelessWidget {
  const SecondaryIconButton({
    required this.onPressed,
    required this.icon,
    this.color = Colors.white,
    super.key,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
