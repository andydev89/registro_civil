import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/simple_certificate_radio_type_enum.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_radio_list_tile.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SimpleCertificateFirstStepRouterPage extends HookWidget {
  const SimpleCertificateFirstStepRouterPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeServiceModel typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(SimpleCertificateRadioTypeEnum.familiar);
    return PrimaryScaffold(
      title: '${l10n.informacionSer}: ${typeSimpleCertificate.name}',
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
                      value: SimpleCertificateRadioTypeEnum.familiar,
                      groupValue: selectedRadio.value,
                      title: l10n.datosFam,
                      onChanged: (value) {
                        selectedRadio.value =
                            SimpleCertificateRadioTypeEnum.familiar;
                        context.replaceRoute(
                          SimpleCertificateFirstStepFamiliarRoute(
                            typeSimpleCertificate: typeSimpleCertificate,
                          ),
                        );
                      },
                    ),
                  ),
                  Visibility(
                    visible: typeSimpleCertificate.type != TypeService.death,
                    child: Expanded(
                      child: PrimaryRadioListTile(
                        value: SimpleCertificateRadioTypeEnum.personal,
                        groupValue: selectedRadio.value,
                        title: l10n.datosPer,
                        onChanged: (value) {
                          selectedRadio.value =
                              SimpleCertificateRadioTypeEnum.personal;
                          context.replaceRoute(
                            SimpleCertificateFirstStepPersonalRoute(
                              typeSimpleCertificate: typeSimpleCertificate,
                            ),
                          );
                        },
                      ),
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
