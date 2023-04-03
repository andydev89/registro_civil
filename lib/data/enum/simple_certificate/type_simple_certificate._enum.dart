import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TypeSimpleCertificateEnum {
  factorUnion,
  marriage,
  death,
  identity,
  birth,
  copyMarriageRegistrationCertificate,
  copyRegistrationCertificateGenderRegistration,
  copyFactoUnionRegistrationCertificate,
  copyBirthRegistrationCertificate,
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
      case TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
        return l10n.copiaActRegMat;
      case TypeSimpleCertificateEnum
          .copyRegistrationCertificateGenderRegistration:
        return l10n.copiaActRegRegGen;
      case TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
        return l10n.copiaActRegUniHec;
      case TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
        return l10n.copiaActRegNac;
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
      case TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
        return l10n.copiaActRegMatDes;
      case TypeSimpleCertificateEnum
          .copyRegistrationCertificateGenderRegistration:
        return l10n.copiaActRegRegGenDes;
      case TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
        return l10n.copiaActRegUniHecDes;
      case TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
        return l10n.copiaActRegNacDes;
    }
  }

  double get price {
    if (this == TypeSimpleCertificateEnum.identity) return 5;
    if (_isPrice6) return 6;
    return 3;
  }

  bool get _isPrice6 =>
      this == TypeSimpleCertificateEnum.copyBirthRegistrationCertificate ||
      this == TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate ||
      this == TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate ||
      this ==
          TypeSimpleCertificateEnum
              .copyRegistrationCertificateGenderRegistration;

  AssetGenImage get image {
    switch (this) {
      case TypeSimpleCertificateEnum.factorUnion:
        return Assets.png.certificadoUnionHecho;
      case TypeSimpleCertificateEnum.marriage:
        return Assets.png.certificadoMatrimonio;
      case TypeSimpleCertificateEnum.death:
        return Assets.png.certificadoDefuncion;
      case TypeSimpleCertificateEnum.identity:
        return Assets.png.certificadoIdentidad;
      case TypeSimpleCertificateEnum.birth:
        return Assets.png.certificadoNacimiento;
      case TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
        return Assets.png.certificadoMatrimonio;
      case TypeSimpleCertificateEnum
          .copyRegistrationCertificateGenderRegistration:
        return Assets.png.certificadoGenero;
      case TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
        return Assets.png.certificadoUnionHecho;
      case TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
        return Assets.png.certificadoNacimiento;
    }
  }

  double get iva {
    switch (this) {
      case TypeSimpleCertificateEnum.factorUnion:
        return 0;
      case TypeSimpleCertificateEnum.marriage:
        return 0;
      case TypeSimpleCertificateEnum.death:
        return 0;
      case TypeSimpleCertificateEnum.identity:
        return 0;
      case TypeSimpleCertificateEnum.birth:
        return 0;
      case TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
        return 0;
      case TypeSimpleCertificateEnum
          .copyRegistrationCertificateGenderRegistration:
        return 0;
      case TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
        return 0;
      case TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
        return 0;
    }
  }

  double get discountConadis {
    switch (this) {
      case TypeSimpleCertificateEnum.factorUnion:
        return 0;
      case TypeSimpleCertificateEnum.marriage:
        return 0;
      case TypeSimpleCertificateEnum.death:
        return 0;
      case TypeSimpleCertificateEnum.identity:
        return 0;
      case TypeSimpleCertificateEnum.birth:
        return 0;
      case TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
        return 0;
      case TypeSimpleCertificateEnum
          .copyRegistrationCertificateGenderRegistration:
        return 0;
      case TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
        return 0;
      case TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
        return 0;
    }
  }
}
