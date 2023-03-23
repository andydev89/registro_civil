import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/schedule_shift_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SimpleCertificateFirstStepRouterPage extends HookWidget {
  const SimpleCertificateFirstStepRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final selectedRadio = useState(ScheduleShiftType.personal);
    return PrimaryScaffold(
      title: l10n.obtengaSuTurno,
      subtitle: l10n.completeInformacionSolicitada,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: ScheduleShiftType.personal,
                        groupValue: selectedRadio.value,
                        onChanged: (value) {
                          selectedRadio.value = ScheduleShiftType.personal;
                          context.replaceRoute(
                            const SimpleCertificateFirstStepPersonalRoute(),
                          );
                        },
                      ),
                      PrimaryText(
                        l10n.personal,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: ScheduleShiftType.familiar,
                        groupValue: selectedRadio.value,
                        onChanged: (value) {
                          selectedRadio.value = ScheduleShiftType.familiar;
                          context.replaceRoute(
                            const SimpleCertificateFirstStepFamiliarRoute(),
                          );
                        },
                      ),
                      PrimaryText(
                        l10n.familiar,
                        color: Colors.black,
                      ),
                    ],
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
