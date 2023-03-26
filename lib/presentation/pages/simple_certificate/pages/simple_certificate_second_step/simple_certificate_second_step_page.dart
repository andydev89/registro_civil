import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SimpleCertificateSecondStepPage extends StatelessWidget {
  const SimpleCertificateSecondStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.verificarInfo,
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Assets.png.certificadoSimple.image(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: l10n.aceptar,
                    onPressed: () => context
                        .navigateTo(const SimpleCertificateThirdStepRoute()),
                  ),
                  const SizedBox(height: 15),
                  PrimaryButton(
                    title: l10n.rechazar,
                    onPressed: () =>
                        context.navigateTo(const HomeRouterRoute()),
                  ),
                ],
              ).horizontalPadding(60),
            ),
          ],
        ),
      ),
    );
  }
}
