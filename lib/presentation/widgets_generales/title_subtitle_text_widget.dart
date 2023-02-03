import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/title_subtitle_widget.dart';

class TitleSubtitleTextoWidget extends StatelessWidget {
  const TitleSubtitleTextoWidget({
    super.key,
    required this.title,
    required this.subtitle,
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
      title: TextoWidget(
        title,
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: fontSize ?? fontSizeDefault,
      ),
      subtitle: TextoWidget(
        title,
        color: color,
        fontSize: fontSize ?? fontSizeDefault,
      ),
    );
  }
}
