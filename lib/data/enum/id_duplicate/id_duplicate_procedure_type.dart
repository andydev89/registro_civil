import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum IdDuplicateProcedureType implements Translatable {
  @JsonValue('PERSONAL')
  personal('PERSONAL'),
  @JsonValue('CHILD')
  child('CHILD');

  const IdDuplicateProcedureType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case IdDuplicateProcedureType.personal:
        return 'Solicitud de emisión de duplicado de cédula';
      case IdDuplicateProcedureType.child:
        return 'Solicitud de Duplicado de cédula para hijos menores de edad';
    }
  }
}
