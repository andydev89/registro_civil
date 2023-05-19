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
