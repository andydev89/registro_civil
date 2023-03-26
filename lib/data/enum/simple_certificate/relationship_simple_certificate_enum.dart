import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipSimpleCertificateEnum {
  deceasedFatherOrMother,
  son,
  spouse,
  cohabitant,
}

extension RelationshipSimpleCertificateTypeExtension
    on RelationshipSimpleCertificateEnum {
  String toText(AppLocalizations l10n) {
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
