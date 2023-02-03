import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/home_enum/agendar_turnos_enum.dart';
import 'package:registro_civil_apk/data/enum/home_enum/detalles_turno_enum.dart';
import 'package:registro_civil_apk/data/models/stepper_agendar_turnos_model.dart';
import 'package:registro_civil_apk/data/riverpod/implementation/agendar_turnos_stepper_riverpod.dart';

final agendarTurnosStepperRiv = StateNotifierProvider.autoDispose<
    AgendarTurnoStepperRiverpod,
    StepperAgendarTurnos>((ref) => AgendarTurnoStepperRiverpod());

final agendarTurnosStepper3Riv = StateProvider.autoDispose<AgendarTurnosEnum>(
  (ref) => AgendarTurnosEnum.verificando,
);

final agendarTurnosStepper4Riv = StateProvider.autoDispose<DetallesTrunoEnum>(
  (ref) => DetallesTrunoEnum.detalles,
);
