// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_of_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeOfServiceModel _$TypeOfServiceModelFromJson(Map<String, dynamic> json) =>
    TypeOfServiceModel(
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

Map<String, dynamic> _$TypeOfServiceModelToJson(TypeOfServiceModel instance) =>
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
