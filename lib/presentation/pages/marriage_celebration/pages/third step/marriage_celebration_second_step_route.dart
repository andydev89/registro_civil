import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/outside_enum.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MarriageCelebrationSecondStepRouterPage extends HookWidget {
  const MarriageCelebrationSecondStepRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState<OutsideEnum>(OutsideEnum.atHeadquarters);
    return PrimaryScaffold(
      title: l10n.solicitudCelMat,
      subtitle: l10n.ingreseInfSol,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              PrimaryText(l10n.dondeReaMat).verticalPadding(10),
              Consumer(
                builder: (_, ref, __) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: PrimaryRadioListTile(
                          value: OutsideEnum.atHeadquarters,
                          groupValue: selectedRadio.value,
                          title: OutsideEnum.atHeadquarters.translate(context),
                          onChanged: (value) {
                            selectedRadio.value = OutsideEnum.atHeadquarters;
                            ref
                                .read(marriageCelebrationProvider.notifier)
                                .setIsOutside(isOutside: false);
                          },
                        ),
                      ),
                      Expanded(
                        child: PrimaryRadioListTile(
                          value: OutsideEnum.offSite,
                          groupValue: selectedRadio.value,
                          title: OutsideEnum.offSite.translate(context),
                          onChanged: (value) {
                            selectedRadio.value = OutsideEnum.offSite;
                            ref
                                .read(marriageCelebrationProvider.notifier)
                                .setIsOutside(isOutside: true);
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
              PrimaryText(l10n.informacionTes),
              Expanded(child: content),
            ],
          ),
        ),
      ),
    );
  }
}
