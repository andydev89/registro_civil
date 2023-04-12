import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ResidenceRegistrationRouterPage extends StatelessWidget {
  const ResidenceRegistrationRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: 'Ingrese la infromación solicitada',
      body: const Expanded(
        child: AutoRouter(),
      ),
    );
  }
}
