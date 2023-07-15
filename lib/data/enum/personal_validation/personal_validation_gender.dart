import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PersonalValidationGenderType implements Translatable {
  @JsonValue('HOMBRE')
  man('HOMBRE'),
  @JsonValue('MUJER')
  woman('MUJER'),
  @JsonValue('OTRO')
  other('OTRO');

  const PersonalValidationGenderType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PersonalValidationGenderType.man:
        return 'Hombre';
      case PersonalValidationGenderType.woman:
        return 'Mujer';
      case PersonalValidationGenderType.other:
        return 'Otro';
    }
  }
}
