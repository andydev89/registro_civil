import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  }) {
    if (currentIndex == 0) return l10n.comInfSolicitada;
    if (currentIndex == 1) return l10n.selTurno;
    if (currentIndex == 2) return '';
    if (det == DetallesTrunoEnum.detalles) return l10n.detTurno;
    return '';
  }

  String buttonText({
    required AppLocalizations l10n,
    required DetallesTrunoEnum det,
    required AgendarTurnosEnum age,
  }) {
    if (currentIndex < 2) return l10n.continuar;
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

  void actionButton(
    BuildContext context, {
    required AgendarTurnoStepperRiverpod stepper,
    required StateController<DetallesTrunoEnum> stepper4,
    required DetallesTrunoEnum det,
    required AgendarTurnosEnum age,
  }) {
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
    if (currentIndex == 1) return false;
    if (currentIndex == 2 && age == AgendarTurnosEnum.verificando) return false;
    return true;
  }
}
