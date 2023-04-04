import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle({
    super.key,
    this.title,
    this.color,
    this.textAlign,
    this.maxlines,
  });
  final String? title;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return PrimaryLabel(
      title ?? '',
      fontSize: 25,
      color: color,
      textAlign: textAlign,
      maxlines: maxlines,
    );
  }
}
