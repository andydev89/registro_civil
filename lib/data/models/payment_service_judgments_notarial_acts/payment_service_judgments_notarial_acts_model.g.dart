// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_service_judgments_notarial_acts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentServiceJudgmentsNotarialActsModel
    _$PaymentServiceJudgmentsNotarialActsModelFromJson(
            Map<String, dynamic> json) =>
        PaymentServiceJudgmentsNotarialActsModel(
          service: PaymentofservicesModel.fromJson(
              json['service'] as Map<String, dynamic>),
          province:
              LocationModel.fromJson(json['province'] as Map<String, dynamic>),
          agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PaymentServiceJudgmentsNotarialActsModelToJson(
        PaymentServiceJudgmentsNotarialActsModel instance) =>
    <String, dynamic>{
      'service': instance.service,
      'province': instance.province,
      'agency': instance.agency,
    };
