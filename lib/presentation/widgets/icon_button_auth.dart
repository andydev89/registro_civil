import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/extension/auth_extension/icono_boton_extension.dart';
import 'package:registro_civil_apk/data/methods/auth_methods/auth_methods.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class IconButtonAuthWidget extends StatelessWidget {
  const IconButtonAuthWidget({
    super.key,
    required this.tipoIcono,
  });
  final IconoBotonEnum tipoIcono;

  @override
  Widget build(BuildContext context) {
    const size = 30.0;
    const color = Color.fromRGBO(13, 29, 47, 1);
    const widthHeight = 62.0;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        backgroundColor: const Color.fromRGBO(198, 204, 210, 1),
        elevation: 5,
      ),
      onPressed: () {
        FocusScope.of(context).unfocus();
        irA(context, ruta: iconoBotonEnumARoutesEnum(tipoIcono));
      },
      child: SizedBox(
        width: widthHeight,
        height: widthHeight,
        child: Column(
          children: [
            Image.asset(
              tipoIcono.url,
              width: size,
              height: size,
              fit: BoxFit.cover,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryLabel(
              tipoIcono.label(context),
              color: color,
              fontSize: 11.5,
            )
          ],
        ),
      ),
    );
  }
}
