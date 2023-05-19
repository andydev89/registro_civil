import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipType implements Translatable {
  ///Conyugue o conviviente
  spouseOrCohabitant,
  minorChild,
  brother,
  father,
  mother;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case spouseOrCohabitant:
        return l10n.conyugueOconviviente;
      case minorChild:
        return l10n.hijoMenorDeEdad;
      case brother:
        return l10n.hermano;
      case father:
        return l10n.padre;
      case mother:
        return l10n.madre;
    }
  }
}
