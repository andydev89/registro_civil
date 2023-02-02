import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/home_page/widgets/element_widget_home.dart';
import 'package:registro_civil_apk/presentation/home_page/widgets/scaffold_home_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldHomeWidget(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextoWidget(
                  l10n.nueServicios,
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: TextFormFieldAuth(
              label: l10n.buscar,
              colorLabel: Colors.grey,
              suffixIcon: Icons.search,
              colorSuffixIcon: Colors.grey,
              borderColor: Theme.of(context).primaryColor,
              padding: 15,
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          children: [
            ElementWidget(
              onTap: () {},
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
              onTap: () {},
              titulo: l10n.cerSimples,
              icono: FluentSystemIcons.ic_fluent_document_filled,
            ),
          ],
        ),
      ],
    );
  }
}
