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
      'discount': instance.discount,
      'iconoMovil': instance.iconoMovil,
      'iconoWeb': instance.iconoWeb,
      'id': instance.id,
      'iva': instance.iva,
      'name': instance.name,
      'price': instance.price,
      'publishMovil': instance.publishMovil,
      'publishWeb': instance.publishWeb,
      'state': instance.state,
      'typeService': instance.typeService,
    };
