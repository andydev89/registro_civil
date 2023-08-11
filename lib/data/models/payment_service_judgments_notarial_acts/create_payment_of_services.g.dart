// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_of_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePaymentofservicesModel _$$_CreatePaymentofservicesModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePaymentofservicesModel(
      user: json['user'] as String,
      services: (json['services'] as List<dynamic>)
          .map(
              (e) => PaymentofservicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      agency: json['agency'] as String,
      province: json['province'] as String,
    );

Map<String, dynamic> _$$_CreatePaymentofservicesModelToJson(
        _$_CreatePaymentofservicesModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'services': instance.services,
      'agency': instance.agency,
      'province': instance.province,
    };
