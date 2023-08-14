// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_service_val_doc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentServiceValidacionDocModel _$PaymentServiceValidacionDocModelFromJson(
        Map<String, dynamic> json) =>
    PaymentServiceValidacionDocModel(
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentServiceValidacionDocModelToJson(
        PaymentServiceValidacionDocModel instance) =>
    <String, dynamic>{
      'province': instance.province,
      'agency': instance.agency,
    };

_$_PaymentValidationDocModel _$$_PaymentValidationDocModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentValidationDocModel(
      user: json['user'] as String,
      agency: json['agency'] as String,
      province: json['province'] as String,
    );

Map<String, dynamic> _$$_PaymentValidationDocModelToJson(
        _$_PaymentValidationDocModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'agency': instance.agency,
      'province': instance.province,
    };
