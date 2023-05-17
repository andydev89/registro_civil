import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class SimpleCertificateFirstStepRouterPage extends HookWidget {
  const SimpleCertificateFirstStepRouterPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeServiceModel typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(SimpleCertificateType.familiar);
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
                      value: SimpleCertificateType.familiar,
                      groupValue: selectedRadio.value,
                      title: l10n.datosFam,
                      onChanged: (value) {
                        selectedRadio.value = SimpleCertificateType.familiar;
                        context.replaceRoute(
                          SimpleCertificateFirstStepFamiliarRoute(
                            typeSimpleCertificate: typeSimpleCertificate,
                          ),
                        );
                      },
                    ),
                  ),
                  Visibility(
                    visible: typeSimpleCertificate.type != ServiceType.death,
                    child: Expanded(
                      child: PrimaryRadioListTile(
                        value: SimpleCertificateType.personal,
                        groupValue: selectedRadio.value,
                        title: l10n.datosPer,
                        onChanged: (value) {
                          selectedRadio.value = SimpleCertificateType.personal;
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
