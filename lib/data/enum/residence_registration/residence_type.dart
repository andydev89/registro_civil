import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidenceType implements Translatable {
  principal('Principal'),
  secundaria('Secundaria'),
  ;

  const ResidenceType(this.toText);
  final String toText;

  static String? toJson(ResidenceType? value) => value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidenceType.principal:
        return l10n.principal;
      case ResidenceType.secundaria:
        return l10n.secundaria;
    }
  }
}
