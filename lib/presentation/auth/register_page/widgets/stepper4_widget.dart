import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/success_page.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper4 extends ConsumerWidget {
  const Stepper4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextoWidget(
              l10n.ingDatos,
            ),
          ),
          TextFormFieldAuth(
            label: l10n.correoE,
          ),
          TextFormFieldAuth(
            label: l10n.password,
            suffixIcon: Icons.remove_red_eye,
            colorSuffixIcon: Colors.white,
          ),
          TextFormFieldAuth(
            label: l10n.confirmarContrasena,
            suffixIcon: Icons.remove_red_eye,
            colorSuffixIcon: Colors.white,
          ),
          ElevatedButtonWidget(
            title: l10n.registrar,
            width: double.maxFinite,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                builder: (context) => GestureDetector(
                  onTap: () => irAYBorrarAnterior(
                    context,
                    ruta: RoutesEnum.loginCedula,
                  ),
                  child: SuccessPage(
                    children: [
                      TextoWidget(
                        l10n.regSatisfactorio,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      TextoWidget(
                        l10n.envCorreo,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
