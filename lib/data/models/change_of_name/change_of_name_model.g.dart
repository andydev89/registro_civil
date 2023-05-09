// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeOfNameModel _$ChangeOfNameModelFromJson(Map<String, dynamic> json) =>
    ChangeOfNameModel(
      changeOfNametype: json['changeOfNametype'] as String,
      agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
      name1: json['name1'] as String,
      name2: json['name2'] as String,
      resultingName: json['resultingName'] as String,
      document: json['document'] as String,
      observations: json['observations'] as String,
    );

Map<String, dynamic> _$ChangeOfNameModelToJson(ChangeOfNameModel instance) =>
    <String, dynamic>{
      'agency': instance.agency.toJson(),
      'changeOfNametype': instance.changeOfNametype,
      'document': instance.document,
      'name1': instance.name1,
      'name2': instance.name2,
      'observations': instance.observations,
      'resultingName': instance.resultingName,
    };
