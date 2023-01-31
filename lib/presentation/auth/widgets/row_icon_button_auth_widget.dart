import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/icon_button_auth.dart';

class RowIconButtonAuthWidget extends StatelessWidget {
  RowIconButtonAuthWidget({super.key, required this.iconos})
      : assert(
          iconos.length == 2,
          throw Exception('La lista debe tener 2 elementos'),
        );
  final List<IconoBotonEnum> iconos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButtonAuthWidget(
            tipoIcono: iconos.first,
          ),
          const SizedBox(
            width: 25,
          ),
          IconButtonAuthWidget(
            tipoIcono: iconos.last,
          ),
        ],
      ),
    );
  }
}
