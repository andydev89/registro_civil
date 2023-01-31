import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class CambiarContrasenaPage extends StatelessWidget {
  const CambiarContrasenaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return ScaffoldAuthWidget(
      enunciado: l10n.cambiarContrasena,
      children: [
        TextoWidget(l10n.ingreseDatos),
        const SizedBox(
          height: 5,
        ),
        TextFormFieldAuth(
          label: l10n.nuevaContrasena,
          suffixIcon: Ionicons.eye_off_outline,
          colorSuffixIcon: Colors.white,
          textInputType: TextInputType.visiblePassword,
          inputFormatters: const [],
        ),
        TextFormFieldAuth(
          label: l10n.confirmarContrasena,
          colorSuffixIcon: Colors.white,
          suffixIcon: Ionicons.eye_off_outline,
          textInputType: TextInputType.visiblePassword,
          inputFormatters: const [],
        ),
        const SizedBox(
          height: 5,
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
                      title: l10n.cambiarContrasena,
                      onPressed: () => irAYBorrarAnterior(
                        context,
                        ruta: RoutesEnum.loginCedula,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
