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
      state: $enumDecode(_$StatusTypeEnumMap, json['state']),
      publishWeb: json['publishWeb'] as bool,
      publishMovil: json['publishMovil'] as bool,
      path: json['path'] as String?,
      iconoWeb: json['iconoWeb'] as String,
      iconoMovil: json['iconoMovil'] as String,
      type: ServiceType.fromJson(json['type'] as String?),
      schedule: json['schedule'] as bool,
    );

Map<String, dynamic> _$TypeServiceModelToJson(TypeServiceModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'discount': instance.discount,
      'iconoMovil': instance.iconoMovil,
      'iconoWeb': instance.iconoWeb,
      'id': instance.id,
      'iva': instance.iva,
      'name': instance.name,
      'path': instance.path,
      'price': instance.price,
      'publishMovil': instance.publishMovil,
      'publishWeb': instance.publishWeb,
      'schedule': instance.schedule,
      'state': _$StatusTypeEnumMap[instance.state]!,
      'type': ServiceType.toJson(instance.type),
    };

const _$StatusTypeEnumMap = {
  StatusType.active: 'ACTIVE',
  StatusType.inactive: 'INACTIVE',
};
