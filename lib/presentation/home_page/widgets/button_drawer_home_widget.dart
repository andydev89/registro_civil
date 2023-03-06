import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ButtonDrawerHomeWidget extends StatelessWidget {
  const ButtonDrawerHomeWidget({
    super.key,
    required this.icono,
    required this.titulo,
    required this.onPressed,
  });

  final IconData icono;
  final String titulo;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icono,
        size: 45,
        color: Colors.white,
      ),
      label: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextoWidget(
          titulo,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
