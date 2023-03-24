import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TypeSimpleCertificateEnum {
  factorUnion,
  marriage,
  death,
  identity,
  birth,
}

extension TypeCertificateEnumExtension on TypeSimpleCertificateEnum {
  String title(AppLocalizations l10n) {
    switch (this) {
      case TypeSimpleCertificateEnum.factorUnion:
        return l10n.certificadoUniHec;
      case TypeSimpleCertificateEnum.marriage:
        return l10n.certificadoMat;
      case TypeSimpleCertificateEnum.death:
        return l10n.certificadoDef;
      case TypeSimpleCertificateEnum.identity:
        return l10n.certificadoIden;
      case TypeSimpleCertificateEnum.birth:
        return l10n.certificadoNac;
    }
  }

  String description(AppLocalizations l10n) {
    switch (this) {
      case TypeSimpleCertificateEnum.factorUnion:
        return l10n.certificadoUniHecDes;
      case TypeSimpleCertificateEnum.marriage:
        return l10n.certificadoMatDes;
      case TypeSimpleCertificateEnum.death:
        return l10n.certificadoDefDes;
      case TypeSimpleCertificateEnum.identity:
        return l10n.certificadoIdenDes;
      case TypeSimpleCertificateEnum.birth:
        return l10n.certificadoNacDes;
    }
  }

  double get price => this == TypeSimpleCertificateEnum.identity ? 5 : 3;
}
