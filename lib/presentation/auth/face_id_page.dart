import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/extension/auth_extension/icono_boton_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/icon_container_auth.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/row_icon_button_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';

import '../../data/enum/routes_enum.dart';
import '../../data/methods/methods.dart';

class FaceIDPage extends StatelessWidget {
  const FaceIDPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return ScaffoldAuthWidget(
      enunciado: l10n.loggin,
      children: [
        IconContainerAuthWidget(
          url: IconoBotonEnum.faceID.url,
          width: 180.0,
          height: 180.0,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: padding,
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButtonWidget(
                  title: l10n.escRostro,
                  onPressed: () => irA(context, ruta: RoutesEnum.loginFaceIdScan),
                  padding: const EdgeInsets.symmetric(vertical: 17),
                ),
              ),
            ],
          ),
        ),
        RowIconButtonAuthWidget(
          iconos: const [
            IconoBotonEnum.cedula,
            IconoBotonEnum.huella,
          ],
        ),
      ],
    );
  }
}
