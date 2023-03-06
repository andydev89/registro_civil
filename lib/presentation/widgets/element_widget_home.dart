import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/shadows_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class ElementWidget extends StatelessWidget {
  const ElementWidget({
    super.key,
    required this.titulo,
    required this.icono,
    this.onTap,
  });
  final String titulo;
  final IconData icono;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const SizedBox(height: 10),
            ShadowsWidget(
              child: Icon(
                icono,
                size: 50,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 10),
            TextoWidget(
              titulo,
              color: Theme.of(context).primaryColor,
              fontSize: 15,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.grey.shade500,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
