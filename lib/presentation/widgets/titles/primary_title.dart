import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle({
    super.key,
    this.title,
    this.color,
    this.textAlign,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });
  final String? title;
  final Color? color;
  final TextAlign? textAlign;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return PrimaryLabel(
      title ?? '',
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: color,
      textAlign: textAlign,
      mainAxisAlignment: mainAxisAlignment,
    );
  }
}
