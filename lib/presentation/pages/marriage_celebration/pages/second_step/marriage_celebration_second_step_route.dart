import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MarriageCelebrationSecondStepRouterPage extends StatelessWidget {
  const MarriageCelebrationSecondStepRouterPage({
    super.key,
    this.operation = Crud.create,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer(
      builder: (context, ref, child) {
        final marriage = ref.watch(marriageCelebrationProvider);
        return PrimaryScaffold(
          title: l10n.solicitudCelMat,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: AutoRouter(
              builder: (context, content) => BodyWidget(
                l10n: l10n,
                operation: operation,
                isOutside: operation.isRead ? marriage.isOutside : null,
                content: content,
              ),
            ),
          ),
        );
      },
    );
  }
}

class BodyWidget extends HookWidget {
  const BodyWidget({
    super.key,
    required this.l10n,
    required this.operation,
    required this.content,
    this.isOutside,
  });

  final AppLocalizations l10n;
  final Crud operation;
  final Widget content;
  final bool? isOutside;

  @override
  Widget build(BuildContext context) {
    final outside =
        isOutside ?? false ? OutsideType.offSite : OutsideType.atHeadquarters;
    final selectedRadio = useState<OutsideType>(outside);
    return Column(
      children: [
        PrimaryText(l10n.dondeReaMat).verticalPadding(10),
        Consumer(
          builder: (_, ref, __) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: PrimaryRadioListTile(
                    readOnly: operation.isRead,
                    value: OutsideType.atHeadquarters,
                    groupValue: selectedRadio.value,
                    title: OutsideType.atHeadquarters.translate(context),
                    onChanged: (value) {
                      selectedRadio.value = OutsideType.atHeadquarters;
                      ref
                          .read(marriageCelebrationProvider.notifier)
                          .setIsOutside(isOutside: false);
                      context.replaceRoute(
                        SecondStepAtHeadquarterRoute(
                          operation: operation,
                          children: [
                            WitnessRoute(
                              indexWitness: 0,
                              operation: operation,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: PrimaryRadioListTile(
                    readOnly: operation.isRead,
                    value: OutsideType.offSite,
                    groupValue: selectedRadio.value,
                    title: OutsideType.offSite.translate(context),
                    onChanged: (value) {
                      selectedRadio.value = OutsideType.offSite;
                      ref
                          .read(marriageCelebrationProvider.notifier)
                          .setIsOutside(isOutside: true);
                      context.replaceRoute(
                        SecondStepOffSiteRoute(operation: operation),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
        Expanded(child: content),
      ],
    );
  }
}
