import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PersonalValidationMaritalStatusType implements Translatable {
  @JsonValue('CASADO')
  married('CASADO'),
  @JsonValue('SOLTERO')
  single('SOLTERO'),
  @JsonValue('DIVORCIADO')
  divorced('DIVORCIADO'),
  @JsonValue('VIUDO')
  widower('VIUDO'),
  @JsonValue('UNION DE HECHO')
  commonLawMarriage('UNION DE HECHO');

  const PersonalValidationMaritalStatusType(this.toText);
  final String toText;


  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PersonalValidationMaritalStatusType.married:
        return l10n.nonResidentPartner;
      case PersonalValidationMaritalStatusType.single:
        return l10n.single;
      case PersonalValidationMaritalStatusType.divorced:
        return l10n.divorced;
      case PersonalValidationMaritalStatusType.widower:
        return l10n.widower;
      case PersonalValidationMaritalStatusType.commonLawMarriage:
        return l10n.commonLawMarriage;
    }
  }
}
