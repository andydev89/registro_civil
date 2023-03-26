import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipSimpleCertificateEnum implements Translatable {
  deceasedFatherOrMother,
  son,
  spouse,
  cohabitant;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case RelationshipSimpleCertificateEnum.deceasedFatherOrMother:
        return l10n.padreMadreFallecidos;
      case RelationshipSimpleCertificateEnum.son:
        return l10n.hijo;
      case RelationshipSimpleCertificateEnum.spouse:
        return l10n.conyuge;
      case RelationshipSimpleCertificateEnum.cohabitant:
        return l10n.conviviente;
    }
  }
}
