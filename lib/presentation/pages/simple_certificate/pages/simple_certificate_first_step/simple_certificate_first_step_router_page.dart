import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/simple_certificate_radio_type_enum.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SimpleCertificateFirstStepRouterPage extends HookWidget {
  const SimpleCertificateFirstStepRouterPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(SimpleCertificateRadioTypeEnum.familiar);
    return PrimaryScaffold(
      title: l10n.informacionSer,
      subtitle: l10n.completeInformacionSolicitada,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: RadioListTile(
                      value: SimpleCertificateRadioTypeEnum.familiar,
                      groupValue: selectedRadio.value,
                      onChanged: (value) {
                        selectedRadio.value =
                            SimpleCertificateRadioTypeEnum.familiar;
                        context.replaceRoute(
                          SimpleCertificateFirstStepFamiliarRoute(
                            typeSimpleCertificate: typeSimpleCertificate,
                          ),
                        );
                      },
                      title: PrimaryText(
                        l10n.datosFam,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      value: SimpleCertificateRadioTypeEnum.personal,
                      groupValue: selectedRadio.value,
                      onChanged: (value) {
                        selectedRadio.value =
                            SimpleCertificateRadioTypeEnum.personal;
                        context.replaceRoute(
                          SimpleCertificateFirstStepPersonalRoute(
                            typeSimpleCertificate: typeSimpleCertificate,
                          ),
                        );
                      },
                      title: PrimaryText(
                        l10n.datosPer,
                        color: Colors.black,
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
