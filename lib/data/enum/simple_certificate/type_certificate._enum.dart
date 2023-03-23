import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TypeCertificateEnum {
  factorUnion,
  marriage,
  death,
  identity,
  birth,
}

extension TypeCertificateEnumExtension on TypeCertificateEnum {
  String title(BuildContext context) {
    switch (this) {
      case TypeCertificateEnum.factorUnion:
        return context.l10n.certificadoUniHec;
      case TypeCertificateEnum.marriage:
        return context.l10n.certificadoMat;
      case TypeCertificateEnum.death:
        return context.l10n.certificadoDef;
      case TypeCertificateEnum.identity:
        return context.l10n.certificadoIden;
      case TypeCertificateEnum.birth:
        return context.l10n.certificadoNac;
    }
  }

  // String description(BuildContext context) {
  //   switch (this) {
  //     case TypeCertificateEnum.factorUnion:
  //       return context.l10n.factorUnionDescription;
  //     case TypeCertificateEnum.marriage:
  //       return context.l10n.marriageDescription;
  //     case TypeCertificateEnum.death:
  //       return context.l10n.deathDescription;
  //     case TypeCertificateEnum.identity:
  //       return context.l10n.identityDescription;
  //     case TypeCertificateEnum.birth:
  //       return context.l10n.birthDescription;
  //   }
  // }

  // String discount(BuildContext context) {
  //   switch (this) {
  //     case TypeCertificateEnum.factorUnion:
  //       return context.l10n.factorUnionDiscount;
  //     case TypeCertificateEnum.marriage:
  //       return context.l10n.marriageDiscount;
  //     case TypeCertificateEnum.death:
  //       return context.l10n.deathDiscount;
  //     case TypeCertificateEnum.identity:
  //       return context.l10n.identityDiscount;
  //     case TypeCertificateEnum.birth:
  //       return context.l10n.birthDiscount;
  //   }
  // }

  // String iva(BuildContext context) {
  //   switch (this) {
  //     case TypeCertificateEnum.factorUnion:
  //       return context.l10n.factorUnionIva;
  //     case TypeCertificateEnum.marriage:
  //       return context.l10n.marriageIva;
  //     case TypeCertificateEnum.death:
  //       return context.l10n.deathIva;
  //     case TypeCertificateEnum.identity:
  //       return context.l10n.identityIva;
  //     case TypeCertificateEnum.birth:
  //       return context.l10n.birthIva;
  //   }
  // }

  // double price(BuildContext context) {
  //   switch (this) {
  //     case TypeCertificateEnum.factorUnion:
  //       return context.l10n.factorUnionPrice;
  //     case TypeCertificateEnum.marriage:
  //       return context.l10n.marriagePrice;
  //     case TypeCertificateEnum.death:
  //       return context.l10n.deathPrice;
  //     case TypeCertificateEnum.identity:
  //       return context.l10n.identityPrice;
  //     case TypeCertificateEnum.birth:
  //       return context.l10n.birthPrice;
  //   }
  // }
}
