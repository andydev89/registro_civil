// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangeOfNameModel _$$_ChangeOfNameModelFromJson(Map<String, dynamic> json) =>
    _$_ChangeOfNameModel(
      nui: json['nui'] as String?,
      changeOfNameType: $enumDecode(_$ChangeOfNameTypeEnumMap, json['type']),
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      observations: json['observation'] as String?,
      document: json['document'] as String,
    );

Map<String, dynamic> _$$_ChangeOfNameModelToJson(
        _$_ChangeOfNameModel instance) =>
    <String, dynamic>{
      'agencyId': instance.agencyId,
      'nui': instance.nui,
      'type': _$ChangeOfNameTypeEnumMap[instance.changeOfNameType]!,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'observation': instance.observations,
      'document': instance.document,
    };

const _$ChangeOfNameTypeEnumMap = {
  ChangeOfNameType.changeOfProperName: 'CHANGE_NAMES',
  ChangeOfNameType.disruptOrder: 'CHANGE_ORDER',
  ChangeOfNameType.deleteOneWhenMoreThanTwoAreRecorded: 'DELETE_ONE_NAME',
  ChangeOfNameType.increaseWhenItIsWithASingleName: 'ADD_ONE_NAME',
};

_$_ChangeOfNameListModel _$$_ChangeOfNameListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChangeOfNameListModel(
      id: json['id'] as String,
      nui: json['nui'] as String?,
      changeOfNameType: $enumDecode(_$ChangeOfNameTypeEnumMap, json['type']),
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      state: $enumDecode(_$ProcessStatusEnumMap, json['state']),
      receiptState: json['receiptState'] as String?,
      transactionCode: json['transactionCode'] as String?,
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      documentId: json['documentId'] as String,
    );

Map<String, dynamic> _$$_ChangeOfNameListModelToJson(
        _$_ChangeOfNameListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nui': instance.nui,
      'type': _$ChangeOfNameTypeEnumMap[instance.changeOfNameType]!,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'state': _$ProcessStatusEnumMap[instance.state]!,
      'receiptState': instance.receiptState,
      'transactionCode': instance.transactionCode,
      'createAt': instance.createAt?.toIso8601String(),
      'documentId': instance.documentId,
    };

const _$ProcessStatusEnumMap = {
  ProcessStatus.pending: 'PENDING',
  ProcessStatus.approved: 'APPROVED',
  ProcessStatus.inProgress: 'IN_PROGRESS',
  ProcessStatus.rejected: 'REJECTED',
  ProcessStatus.finalized: 'FINALIZED',
};
