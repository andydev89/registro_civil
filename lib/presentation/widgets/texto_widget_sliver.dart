import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class TextoWidgetSliver extends StatelessWidget {
  const TextoWidgetSliver({
    super.key,
    required this.titulo,
    this.paddingBottom = 20,
    this.paddingTop = 50,
    this.prevoius,
  });
  final String titulo;
  final double paddingTop;
  final double paddingBottom;
  final Widget? prevoius;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(bottom: paddingBottom, top: paddingTop),
        child: Stack(
          children: [
            if (prevoius != null) prevoius!,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextoWidget(
                  titulo,
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
