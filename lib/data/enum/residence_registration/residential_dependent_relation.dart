import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidentialDependentRelation implements Translatable {
  @JsonValue('HIJO_MENOR_EDAD')
  hijoMenorEdad('HIJO_MENOR_EDAD'),
  @JsonValue('DISCAPACITADO')
  discapacitado('DISCAPACITADO'),
  @JsonValue('TERCERA_EDAD')
  terceraEdad('TERCERA_EDAD'),
  @JsonValue('NULL')
  none('NULL');

  const ResidentialDependentRelation(this.toText);
  final String toText;

  static String? toJson(ResidentialDependentRelation? value) => value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidentialDependentRelation.hijoMenorEdad:
        return l10n.hijoMenorEdad;
      case ResidentialDependentRelation.discapacitado:
        return l10n.discapacitado;
      case ResidentialDependentRelation.terceraEdad:
        return l10n.terceraEdad;
      case ResidentialDependentRelation.none:
        return l10n.none;
    }
  }
}
