import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/widgets/stepper1_widget.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/widgets/stepper2_widget.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/widgets/stepper3_widget.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/widgets/stepper4_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stteperPos = ref.watch(authStepperRiv);
    final l10n = context.l10n;
    return WillPopScope(
      onWillPop: () {
        if (stteperPos > 0) {
          ref.read(authStepperRiv.notifier).state--;
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: ScaffoldAuthWidget(
        enunciado: l10n.regCuenta,
        columnAlignment: MainAxisAlignment.start,
        children: [
          AnotherStepper(
            activeBarColor: Theme.of(context).primaryColor,
            inActiveBarColor: Colors.grey.shade400,
            activeIndex: stteperPos,
            barThickness: 18,
            stepperList: List<StepperData>.generate(
              4,
              (index) => StepperData(
                iconWidget: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: stteperPos >= index
                        ? Theme.of(context).primaryColor
                        : Colors.grey.shade400,
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
          ),
          Expanded(child: stepperActual(stteperPos)),
        ],
      ),
    );
  }

  Widget stepperActual(int pos) {
    if (pos == 0) return const Stepper1();
    if (pos == 1) return const Stepper2();
    if (pos == 2) return const Stepper3();
    return const Stepper4();
  }
}
