import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // const padding = 0.5;
    return ScaffoldAuthWidget(
      enunciado: l10n.loggin,
      children: const [],
    );
  }
}
