import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TypeHousing implements Translatable {
  apartamento('Apartamento'),
  estudio('Estudio'),
  duplex('Duplex'),
  aticos('Áticos'),
  pisos('Pisos'),
  bajosConJardin('Bajos con jardín'),
  ;

  const TypeHousing(this.toText);
  final String toText;

  static String? toJson(TypeHousing? value) => value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case TypeHousing.apartamento:
        return l10n.apartamento;
      case TypeHousing.estudio:
        return l10n.estudio;
      case TypeHousing.duplex:
        return l10n.duplex;
      case TypeHousing.aticos:
        return l10n.aticos;
      case TypeHousing.pisos:
        return l10n.pisos;
      case TypeHousing.bajosConJardin:
        return l10n.bajosJardin;
    }
  }
}
