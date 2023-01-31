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

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return ScaffoldAuthWidget(
      enunciado: l10n.loggin,
      children: [
      ],
    );
  }
}
