// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_validation_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalValidationListModel _$$_PersonalValidationListModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalValidationListModel(
      id: json['id'] as String?,
      nut: json['nut'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      state: $enumDecodeNullable(
              _$PersonalValidationStateEnumMap, json['state']) ??
          PersonalValidationState.pending,
      citizen: json['citizen'] as String?,
      user: json['user'] == null
          ? null
          : UserDataModel.fromJson(json['user'] as Map<String, dynamic>),
      modifiedData: (json['modifiedData'] as List<dynamic>)
          .map((e) => ModifiedDataListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersonalValidationListModelToJson(
        _$_PersonalValidationListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nut': instance.nut,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'state': _$PersonalValidationStateEnumMap[instance.state]!,
      'citizen': instance.citizen,
      'user': instance.user?.toJson(),
      'modifiedData': instance.modifiedData.map((e) => e.toJson()).toList(),
    };

const _$PersonalValidationStateEnumMap = {
  PersonalValidationState.requesting: 'REQUESTING',
  PersonalValidationState.approved: 'APPROVED',
  PersonalValidationState.cancelled: 'CANCELLED',
  PersonalValidationState.pending: 'PENDING',
};

_$_UserDataModel _$$_UserDataModelFromJson(Map<String, dynamic> json) =>
    _$_UserDataModel(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      identification: json['identification'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserDataModelToJson(_$_UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'identification': instance.identification,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_ModifiedDataListModel _$$_ModifiedDataListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ModifiedDataListModel(
      attribute: json['attribute'] as String?,
      original: json['original'] as String?,
      modified: json['modified'] as String?,
    );

Map<String, dynamic> _$$_ModifiedDataListModelToJson(
        _$_ModifiedDataListModel instance) =>
    <String, dynamic>{
      'attribute': instance.attribute,
      'original': instance.original,
      'modified': instance.modified,
    };
