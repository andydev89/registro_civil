import 'package:flutter/material.dart';

class TitleSubtitleWidget extends StatelessWidget {
  const TitleSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.width = 10,
  });
  final Widget title;
  final Widget subtitle;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title,
        SizedBox(
          width: width,
        ),
        subtitle,
      ],
    );
  }
}
