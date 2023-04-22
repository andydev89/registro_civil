// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OffersModel _$OffersModelFromJson(Map<String, dynamic> json) => OffersModel(
      simpleCertificate: TypeServiceModel.fromJson(
          json['simpleCertificate'] as Map<String, dynamic>),
      cant: json['cant'] as int? ?? 1,
      discountConadis: json['discountConadis'] as bool? ?? false,
    );

Map<String, dynamic> _$OffersModelToJson(OffersModel instance) =>
    <String, dynamic>{
      'simpleCertificate': instance.simpleCertificate,
      'cant': instance.cant,
      'discountConadis': instance.discountConadis,
    };
