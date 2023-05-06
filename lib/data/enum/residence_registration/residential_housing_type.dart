import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidentialHousingType implements Translatable {
  apartamento('APARTAMENTO'),
  estudio('ESTUDIO'),
  duplex('DUPLEX'),
  aticos('ATICOS'),
  pisos('PISOS'),
  bajosConJardin('BAJOS_CON_JARDINn'),
  ;

  const ResidentialHousingType(this.toText);
  final String toText;

  static String? toJson(ResidentialHousingType? value) => value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidentialHousingType.apartamento:
        return l10n.apartamento;
      case ResidentialHousingType.estudio:
        return l10n.estudio;
      case ResidentialHousingType.duplex:
        return l10n.duplex;
      case ResidentialHousingType.aticos:
        return l10n.aticos;
      case ResidentialHousingType.pisos:
        return l10n.pisos;
      case ResidentialHousingType.bajosConJardin:
        return l10n.bajosJardin;
    }
  }
}
