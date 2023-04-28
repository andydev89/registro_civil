import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/toggle_switch_widget.dart';

class SecondStepAtHeadquarterPage extends StatelessWidget {
  const SecondStepAtHeadquarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AutoRouter(
      builder: (context, child) {
        return Column(
          children: [
            ToggleSwitchWidget(
              labels: [
                l10n.testigo1,
                l10n.testigo2,
              ],
              totalSwitches: 2,
              onToggle: (index) {
                context.replaceRoute(
                  WitnessRoute(
                    indexWitness: index!,
                    key: Key(index.toString()),
                  ),
                );
              },
            ).symmetricPadding(10, 20),
            Expanded(child: child),
          ],
        );
      },
    );
  }
}
