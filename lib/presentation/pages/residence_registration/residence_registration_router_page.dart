import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ResidenceRegistrationRouterPage extends ConsumerWidget {
  const ResidenceRegistrationRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(residenceRegistrationPProvider);
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.registroRes,
      subtitle: l10n.ingreseInfSol,
      body: const Expanded(
        child: AutoRouter(),
      ),
    );
  }
}
