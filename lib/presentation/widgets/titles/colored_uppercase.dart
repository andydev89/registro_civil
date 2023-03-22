import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class ColoredUppercase extends StatelessWidget {
  const ColoredUppercase({
    required this.title,
    this.color = ligthBlue,
    super.key,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(
        color: color,
        fontSize: 17,
      ),
    );
  }
}
