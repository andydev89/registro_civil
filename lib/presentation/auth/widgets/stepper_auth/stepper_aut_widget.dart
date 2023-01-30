import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class StepperAuthWidget extends StatefulWidget {
  const StepperAuthWidget({super.key});

  @override
  State<StepperAuthWidget> createState() => _StepperAuthWidgetState();
}

class _StepperAuthWidgetState extends State<StepperAuthWidget> {
  int posActual = 0;


  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldAuthWidget(
      enunciado: l10n.regCuenta,
      children: [
        AnotherStepper(
          activeBarColor: Theme.of(context).primaryColor,
          activeIndex: posActual,
          barThickness: 18,
          stepperList: List<StepperData>.generate(
            4,
            (index) => StepperData(
              iconWidget: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: posActual >= index
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: TextoWidget(
                    '${index + 1}',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          stepperDirection: Axis.horizontal,
          iconWidth: 40,
          iconHeight: 40,
        )
      ],
    );
  }
}
