import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/element_widget_home.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        children: [
          ElementWidget(
            onTap: () => irA(context, ruta: RoutesEnum.homeAgendarTurnos),
            titulo: l10n.ageTurnos,
            icono: Icons.calendar_month,
          ),
          ElementWidget(
            onTap: () {},
            titulo: l10n.segLinea,
            icono: FluentSystemIcons.ic_fluent_font_space_tracking_in_filled,
          ),
          ElementWidget(
            onTap: () {},
            titulo: l10n.cerFirElectronica,
            icono: FluentSystemIcons.ic_fluent_signature_filled,
          ),
          ElementWidget(
            onTap: () {},
            titulo: l10n.cedIdentidad,
            icono: Ionicons.card,
          ),
          ElementWidget(
            onTap: () {},
            titulo: l10n.pasaporte,
            icono: Icons.airplanemode_active,
          ),
          ElementWidget(
            titulo: l10n.cerSimples,
            icono: FluentSystemIcons.ic_fluent_document_filled,
          ),
        ],
      ),
    );
  }
}
