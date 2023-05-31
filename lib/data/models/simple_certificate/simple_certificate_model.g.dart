// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCertificateModel _$SimpleCertificateModelFromJson(
        Map<String, dynamic> json) =>
    SimpleCertificateModel(
      type: $enumDecode(_$ServiceTypeEnumMap, json['type']),
      userNui: json['userNui'] as String,
      isFamily: json['isFamily'] as bool,
      typeFamily: $enumDecode(
          _$RelationshipSimpleCertificateTypeEnumMap, json['typeFamily']),
      nuiFamily: json['nuiFamily'] as String,
      isConadis: json['isConadis'] as bool,
      nuiConadis: json['nuiConadis'] as String,
    );

Map<String, dynamic> _$SimpleCertificateModelToJson(
        SimpleCertificateModel instance) =>
    <String, dynamic>{
      'type': ServiceType.toJson(instance.type),
      'userNui': instance.userNui,
      'isFamily': instance.isFamily,
      'typeFamily':
          RelationshipSimpleCertificateType.toJson(instance.typeFamily),
      'nuiFamily': instance.nuiFamily,
      'isConadis': instance.isConadis,
      'nuiConadis': instance.nuiConadis,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.birth: 'SERVICE_CERTIFICADO_NACIMIENTO',
  ServiceType.marriage: 'SERVICE_CERTIFICADO_MATRIMONIO',
  ServiceType.factorUnion: 'SERVICE_CERTIFICADO_UNION_HECHO',
  ServiceType.death: 'SERVICE_CERTIFICADO_DEFUNCION',
  ServiceType.gender: 'SERVICE_CERTIFICADO_GENERO',
  ServiceType.identity: 'SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL',
  ServiceType.copyBirthRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_NACIMIENTO',
  ServiceType.copyMarriageRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_MATRIMONIO',
  ServiceType.copyFactoUnionRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_UNION_HECHO',
  ServiceType.copyRegistrationRecordDeath: 'SERVICE_ACTA_REGISTRAL_DEFUNCION',
  ServiceType.copyRegistrationCertificateGenderRegistration:
      'SERVICE_ACTA_REGISTRAL_GENERO',
  ServiceType.schedule: 'SERVICE_AGENDAR_TURNO',
  ServiceType.none: 'NULL',
  ServiceType.residencyRegistration: 'SERVICE_RESIDENCY_REGISTRATION',
  ServiceType.changeOfName: 'SERVICE_CAMBIO_NOMBRE',
  ServiceType.idDuplicate: 'SERVICE_CAMBIO_NOMBRE',
  ServiceType.marriageCelebration: 'PRUEBA_MARRIAGE_CELEBRATION',
};

const _$RelationshipSimpleCertificateTypeEnumMap = {
  RelationshipSimpleCertificateType.fatherMotherDeceased:
      'FATHER_MOTHER_DEATHED',
  RelationshipSimpleCertificateType.son: 'SON',
  RelationshipSimpleCertificateType.spouse: 'SPOUSE',
  RelationshipSimpleCertificateType.coexistent: 'COEXISTENT',
  RelationshipSimpleCertificateType.staff: 'STAFF',
};

ProcessModel _$ProcessModelFromJson(Map<String, dynamic> json) => ProcessModel(
      id: json['id'] as String,
      state: $enumDecode(_$ServicesStateTypeEnumMap, json['state']),
      observations: json['observations'] as String,
    );

Map<String, dynamic> _$ProcessModelToJson(ProcessModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$ServicesStateTypeEnumMap[instance.state]!,
      'observations': instance.observations,
    };

const _$ServicesStateTypeEnumMap = {
  ServicesStateType.inProgress: 'IN_PROGRESS',
  ServicesStateType.approved: 'APPROVED',
  ServicesStateType.withErrors: 'WITH_ERRORS',
  ServicesStateType.cancelled: 'CANCELLED',
  ServicesStateType.inactive: 'INACTIVE',
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
