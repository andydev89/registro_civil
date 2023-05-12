// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentResponse _$DocumentResponseFromJson(Map<String, dynamic> json) =>
    DocumentResponse(
      id: json['id'] as String,
      documentName: json['documentName'] as String,
      documentNote: json['documentNote'] as String,
      required: json['required'] as bool,
    );

Map<String, dynamic> _$DocumentResponseToJson(DocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentName': instance.documentName,
      'documentNote': instance.documentNote,
      'required': instance.required,
    };

ResponseMarriageModel _$ResponseMarriageModelFromJson(
        Map<String, dynamic> json) =>
    ResponseMarriageModel(
      id: json['id'] as String,
      requestOwnerNui: json['requestOwnerNui'] as String,
      requestOwnerName: json['requestOwnerName'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      operatorName: json['operatorName'] as String?,
      interviewDate: json['interviewDate'] as String?,
      lastUpdateDate: json['lastUpdateDate'] as String,
      amountOfDays: json['amountOfDays'] as int,
      zoneName: json['zoneName'] as String?,
      provinceName: json['provinceName'] as String,
      cantonName: json['cantonName'] as String,
      agencyName: json['agencyName'] as String,
      state: $enumDecode(_$StateMarriageEnumMap, json['state']),
    );

Map<String, dynamic> _$ResponseMarriageModelToJson(
        ResponseMarriageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestOwnerNui': instance.requestOwnerNui,
      'requestOwnerName': instance.requestOwnerName,
      'creationDate': instance.creationDate.toIso8601String(),
      'operatorName': instance.operatorName,
      'interviewDate': instance.interviewDate,
      'lastUpdateDate': instance.lastUpdateDate,
      'amountOfDays': instance.amountOfDays,
      'zoneName': instance.zoneName,
      'provinceName': instance.provinceName,
      'cantonName': instance.cantonName,
      'agencyName': instance.agencyName,
      'state': _$StateMarriageEnumMap[instance.state]!,
    };

const _$StateMarriageEnumMap = {
  StateMarriage.pending: 'PENDING',
  StateMarriage.inProgress: 'IN_PROGRESS',
  StateMarriage.approved: 'APPROVED',
  StateMarriage.rejected: 'REJECTED',
  StateMarriage.finalized: 'FINALIZED',
};
