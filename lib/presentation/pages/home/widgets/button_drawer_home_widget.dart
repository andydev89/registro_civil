import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class ButtonDrawerHomeWidget extends StatelessWidget {
  const ButtonDrawerHomeWidget({
    super.key,
    required this.icon,
    required this.titulo,
    required this.onPressed,
  });

  final Widget icon;
  final String titulo;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox.square(
          dimension: 40,
          child: icon,
        ),
      ),
      label: PrimaryLabel(
        titulo,
        fontSize: 28,
        mainAxisAlignment: MainAxisAlignment.start,
        fontWeight: FontWeight.bold,
      ),
    ).verticalPadding(3);
  }
}
