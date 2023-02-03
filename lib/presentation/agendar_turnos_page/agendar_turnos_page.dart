import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/home_page_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/agendar_turnos_page/widgets/stepper1_agendar_turnos.dart';
import 'package:registro_civil_apk/presentation/agendar_turnos_page/widgets/stepper2_agendar_turnos.dart';
import 'package:registro_civil_apk/presentation/agendar_turnos_page/widgets/stepper3_agendar_turnos.dart';
import 'package:registro_civil_apk/presentation/agendar_turnos_page/widgets/stepper4_agendar_turnos.dart';
import 'package:registro_civil_apk/presentation/home_page/widgets/scaffold_home_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/another_stepper_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget_sliver.dart';

class AgendarTurnosPage extends ConsumerStatefulWidget {
  const AgendarTurnosPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AgendarTurnosPageState();
}

class _AgendarTurnosPageState extends ConsumerState<AgendarTurnosPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final stepperModel = ref.watch(agendarTurnosStepperRiv);
    final stepper3 = ref.watch(agendarTurnosStepper3Riv);
    final stepper4 = ref.watch(agendarTurnosStepper4Riv);
    const color = Color.fromRGBO(13, 29, 47, 1);
    final padding = EdgeInsets.symmetric(
      horizontal:
          stepperModel.currentIndex == 1 || stepperModel.currentIndex == 3
              ? 0
              : 40,
    );
    return WillPopScope(
      onWillPop: () async {
        if (stepperModel.currentIndex != 0) {
          ref.read(agendarTurnosStepperRiv.notifier).previous();
          return false;
        }
        return true;
      },
      child: ScaffoldHomeWidget(
        slivers: [
          TextoWidgetSliver(
            titulo: l10n.obtTurno,
            paddingTop: 30,
            prevoius: stepperModel.currentIndex != 0
                ? Positioned(
                    left: 40,
                    top: -5,
                    child: IconButton(
                      onPressed: () =>
                          ref.read(agendarTurnosStepperRiv.notifier).previous(),
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: color,
                        size: 30,
                      ),
                    ),
                  )
                : null,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  AnotherStepperWidget(
                    activeIndex: stepperModel.currentIndex,
                    totalElement: 4,
                    barThickness: 22,
                    size: 50,
                    fontSize: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.58,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Padding(
                            padding: padding,
                            child: TextoWidget(
                              stepperModel.title(
                                l10n: context.l10n,
                                det: stepper4,
                              ),
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: padding,
                            child: stepper(
                              stepperModel.currentIndex,
                              color,
                            ),
                          ),
                        ),
                        if (stepperModel.showButton(stepper3))
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              right: 40,
                              top: 30,
                            ),
                            child: ElevatedButtonWidget(
                              width: double.maxFinite,
                              title: stepperModel.buttonText(
                                l10n: l10n,
                                det: stepper4,
                                age: stepper3,
                              ),
                              onPressed: () => stepperModel.actionButton(
                                context,
                                stepper:
                                    ref.read(agendarTurnosStepperRiv.notifier),
                                stepper4:
                                    ref.read(agendarTurnosStepper4Riv.notifier),
                                det: stepper4,
                                age: stepper3,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget stepper(
    int currentIndex,
    Color color,
  ) {
    if (currentIndex == 0) return Stepper1AgendarTurnos(color: color);
    if (currentIndex == 1) return Stepper2AgendarTurnos(color: color);
    if (currentIndex == 2) return Stepper3AgendarTurnos(color: color);
    return Stepper4AgendarTurnos(color: color);
  }
}
