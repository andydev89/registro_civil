import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum DayOfWeek implements Translatable {
  @JsonValue('MONDAY')
  monday,
  @JsonValue('TUESDAY')
  tuesday,
  @JsonValue('WEDNESDAY')
  wednesday,
  @JsonValue('THURSDAY')
  thursday,
  @JsonValue('FRIDAY')
  friday,
  @JsonValue('SATURDAY')
  saturday,
  @JsonValue('SUNDAY')
  sunday;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case DayOfWeek.monday:
        return l10n.lunes;
      case DayOfWeek.tuesday:
        return l10n.martes;
      case DayOfWeek.wednesday:
        return l10n.miercoles;
      case DayOfWeek.thursday:
        return l10n.jueves;
      case DayOfWeek.friday:
        return l10n.viernes;
      case DayOfWeek.saturday:
        return l10n.sabado;
      case DayOfWeek.sunday:
        return l10n.domingo;
    }
  }
}
