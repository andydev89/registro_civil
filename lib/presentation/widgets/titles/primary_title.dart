import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return PrimaryLabel(
      title ?? '',
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
  }
}
