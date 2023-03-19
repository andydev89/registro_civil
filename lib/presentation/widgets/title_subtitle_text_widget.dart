import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/title_subtitle_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class TitleSubtitleTextoWidget extends StatelessWidget {
  const TitleSubtitleTextoWidget({
    required this.title,
    required this.subtitle,
    super.key,
    this.width,
    this.color,
    this.fontSize,
  });
  final String title;
  final String subtitle;
  final double? width;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TitleSubtitleWidget(
      title: PrimaryLabel(
        title,
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: fontSize ?? fontSizeDefault,
      ),
      subtitle: PrimaryLabel(
        title,
        color: color,
        fontSize: fontSize ?? fontSizeDefault,
      ),
    );
  }
}
