// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_duplicate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdDuplicateModel _$IdDuplicateModelFromJson(Map<String, dynamic> json) =>
    IdDuplicateModel(
      type:
          $enumDecodeNullable(_$IdDuplicateProcedureTypeEnumMap, json['type']),
      requestOwner: json['requestOwner'] as String?,
      nui: json['nui'] as String?,
      birthdate: json['birthdate'] as String?,
      reasonType:
          $enumDecodeNullable(_$IdDuplicateReasonEnumMap, json['reasonType']),
      agency:
          LocationModel.agencyFromJson(json['agency'] as Map<String, dynamic>),
      provinceId: LocationModel.provinceFromJson(
          json['provinceId'] as Map<String, dynamic>),
      paymentType:
          $enumDecodeNullable(_$PaymentMethodTypeEnumMap, json['paymentType']),
    );

Map<String, dynamic> _$IdDuplicateModelToJson(IdDuplicateModel instance) =>
    <String, dynamic>{
      'type': _$IdDuplicateProcedureTypeEnumMap[instance.type],
      'nui': instance.nui,
      'birthdate': instance.birthdate,
      'reasonType': _$IdDuplicateReasonEnumMap[instance.reasonType],
      'agency': LocationModel.locationToJsonNull(instance.agency),
      'provinceId': LocationModel.locationToJsonNull(instance.provinceId),
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType],
    };

const _$IdDuplicateProcedureTypeEnumMap = {
  IdDuplicateProcedureType.personal: 'PERSONAL',
  IdDuplicateProcedureType.child: 'CHILD',
};

const _$IdDuplicateReasonEnumMap = {
  IdDuplicateReason.loss: 'LOSS',
  IdDuplicateReason.heist: 'HEIST',
  IdDuplicateReason.spoilage: 'SPOILAGE',
};

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACETOPAY',
};

_$_ProcedureTypeForm _$$_ProcedureTypeFormFromJson(Map<String, dynamic> json) =>
    _$_ProcedureTypeForm(
      idDuplicateProcedureType:
          $enumDecode(_$IdDuplicateProcedureTypeEnumMap, json['procedureType']),
      nui: json['nui'] as String? ?? '',
      birthDate: DateTime.parse(json['birthDate'] as String),
    );

Map<String, dynamic> _$$_ProcedureTypeFormToJson(
        _$_ProcedureTypeForm instance) =>
    <String, dynamic>{
      'procedureType':
          _$IdDuplicateProcedureTypeEnumMap[instance.idDuplicateProcedureType]!,
      'nui': instance.nui,
      'birthDate': instance.birthDate.toIso8601String(),
    };

_$_ProcedureReasonForm _$$_ProcedureReasonFormFromJson(
        Map<String, dynamic> json) =>
    _$_ProcedureReasonForm(
      reason: $enumDecode(_$IdDuplicateReasonEnumMap, json['reason']),
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
      acceptTerms: json['acceptTerms'] as bool,
    );

Map<String, dynamic> _$$_ProcedureReasonFormToJson(
        _$_ProcedureReasonForm instance) =>
    <String, dynamic>{
      'reason': _$IdDuplicateReasonEnumMap[instance.reason]!,
      'province': LocationModel.locationToJson(instance.province),
      'agency': instance.agency.toJson(),
      'acceptTerms': instance.acceptTerms,
    };
