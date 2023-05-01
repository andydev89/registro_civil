import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MarriageCelebrationThirdStepRouterPage extends StatelessWidget {
  const MarriageCelebrationThirdStepRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.solicitudCelMat,
      subtitle: l10n.ingreseInfSol,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              PrimaryText(l10n.informacionCon).verticalPadding(10),
              Expanded(child: content),
            ],
          ),
        ),
      ),
    );
  }
}
