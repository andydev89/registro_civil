// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypeServiceModel _$$_TypeServiceModelFromJson(Map<String, dynamic> json) =>
    _$_TypeServiceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      iva: (json['iva'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      state: $enumDecode(_$StatusTypeEnumMap, json['state']),
      publishWeb: json['publishWeb'] as bool,
      publishMovil: json['publishMovil'] as bool,
      path: json['path'] as String?,
      typeEnum: $enumDecode(_$TypeEnumTypeEnumMap, json['typeEnum']),
      idIconoWeb: json['idIconoWeb'] as String,
      idIconoMovil: json['idIconoMovil'] as String,
      type: $enumDecode(_$ServiceTypeEnumMap, json['type'],
          unknownValue: ServiceType.none),
      schedule: json['schedule'] as bool,
    );

Map<String, dynamic> _$$_TypeServiceModelToJson(_$_TypeServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'iva': instance.iva,
      'discount': instance.discount,
      'state': _$StatusTypeEnumMap[instance.state]!,
      'publishWeb': instance.publishWeb,
      'publishMovil': instance.publishMovil,
      'path': instance.path,
      'typeEnum': _$TypeEnumTypeEnumMap[instance.typeEnum]!,
      'idIconoWeb': instance.idIconoWeb,
      'idIconoMovil': instance.idIconoMovil,
      'type': _$ServiceTypeEnumMap[instance.type]!,
      'schedule': instance.schedule,
    };

const _$StatusTypeEnumMap = {
  StatusType.active: 'ACTIVE',
  StatusType.inactive: 'INACTIVE',
};

const _$TypeEnumTypeEnumMap = {
  TypeEnumType.procedure: 'PROCEDURE',
  TypeEnumType.service: 'SERVICE',
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
  ServiceType.idDuplicate: 'FORMALITY_DUPLICATE_IDENTITY',
  ServiceType.marriageCelebration: 'FORMALITY_MARRIAGE_CELEBRATION',
  ServiceType.electronicSignature: 'SERVICE_ELECTRONIC_SIGNATURE',
  ServiceType.cedulacionExtPriVez: 'FORMALITY_FIRST_FOREIGN_IDENTITY',
  ServiceType.personalValidation: 'SERVICE_PERSONAL_VALIDATION',
  ServiceType.birthAbroad: 'FORMALITY_BIRTH_OUTSIDE_REGISTER',
  ServiceType.documentValidation: 'SERVICE_DOCUMENT_VALIDATION',
};
