import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidentialDependentRelationType implements Translatable {
  @JsonValue('HIJO_MENOR_EDAD')
  hijoMenorEdad('HIJO_MENOR_EDAD'),
  @JsonValue('DISCAPACITADO')
  discapacitado('DISCAPACITADO'),
  @JsonValue('TERCERA_EDAD')
  terceraEdad('TERCERA_EDAD'),
  @JsonValue('NULL')
  none('NULL');

  const ResidentialDependentRelationType(this.toText);
  final String toText;

  static List<Translatable> get items => ResidentialDependentRelationType.values
      .whereNot((element) => element == ResidentialDependentRelationType.none)
      .toList();

  static String? toJson(ResidentialDependentRelationType? value) =>
      value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidentialDependentRelationType.hijoMenorEdad:
        return l10n.hijoMenorEdad;
      case ResidentialDependentRelationType.discapacitado:
        return l10n.discapacitado;
      case ResidentialDependentRelationType.terceraEdad:
        return l10n.terceraEdad;
      case ResidentialDependentRelationType.none:
        return l10n.none;
    }
  }
}
