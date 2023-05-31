import 'package:flutter/cupertino.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SecondaryRowLabel extends StatelessWidget {
  const SecondaryRowLabel({
    super.key,
    required this.label,
    required this.value,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.secondTextAlign = TextAlign.end,
    this.valueColor = greyText
  });

  final String label;
  final String value;
  final MainAxisAlignment mainAxisAlignment;
  final TextAlign secondTextAlign;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Expanded(
          flex: 5,
          child: PrimaryText(
            '$label:',
            textAlign: TextAlign.start,
          ),
        ),
        Expanded(
          flex: 5,
          child: PrimaryText(
            value,
            textAlign: secondTextAlign,
            color: valueColor,
          ),
        ),
      ],
    ).verticalPadding(5);
  }
}