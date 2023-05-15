import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryRowLabel extends StatelessWidget {
  const PrimaryRowLabel({
    super.key,
    required this.boldLabel,
    required this.simpleLabel,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.secondTextAlign = TextAlign.start,
  });

  final String boldLabel;
  final String simpleLabel;
  final MainAxisAlignment mainAxisAlignment;
  final TextAlign secondTextAlign;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        SizedBox(
          width: 90,
          child: PrimaryText(
            '$boldLabel:',
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
          ),
        ),
        Flexible(
          child: PrimaryText(
            simpleLabel,
            textAlign: secondTextAlign,
          ),
        ),
      ],
    ).verticalPadding(5);
  }
}