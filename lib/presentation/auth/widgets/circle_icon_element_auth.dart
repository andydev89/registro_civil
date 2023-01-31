import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/circle_icon_auth.dart';

class CircleIconElementAuth extends StatelessWidget {
  const CircleIconElementAuth({
    super.key,
    required this.titulo,
    required this.iconos,
  });
  final String titulo;
  final List<IconoBotonEnum> iconos;

  @override
  Widget build(BuildContext context) {
    return CircleIconAuth(
      titulo: titulo,
      iconos: iconos,
    );
  }
}
