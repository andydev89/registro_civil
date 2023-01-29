import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/row_icon_button_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
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
        const SizedBox(
          height: 5,
        ),
        TextFormFieldAuth(
          label: l10n.password,
          prefixIcon: Icons.key,
          obscureText: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TextButtonWidget(
                title: l10n.olvPassword,
                alignment: Alignment.centerRight,
                onPressed: () {},
              ),
            ),
          ],
        ),
        RowIconButtonAuthWidget(
          iconos: const [
            IconoBotonEnum.faceID,
            IconoBotonEnum.huella,
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: padding,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButtonWidget(
                      title: l10n.loggin,
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(vertical: 17),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: TextoWidget(
                l10n.noCuenta,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: padding,
              ),
              child: TextButtonWidget(
                title: l10n.regAqui,
                onPressed: () => irA(context, ruta: RoutesEnum.loginStepper),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
