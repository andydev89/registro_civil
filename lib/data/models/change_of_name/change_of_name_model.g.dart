// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeOfNameModel _$ChangeOfNameModelFromJson(Map<String, dynamic> json) =>
    ChangeOfNameModel(
      changeOfNameType:
          $enumDecode(_$ChangeOfNameTypeEnumMap, json['changeOfNameType']),
      agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
      name1: json['name1'] as String,
      name2: json['name2'] as String,
      resultingName: json['resultingName'] as String,
      observations: json['observations'] as String,
      document: json['document'] as String,
    );

Map<String, dynamic> _$ChangeOfNameModelToJson(ChangeOfNameModel instance) =>
    <String, dynamic>{
      'agency': instance.agency.toJson(),
      'changeOfNameType': _$ChangeOfNameTypeEnumMap[instance.changeOfNameType]!,
      'name1': instance.name1,
      'name2': instance.name2,
      'resultingName': instance.resultingName,
      'observations': instance.observations,
      'document': instance.document,
    };

const _$ChangeOfNameTypeEnumMap = {
  ChangeOfNameType.changeOfProperName: 'changeOfProperName',
  ChangeOfNameType.disruptOrder: 'disruptOrder',
  ChangeOfNameType.deleteOneWhenMoreThanTwoAreRecorded:
      'deleteOneWhenMoreThanTwoAreRecorded',
  ChangeOfNameType.increaseWhenItIsWithASingleName:
      'increaseWhenItIsWithASingleName',
};
