import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/widgets/stepper1_widget.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/widgets/stepper2_widget.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/widgets/stepper3_widget.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/widgets/stepper4_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/another_stepper_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffold_auth_widget.dart';

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
          AnotherStepperWidget(
            activeIndex: stteperPos,
            totalElement: 4,
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
