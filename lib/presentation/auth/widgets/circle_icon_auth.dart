import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/extension/auth_extension/icono_boton_extension.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class CircleIconAuth extends StatelessWidget {
  const CircleIconAuth({
    super.key,
    required this.iconos,
    required this.titulo,
  });
  final List<IconoBotonEnum> iconos;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    const size = 80.0;
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade400,
              width: 7,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: iconos
                    .map(
                      (icono) => Image.asset(
                        icono.url,
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        TextoWidget(
          titulo,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
