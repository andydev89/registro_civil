import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/toggle_switch_widget.dart';

class ThirdStepContractingPartyPage extends ConsumerWidget {
  const ThirdStepContractingPartyPage({super.key,
  required this.operation,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return AutoRouter(
      builder: (context, child) {
        return Column(
          children: [
            ToggleSwitchWidget(
              labels: [
                '${l10n.contrayente} 1',
                '${l10n.contrayente} 2',
              ],
              totalSwitches: 2,
              onToggle: (index) {
                context.replaceRoute(
                  ContractingPartyRoute(
                    indexContractingParty: index!,
                    operation: operation,
                    key: Key(index.toString()),
                  ),
                );
              },
            ).verticalPadding(10),
            Expanded(child: child),
          ],
        );
      },
    );
  }
}
