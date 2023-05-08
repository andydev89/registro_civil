import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/commons/procedure_type.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ScheduleTurnFirstStepRouterPage extends HookWidget {
  const ScheduleTurnFirstStepRouterPage({
    super.key,
    required this.typeOfService,
  });
  final TypeServiceModel typeOfService;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(ProcedureType.personal);
    return PrimaryScaffold(
      title: '${l10n.obtengaSuTurno}: ${typeOfService.name}',
      subtitle: l10n.completeInformacionSolicitada,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: PrimaryRadioListTile(
                      value: ProcedureType.personal,
                      groupValue: selectedRadio.value,
                      title: l10n.personal,
                      onChanged: (value) {
                        selectedRadio.value = ProcedureType.personal;
                        context.replaceRoute(
                          ScheduleTurnFirstStepPersonalRoute(
                            typeOfService: typeOfService,
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: PrimaryRadioListTile(
                      value: ProcedureType.familiar,
                      groupValue: selectedRadio.value,
                      title: l10n.familiar,
                      onChanged: (value) {
                        selectedRadio.value = ProcedureType.familiar;
                        context.replaceRoute(
                          ScheduleTurnFirstStepFamiliarRoute(
                            typeOfService: typeOfService,
                          ),
                        );
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
