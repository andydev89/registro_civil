import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/row_icon_button_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Huella2Page extends StatelessWidget {
  const Huella2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldAuthWidget(
      children: [
        Center(
           child: const TextoWidget('¡Huella detectada \n  correctamente!'), 
        ),
        
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: Icon(
            Icons.fingerprint,
            size: 200,
            color: Color.fromRGBO(13, 29, 47, 1),
          ),
        ),
        RowIconButtonAuthWidget(
          iconos: const [
            IconoBotonEnum.cedula,
            IconoBotonEnum.faceID,
          ],
        ),
      ],
    );
  }
}
