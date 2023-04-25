import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MarriageCelebrationFirstStepRouterPage extends HookWidget {
  const MarriageCelebrationFirstStepRouterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(MarriageCelebrationRadioTypeEnum.attorney);
    return PrimaryScaffold(
      title: l10n.informacionSer,
      subtitle: l10n.completeInformacionSolicitada,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PrimaryRadioListTile(
                      value: MarriageCelebrationRadioTypeEnum.attorney,
                      groupValue: selectedRadio.value,
                      title: l10n.datosFam,
                      onChanged: (value) {
                        selectedRadio.value =
                            MarriageCelebrationRadioTypeEnum.attorney;
                        // context.replaceRoute(
                        //   SimpleCertificateFirstStepFamiliarRoute(
                        //     typeSimpleCertificate: typeSimpleCertificate,
                        //   ),
                        // );
                      },
                    ),
                  ),
                  Expanded(
                    child: PrimaryRadioListTile(
                      value: MarriageCelebrationRadioTypeEnum.contractingParty,
                      groupValue: selectedRadio.value,
                      title: l10n.datosPer,
                      onChanged: (value) {
                        selectedRadio.value =
                            MarriageCelebrationRadioTypeEnum.contractingParty;
                        // context.replaceRoute(
                        //   SimpleCertificateFirstStepPersonalRoute(
                        //     typeSimpleCertificate: typeSimpleCertificate,
                        //   ),
                        // );
                      },
                    ),
                  ),
                ],
              ),
              Expanded(child: content),
            ],
          ),
        ),
      ),
    );
  }
}
