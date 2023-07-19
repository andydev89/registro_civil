import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/enum_translatable.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PersonalValidationGenderType implements EnumTranslatable {
  @JsonValue('HOMBRE')
  man,
  @JsonValue('MUJER')
  woman,
  @JsonValue('OTRO')
  other;

  const PersonalValidationGenderType();

  @override
  String toText() {
    return name;
  }

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PersonalValidationGenderType.man:
        return l10n.hombre;
      case PersonalValidationGenderType.woman:
        return l10n.mujer;
      case PersonalValidationGenderType.other:
        return l10n.otro;
    }
  }
}
