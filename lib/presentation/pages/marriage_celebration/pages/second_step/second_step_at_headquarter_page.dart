import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/toggle_switch_widget.dart';

class SecondStepAtHeadquarterPage extends StatelessWidget {
  const SecondStepAtHeadquarterPage({
    super.key,
    required this.operation,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    var maxHeight = 0.0;
    return AutoRouter(
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            maxHeight = max(maxHeight, constraints.maxHeight);
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryText(l10n.informacionTes),
                  ToggleSwitchWidget(
                    labels: [
                      '${l10n.testigo} 1',
                      '${l10n.testigo} 2',
                    ],
                    totalSwitches: 2,
                    onToggle: (index) {
                      context.replaceRoute(
                        WitnessRoute(
                          indexWitness: index!,
                          key: Key(index.toString()),
                          operation: operation,
                        ),
                      );
                    },
                  ).symmetricPadding(10, 20),
                  SizedBox(
                    height: maxHeight - (heightFooter * 2),
                    child: child,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
