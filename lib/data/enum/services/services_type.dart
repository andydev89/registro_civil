import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ServiceType implements Translatable {
  @JsonValue('SERVICE_CERTIFICADO_NACIMIENTO')
  birth('SERVICE_CERTIFICADO_NACIMIENTO'),
  @JsonValue('SERVICE_CERTIFICADO_MATRIMONIO')
  marriage('SERVICE_CERTIFICADO_MATRIMONIO'),
  @JsonValue('SERVICE_CERTIFICADO_UNION_HECHO')
  factorUnion('SERVICE_CERTIFICADO_UNION_HECHO'),
  @JsonValue('SERVICE_CERTIFICADO_DEFUNCION')
  death('SERVICE_CERTIFICADO_DEFUNCION'),
  @JsonValue('SERVICE_CERTIFICADO_GENERO')
  gender('SERVICE_CERTIFICADO_GENERO'),
  @JsonValue('SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL')
  identity('SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL'),
  // End simple certificate
  @JsonValue('SERVICE_ACTA_REGISTRAL_NACIMIENTO')
  copyBirthRegistrationCertificate('SERVICE_ACTA_REGISTRAL_NACIMIENTO'),
  @JsonValue('SERVICE_ACTA_REGISTRAL_MATRIMONIO')
  copyMarriageRegistrationCertificate('SERVICE_ACTA_REGISTRAL_MATRIMONIO'),
  @JsonValue('SERVICE_ACTA_REGISTRAL_UNION_HECHO')
  copyFactoUnionRegistrationCertificate('SERVICE_ACTA_REGISTRAL_UNION_HECHO'),
  @JsonValue('SERVICE_ACTA_REGISTRAL_DEFUNCION')
  copyRegistrationRecordDeath('SERVICE_ACTA_REGISTRAL_DEFUNCION'),
  @JsonValue('SERVICE_ACTA_REGISTRAL_GENERO')
  copyRegistrationCertificateGenderRegistration(
    'SERVICE_ACTA_REGISTRAL_GENERO',
  ),
  // End service acta registral
  @JsonValue('SERVICE_AGENDAR_TURNO')
  schedule('SERVICE_AGENDAR_TURNO'),
  @JsonValue('NULL')
  none('NULL'),
  @JsonValue('SERVICE_RESIDENCY_REGISTRATION')
  residencyRegistration('SERVICE_RESIDENCY_REGISTRATION'),
  @JsonValue('SERVICE_CAMBIO_NOMBRE')
  changeOfName('SERVICE_CAMBIO_NOMBRE'),
  // TODO(jang): temp
  @JsonValue('PRUEBA_MARRIAGE_CELEBRATION')
  marriageCelebration('PRUEBA_MARRIAGE_CELEBRATION');

  const ServiceType(this.toText);
  final String toText;

  static String? toJson(ServiceType? type) {
    return type?.toText;
  }

  static ServiceType fromJson(String? json) {
    return ServiceType.values.firstWhere(
      (element) => element.toText == json,
      orElse: () => ServiceType.none,
    );
  }

  bool get isSimpleCertificate =>
      this == birth ||
      this == marriage ||
      this == factorUnion ||
      this == death ||
      this == gender ||
      this == identity;

  bool get isActaRegistral =>
      this == copyBirthRegistrationCertificate ||
      this == copyMarriageRegistrationCertificate ||
      this == copyFactoUnionRegistrationCertificate ||
      this == copyRegistrationRecordDeath ||
      this == copyRegistrationCertificateGenderRegistration;

  bool get isSchedule => this == schedule;

  bool get isResidencyRegistration => this == residencyRegistration;

  bool get isChangeOfName => this == changeOfName;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ServiceType.factorUnion:
        return l10n.certificadoUniHec;
      case ServiceType.marriage:
        return l10n.certificadoMat;
      case ServiceType.death:
        return l10n.certificadoDef;
      case ServiceType.identity:
        return l10n.certificadoIden;
      case ServiceType.birth:
        return l10n.certificadoNac;
      case ServiceType.gender:
        return l10n.certificadoGen;
      case ServiceType.copyMarriageRegistrationCertificate:
        return l10n.copiaActRegMat;
      case ServiceType.copyRegistrationCertificateGenderRegistration:
        return l10n.copiaActRegRegGen;
      case ServiceType.copyFactoUnionRegistrationCertificate:
        return l10n.copiaActRegUniHec;
      case ServiceType.copyBirthRegistrationCertificate:
        return l10n.copiaActRegNac;
      case ServiceType.copyRegistrationRecordDeath:
        return l10n.copiaActRegDef;
      case ServiceType.schedule:
        return l10n.ageTurno;
      case ServiceType.marriageCelebration:
        return '';
      case ServiceType.none:
        return '';
      case ServiceType.residencyRegistration:
        return '';
      case ServiceType.changeOfName:
        return l10n.cambioNom;
    }
  }
}
