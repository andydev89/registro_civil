import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SimpleCertificateSecondStepPage extends StatelessWidget {
  const SimpleCertificateSecondStepPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.verificarInfo,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(child: Assets.png.certificadoSimple.image()),
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
                    onPressed: () =>
                        context.navigateTo(const HomeRouterRoute()),
                  ),
                ],
              ),
    );
  }
}
