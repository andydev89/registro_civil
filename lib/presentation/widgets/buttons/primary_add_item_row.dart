import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryAddItemRow extends StatelessWidget {
  const PrimaryAddItemRow({
    super.key,
    required this.title,
    this.iconTitle,
    this.iconButton,
    this.onPressed,
  });
  final String title;
  final IconData? iconTitle;
  final IconData? iconButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(iconTitle ?? Icons.home),
            const SizedBox(width: 8),
            PrimaryText(
              title,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        PrimaryIconButton(
          icon: Icon(iconButton ?? Icons.add),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
