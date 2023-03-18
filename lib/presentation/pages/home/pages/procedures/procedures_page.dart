import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/element_widget_home.dart';

class ProceduresPage extends StatelessWidget {
  const ProceduresPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      children: [
        ElementWidget(
          onTap: () {},
          titulo: l10n.cedIdentidad,
          icono: Assets.svg.cedula.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.pasaporte,
          icono: Assets.svg.passport.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.inscripcionesRegistrosSimpres,
          icono: Assets.svg.simpleInscriptions.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.registroCivil,
          icono: Assets.svg.civilRecord.svg(),
        ),
        ElementWidget(
          onTap: () {},
          titulo: l10n.convalidacionDocumentos,
          icono: Assets.svg.validateDocs.svg(),
        ),
      ],
    );
  }
}
