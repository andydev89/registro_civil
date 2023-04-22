import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TypeService implements Translatable {
  @JsonValue('SERVICE_CERTIFICADO_NACIMIENTO')
  birth,
  @JsonValue('SERVICE_CERTIFICADO_MATRIMONIO')
  marriage,
  @JsonValue('SERVICE_CERTIFICADO_UNION_HECHO')
  factorUnion,
  @JsonValue('SERVICE_CERTIFICADO_DEFUNCION')
  death,
  @JsonValue('SERVICE_CERTIFICADO_GENERO')
  gender,
  @JsonValue('SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL')
  identity,
  // End simple certificate
  @JsonValue('SERVICE_ACTA_REGISTRAL_NACIMIENTO')
  copyBirthRegistrationCertificate,
  @JsonValue('SERVICE_ACTA_REGISTRAL_MATRIMONIO')
  copyMarriageRegistrationCertificate,
  @JsonValue('SERVICE_ACTA_REGISTRAL_UNION_HECHO')
  copyFactoUnionRegistrationCertificate,
  @JsonValue('SERVICE_ACTA_REGISTRAL_DEFUNCION')
  copyRegistrationRecordDeath,
  @JsonValue('SERVICE_ACTA_REGISTRAL_GENERO')
  copyRegistrationCertificateGenderRegistration,
  // End service acta registral
  @JsonValue('SERVICE_AGENDAR_TURNO')
  schedule;

  bool get isSimpleCertificate =>
      this == birth ||
      this == marriage ||
      this == factorUnion ||
      this == death ||
      this == gender ||
      this == identity;

  bool get isActaRegistral => !isSimpleCertificate && this != schedule;   

  bool get isSchedule => this == schedule; 

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case TypeService.factorUnion:
        return l10n.certificadoUniHec;
      case TypeService.marriage:
        return l10n.certificadoMat;
      case TypeService.death:
        return l10n.certificadoDef;
      case TypeService.identity:
        return l10n.certificadoIden;
      case TypeService.birth:
        return l10n.certificadoNac;
      case TypeService.gender:
        return l10n.certificadoGen;
      case TypeService.copyMarriageRegistrationCertificate:
        return l10n.copiaActRegMat;
      case TypeService.copyRegistrationCertificateGenderRegistration:
        return l10n.copiaActRegRegGen;
      case TypeService.copyFactoUnionRegistrationCertificate:
        return l10n.copiaActRegUniHec;
      case TypeService.copyBirthRegistrationCertificate:
        return l10n.copiaActRegNac;
      case TypeService.copyRegistrationRecordDeath:
        return l10n.copiaActRegDef;
      case TypeService.schedule:
        return l10n.ageTurno;
    }
  }
}
