import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/row_icon_button_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class HuellaPage extends StatelessWidget {
  const HuellaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldAuthWidget(
      enunciado: l10n.loggin,
      children: [
        TextoWidget(l10n.colDedSensor),
        GestureDetector(
          onTap: () => irA(context, ruta: RoutesEnum.loginHuella2),
          child: Icon(
            Icons.fingerprint,
            size: 200,
            color: Colors.grey.shade700,
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
