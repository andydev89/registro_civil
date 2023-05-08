// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCertificateModel _$SimpleCertificateModelFromJson(
        Map<String, dynamic> json) =>
    SimpleCertificateModel(
      type: $enumDecode(_$TypeServiceEnumMap, json['type']),
      userNui: json['userNui'] as String,
      isFamily: json['isFamily'] as bool,
      typeFamily: $enumDecode(
          _$RelationshipSimpleCertificateEnumEnumMap, json['typeFamily']),
      nuiFamily: json['nuiFamily'] as String,
      isConadis: json['isConadis'] as bool,
      nuiConadis: json['nuiConadis'] as String,
    );

Map<String, dynamic> _$SimpleCertificateModelToJson(
        SimpleCertificateModel instance) =>
    <String, dynamic>{
      'type': TypeService.toJson(instance.type),
      'userNui': instance.userNui,
      'isFamily': instance.isFamily,
      'typeFamily':
          RelationshipSimpleCertificateEnum.toJson(instance.typeFamily),
      'nuiFamily': instance.nuiFamily,
      'isConadis': instance.isConadis,
      'nuiConadis': instance.nuiConadis,
    };

const _$TypeServiceEnumMap = {
  TypeService.birth: 'SERVICE_CERTIFICADO_NACIMIENTO',
  TypeService.marriage: 'SERVICE_CERTIFICADO_MATRIMONIO',
  TypeService.factorUnion: 'SERVICE_CERTIFICADO_UNION_HECHO',
  TypeService.death: 'SERVICE_CERTIFICADO_DEFUNCION',
  TypeService.gender: 'SERVICE_CERTIFICADO_GENERO',
  TypeService.identity: 'SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL',
  TypeService.copyBirthRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_NACIMIENTO',
  TypeService.copyMarriageRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_MATRIMONIO',
  TypeService.copyFactoUnionRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_UNION_HECHO',
  TypeService.copyRegistrationRecordDeath: 'SERVICE_ACTA_REGISTRAL_DEFUNCION',
  TypeService.copyRegistrationCertificateGenderRegistration:
      'SERVICE_ACTA_REGISTRAL_GENERO',
  TypeService.schedule: 'SERVICE_AGENDAR_TURNO',
  TypeService.none: 'NULL',
  TypeService.marriageCelebration: 'PRUEBA_MARRIAGE_CELEBRATION',
  TypeService.residencyRegistration: 'SERVICE_RESIDENCY_REGISTRATION',
  TypeService.changeOfName: 'SERVICE_CAMBIO_NOMBRE',
};

const _$RelationshipSimpleCertificateEnumEnumMap = {
  RelationshipSimpleCertificateEnum.fatherMotherDeceased:
      'FATHER_MOTHER_DEATHED',
  RelationshipSimpleCertificateEnum.son: 'SON',
  RelationshipSimpleCertificateEnum.spouse: 'SPOUSE',
  RelationshipSimpleCertificateEnum.coexistent: 'COEXISTENT',
  RelationshipSimpleCertificateEnum.staff: 'STAFF',
};

ProcessModel _$ProcessModelFromJson(Map<String, dynamic> json) => ProcessModel(
      id: json['id'] as String,
      state: $enumDecode(_$ServicesStateEnumMap, json['state']),
      observations: json['observations'] as String,
    );

Map<String, dynamic> _$ProcessModelToJson(ProcessModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$ServicesStateEnumMap[instance.state]!,
      'observations': instance.observations,
    };

const _$ServicesStateEnumMap = {
  ServicesState.inProgress: 'IN_PROGRESS',
  ServicesState.approved: 'APPROVED',
  ServicesState.withErrors: 'WITH_ERRORS',
  ServicesState.cancelled: 'CANCELLED',
  ServicesState.inactive: 'INACTIVE',
};

CancelModel _$CancelModelFromJson(Map<String, dynamic> json) => CancelModel(
      id: json['id'] as String,
      observations: json['observations'] as String,
    );

Map<String, dynamic> _$CancelModelToJson(CancelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'observations': instance.observations,
    };
