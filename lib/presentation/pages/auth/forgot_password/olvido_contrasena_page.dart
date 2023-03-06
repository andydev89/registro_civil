import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/texto_widget.dart';

class OlvidoContrasenaPage extends StatelessWidget {
  const OlvidoContrasenaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return ScaffoldAuthWidget(
      enunciado: l10n.cambiarContrasena,
      children: [
        TextoWidget(l10n.ingreseCorreo),
        const SizedBox(
          height: 5,
        ),
        TextFormFieldAuth(
          label: l10n.correoE,
          //prefixIcon: Icons.payment,
          textInputType: TextInputType.emailAddress,
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
                      title: l10n.siguiente,
                      onPressed: () =>
                          irA(context, ruta: RoutesEnum.cambiarContrasena),
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
