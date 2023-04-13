import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_response.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SimpleCertificateSecondStepPage extends ConsumerWidget {
  const SimpleCertificateSecondStepPage({
    required this.simpleCertificateResponse,
    super.key,
  });
  final SimpleCertificateResponse simpleCertificateResponse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final bytes = base64Decode(simpleCertificateResponse.document);
    return PrimaryScaffold(
      title: l10n.verificarInfo,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(child: Image.memory(bytes)),
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(
            title: l10n.aceptar,
            onPressed: () {
              showOffersDialog(context);
              context.navigateTo(const HomeRouterRoute());
            },
          ),
          const SizedBox(height: 15),
          PrimaryButton(
            title: l10n.rechazar,
            onPressed: () => context.navigateTo(const HomeRouterRoute()),
          ),
        ],
      ).symmetricPadding(10, 30),
    );
  }
}
