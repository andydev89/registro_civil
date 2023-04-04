// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_service_judgments_notarial_acts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentServiceJudgmentsNotarialActsModel
    _$PaymentServiceJudgmentsNotarialActsModelFromJson(
            Map<String, dynamic> json) =>
        PaymentServiceJudgmentsNotarialActsModel(
          types:
              (json['types'] as List<dynamic>).map((e) => e as bool).toList(),
          province:
              LocationModel.fromJson(json['province'] as Map<String, dynamic>),
          agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PaymentServiceJudgmentsNotarialActsModelToJson(
        PaymentServiceJudgmentsNotarialActsModel instance) =>
    <String, dynamic>{
      'types': instance.types,
      'province': instance.province,
      'agency': instance.agency,
    };
