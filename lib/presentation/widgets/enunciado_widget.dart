import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class EnunciadoWidget extends StatelessWidget {
  const EnunciadoWidget({
    super.key,
    this.enunciado,
  });
  final String? enunciado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: TextoWidget(
        enunciado ?? '',
        mainAxisAlignment: MainAxisAlignment.center,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
