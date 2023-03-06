import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/row_icon_button_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldAuthWidget(
      enunciado: l10n.loggin,
      children: [
        TextFormFieldAuth(
          label: l10n.numCedula,
          prefixIcon: Icons.payment,
          textInputType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        TextFormFieldAuth(
          label: l10n.password,
          prefixIcon: Icons.key,
          obscureText: true,
          suffixIcon: Ionicons.eye_off_outline,
          colorSuffixIcon: Colors.white,
        ),
        TextButtonWidget(
          title: l10n.olvPassword,
          alignment: Alignment.centerRight,
          width: double.maxFinite,
          onPressed: () => irA(context, ruta: RoutesEnum.olvidoContrasena),
        ),
        RowIconButtonAuthWidget(
          iconos: const [
            IconoBotonEnum.faceID,
            IconoBotonEnum.huella,
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ElevatedButtonWidget(
            title: l10n.loggin,
            width: double.maxFinite,
            onPressed: () => irAYBorrarAnterior(
              context,
              ruta: RoutesEnum.nuestrosServicios,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: TextoWidget(
            l10n.noCuenta,
          ),
        ),
        TextButtonWidget(
          title: l10n.regAqui,
          onPressed: () => irA(context, ruta: RoutesEnum.loginRegister),
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
