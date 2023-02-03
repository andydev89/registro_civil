import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/models/stepper_agendar_turnos_model.dart';

class AgendarTurnoStepperRiverpod extends StateNotifier<StepperAgendarTurnos> {
  AgendarTurnoStepperRiverpod()
      : super(
          const StepperAgendarTurnos(currentIndex: 0),
        );

  void next() {
    state = state.copyWith(
      currentIndex: state.currentIndex + 1,
    );
  }

  void previous() {
    state = state.copyWith(
      currentIndex: state.currentIndex - 1,
    );
  }
}
