import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/element_widget_home.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      children: [
        ElementWidget(
          onTap: () {},
          titulo: l10n.ageTurnos,
          icono: Assets.svg.calendar.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.segLinea,
          icono: Assets.svg.checkOnline.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.cerFirElectronica,
          icono: Assets.svg.pen.svg(),
        ),
        ElementWidget(
          onTap: () => context.navigateTo(const TexterRoute()),
          titulo: l10n.cerSimples,
          icono: Assets.svg.simpleCert.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.copiasActasRegistrales,
          icono: Assets.svg.documents.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.registroCivil,
          icono: Assets.svg.civilRecord.svg(),
        ),
        ElementWidget(
          titulo: l10n.validacionDocumentos,
          icono: Assets.svg.validateDocs.svg(),
        ),
      ],
    );
  }
}
