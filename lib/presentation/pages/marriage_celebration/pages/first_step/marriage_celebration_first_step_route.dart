import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MarriageCelebrationFirstStepRouterPage extends HookWidget {
  const MarriageCelebrationFirstStepRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(MarriageCelebrationType.attorney);
    return PrimaryScaffold(
      title: l10n.informacionSer,
      subtitle: l10n.ingreseInfSol,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              Consumer(
                builder: (_, ref, __) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: PrimaryRadioListTile(
                          value: MarriageCelebrationType.attorney,
                          groupValue: selectedRadio.value,
                          title: MarriageCelebrationType.attorney
                              .translate(context),
                          onChanged: (value) {
                            selectedRadio.value =
                                MarriageCelebrationType.attorney;
                            ref
                                .read(marriageCelebrationProvider.notifier)
                                .setAttorney();
                            context
                                .replaceRoute(const FirstStepAttorneyRoute());
                          },
                        ),
                      ),
                      Expanded(
                        child: PrimaryRadioListTile(
                          value: MarriageCelebrationType.contractingParty,
                          groupValue: selectedRadio.value,
                          title: MarriageCelebrationType.contractingParty
                              .translate(context),
                          onChanged: (value) {
                            selectedRadio.value =
                                MarriageCelebrationType.contractingParty;
                            ref
                                .read(marriageCelebrationProvider.notifier)
                                .setContractingParty();
                            context.replaceRoute(
                              const FirstStepContractingPartyRoute(),
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
          ),
        ),
      ),
    );
  }
}
