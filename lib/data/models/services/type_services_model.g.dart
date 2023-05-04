// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeServiceModel _$TypeServiceModelFromJson(Map<String, dynamic> json) =>
    TypeServiceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      iva: (json['iva'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      state: $enumDecode(_$StatusEnumMap, json['state']),
      publishWeb: json['publishWeb'] as bool,
      publishMovil: json['publishMovil'] as bool,
      path: json['path'] as String?,
      iconoWeb: json['iconoWeb'] as String,
      iconoMovil: json['iconoMovil'] as String,
      type: $enumDecode(_$TypeServiceEnumMap, json['type']),
      schedule: json['schedule'] as bool,
    );

Map<String, dynamic> _$TypeServiceModelToJson(TypeServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'iva': instance.iva,
      'discount': instance.discount,
      'state': _$StatusEnumMap[instance.state]!,
      'publishWeb': instance.publishWeb,
      'publishMovil': instance.publishMovil,
      'path': instance.path,
      'iconoWeb': instance.iconoWeb,
      'iconoMovil': instance.iconoMovil,
      'type': TypeService.toJson(instance.type),
      'schedule': instance.schedule,
    };

const _$StatusEnumMap = {
  Status.active: 'ACTIVE',
  Status.inactive: 'INACTIVE',
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
};
