// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_type_of_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleTypeOfServiceModel _$ScheduleTypeOfServiceModelFromJson(
        Map<String, dynamic> json) =>
    ScheduleTypeOfServiceModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      iva: (json['iva'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      state: json['state'] as String,
      publishWeb: json['publishWeb'] as bool,
      publishMovil: json['publishMovil'] as bool,
      iconoWeb: json['iconoWeb'] as String?,
      iconoMovil: json['iconoMovil'] as String?,
      typeService: json['typeService'] as String,
    );

Map<String, dynamic> _$ScheduleTypeOfServiceModelToJson(
        ScheduleTypeOfServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'iva': instance.iva,
      'discount': instance.discount,
      'state': instance.state,
      'publishWeb': instance.publishWeb,
      'publishMovil': instance.publishMovil,
      'iconoWeb': instance.iconoWeb,
      'iconoMovil': instance.iconoMovil,
      'typeService': instance.typeService,
    };
