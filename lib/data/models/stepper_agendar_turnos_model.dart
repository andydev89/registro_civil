import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/enum/home_enum/agendar_turnos_enum.dart';
import 'package:registro_civil_apk/data/enum/home_enum/detalles_turno_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/methods/methods.dart';
import 'package:registro_civil_apk/data/riverpod/implementation/agendar_turnos_stepper_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

class StepperAgendarTurnos {
  const StepperAgendarTurnos({
    required this.currentIndex,
  });
  final int currentIndex;

  StepperAgendarTurnos copyWith({
    int? currentIndex,
  }) {
    return StepperAgendarTurnos(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  String title({
    required AppLocalizations l10n,
    required DetallesTrunoEnum det,
    required bool stepper2SelTurno,
  }) {
    if (currentIndex == 0) return l10n.comInfSolicitada;
    if (currentIndex == 1 && !stepper2SelTurno) return l10n.selTurno;
    if (currentIndex == 1 && stepper2SelTurno) {
      final date = DateTime.now();
      return '${l10n.horDisponibles} ${date.day}-${date.month}-${date.year}';
    }
    if (currentIndex == 2) return '';
    if (det == DetallesTrunoEnum.detalles) return l10n.detTurno;
    return '';
  }

  String buttonText({
    required AppLocalizations l10n,
    required DetallesTrunoEnum det,
    required AgendarTurnosEnum age,
    required bool stepper2SelTurno,
  }) {
    if (currentIndex == 0) return l10n.continuar;
    if (currentIndex == 1 && stepper2SelTurno) return l10n.aceptar;
    if (currentIndex == 2 && age == AgendarTurnosEnum.pagoIncorrecto) {
      return l10n.misTramites;
    }
    if (currentIndex == 3 && det == DetallesTrunoEnum.detalles) {
      return l10n.confirmar;
    }
    if (currentIndex == 3 && det == DetallesTrunoEnum.confirmado) {
      return l10n.misTurnos;
    }
    return l10n.continuar;
  }

  bool disabledButton({
    required bool stepper2YaSelTurno,
    required bool stepper2SelTurno,
  }) {
    if (!stepper2YaSelTurno && currentIndex == 1 && !stepper2SelTurno) {
      return true;
    }
    return false;
  }

  void actionButton(
    BuildContext context, {
    required AgendarTurnoStepperRiverpod stepper,
    required StateController<DetallesTrunoEnum> stepper4,
    required DetallesTrunoEnum det,
    required AgendarTurnosEnum age,
    required bool stepper2SelTurno,
    required StateController<bool> stepper2actSelturno,
    required StateController<bool> stepper2actYaSelturno,
  }) {
    if (currentIndex == 1 && stepper2SelTurno) {
      stepper2actSelturno.state = false;
      stepper2actYaSelturno.state = true;
      return;
    }
    if (currentIndex == 2 && age == AgendarTurnosEnum.pagoIncorrecto) {
      irAYBorrarAnterior(context, ruta: RoutesEnum.nuestrosServicios);
      return;
    }
    if (currentIndex == 3 && det == DetallesTrunoEnum.detalles) {
      stepper4.state = DetallesTrunoEnum.confirmado;
      return;
    }
    if (currentIndex == 3 && det == DetallesTrunoEnum.confirmado) {
      irAYBorrarAnterior(context, ruta: RoutesEnum.nuestrosServicios);
      return;
    }
    return stepper.next();
  }

  bool showButton(AgendarTurnosEnum age) {
    if (currentIndex == 2 && age == AgendarTurnosEnum.verificando) return false;
    return true;
  }
}
