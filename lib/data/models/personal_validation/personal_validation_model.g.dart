// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_validation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalValidationResponseModel _$PersonalValidationResponseModelFromJson(
        Map<String, dynamic> json) =>
    PersonalValidationResponseModel(
      response: PersonalValidationModel.fromJson(
          json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonalValidationResponseModelToJson(
        PersonalValidationResponseModel instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

PersonalValidationRequestModel _$PersonalValidationRequestModelFromJson(
        Map<String, dynamic> json) =>
    PersonalValidationRequestModel(
      json['nui'] as String,
      (json['modifiedData'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ModifiedDataModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PersonalValidationRequestModelToJson(
        PersonalValidationRequestModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'modifiedData': instance.modifiedData,
    };

ModifiedDataModel _$ModifiedDataModelFromJson(Map<String, dynamic> json) =>
    ModifiedDataModel(
      original: json['original'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$ModifiedDataModelToJson(ModifiedDataModel instance) =>
    <String, dynamic>{
      'original': instance.original,
      'modified': instance.modified,
    };

_$_PersonalValidationModel _$$_PersonalValidationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalValidationModel(
      firstName: json['nombres'] as String? ?? '',
      lastName: json['apellidos'] as String? ?? '',
      gender: $enumDecodeNullable(
          _$PersonalValidationGenderTypeEnumMap, json['sexo']),
      maritalStatusType: $enumDecodeNullable(
          _$PersonalValidationMaritalStatusTypeEnumMap, json['estadoCivil']),
      acceptTerms: json['acceptTerms'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PersonalValidationModelToJson(
        _$_PersonalValidationModel instance) =>
    <String, dynamic>{
      'nombres': instance.firstName,
      'apellidos': instance.lastName,
      'sexo': _$PersonalValidationGenderTypeEnumMap[instance.gender],
      'estadoCivil': _$PersonalValidationMaritalStatusTypeEnumMap[
          instance.maritalStatusType],
      'acceptTerms': instance.acceptTerms,
    };

const _$PersonalValidationGenderTypeEnumMap = {
  PersonalValidationGenderType.man: 'HOMBRE',
  PersonalValidationGenderType.woman: 'MUJER',
  PersonalValidationGenderType.other: 'OTRO',
};

const _$PersonalValidationMaritalStatusTypeEnumMap = {
  PersonalValidationMaritalStatusType.married: 'CASADO',
  PersonalValidationMaritalStatusType.single: 'SOLTERO',
  PersonalValidationMaritalStatusType.divorced: 'DIVORCIADO',
  PersonalValidationMaritalStatusType.widower: 'VIUDO',
  PersonalValidationMaritalStatusType.commonLawMarriage: 'UNION DE HECHO',
};
