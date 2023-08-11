// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_duplicate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdDuplicateResponseModel _$IdDuplicateResponseModelFromJson(
        Map<String, dynamic> json) =>
    IdDuplicateResponseModel(
      id: json['id'] as String,
      type: json['type'] as String,
      requestOwnerId: json['requestOwnerId'] as String,
      nui: json['nui'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      reasonType: $enumDecode(_$IdDuplicateReasonEnumMap, json['reasonType']),
      createAt: DateTime.parse(json['createAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      printedAt: json['printedAt'],
      deliveredAt: json['deliveredAt'],
      operatorId: json['operatorId'],
      state: $enumDecode(_$IdDuplicateStateEnumMap, json['state']),
      provinceId: LocationModel.provinceFromJson(
          json['provinceId'] as Map<String, dynamic>),
      agency:
          LocationModel.agencyFromJson(json['agency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IdDuplicateResponseModelToJson(
        IdDuplicateResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'requestOwnerId': instance.requestOwnerId,
      'nui': instance.nui,
      'birthDate': instance.birthDate.toIso8601String(),
      'reasonType': _$IdDuplicateReasonEnumMap[instance.reasonType]!,
      'createAt': instance.createAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'printedAt': instance.printedAt,
      'deliveredAt': instance.deliveredAt,
      'operatorId': instance.operatorId,
      'state': _$IdDuplicateStateEnumMap[instance.state]!,
      'provinceId': instance.provinceId?.toJson(),
      'agency': instance.agency?.toJson(),
    };

const _$IdDuplicateReasonEnumMap = {
  IdDuplicateReason.loss: 'LOSS',
  IdDuplicateReason.heist: 'HEIST',
  IdDuplicateReason.spoilage: 'SPOILAGE',
};

const _$IdDuplicateStateEnumMap = {
  IdDuplicateState.pending: 'PENDING',
  IdDuplicateState.suriError: 'SURIERROR',
  IdDuplicateState.inProgress: 'IN_PROGRESS',
  IdDuplicateState.printed: 'PRINTED',
  IdDuplicateState.delivered: 'DELIVERED',
  IdDuplicateState.destroyed: 'DESTROYED',
};
