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
      original: json['original'] as String?,
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
      birthDate: json['fechaNacimiento'] as String? ?? '',
      nationality: json['nacionalidad'] as String?,
      birth: json['birth'] == null
          ? null
          : BirthModel.fromJson(json['birth'] as Map<String, dynamic>),
      fatherNui: json['nuiPadre'] as String?,
      fatherName: json['nombrePadre'] as String?,
      fatherNationality: json['nacionalidadPadre'] as String?,
      motherNui: json['nuiMadre'] as String?,
      motherName: json['nombreMadre'] as String?,
      motherNationality: json['nacionalidadMadre'] as String?,
      marriage: json['marriage'] == null
          ? null
          : MarriageModel.fromJson(json['marriage'] as Map<String, dynamic>),
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
      'fechaNacimiento': instance.birthDate,
      'nacionalidad': instance.nationality,
      'birth': instance.birth?.toJson(),
      'nuiPadre': instance.fatherNui,
      'nombrePadre': instance.fatherName,
      'nacionalidadPadre': instance.fatherNationality,
      'nuiMadre': instance.motherNui,
      'nombreMadre': instance.motherName,
      'nacionalidadMadre': instance.motherNationality,
      'marriage': instance.marriage?.toJson(),
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

_$_BirthModel _$$_BirthModelFromJson(Map<String, dynamic> json) =>
    _$_BirthModel(
      birthPlace: json['lugarNacimiento'] as String?,
      inscriptionPlace: json['lugarInscripcion'] as String?,
      inscriptionYear: json['anioInscripcionNacimiento'] as String?,
      inscriptionDate: json['fechaInscripcionNacimiento'] as String?,
      volume: json['tomo'] as String?,
      page: json['pagina'] as String?,
      record: json['acta'] as String?,
      birthClass: json['clase'] as String?,
    );

Map<String, dynamic> _$$_BirthModelToJson(_$_BirthModel instance) =>
    <String, dynamic>{
      'lugarNacimiento': instance.birthPlace,
      'lugarInscripcion': instance.inscriptionPlace,
      'anioInscripcionNacimiento': instance.inscriptionYear,
      'fechaInscripcionNacimiento': instance.inscriptionDate,
      'tomo': instance.volume,
      'pagina': instance.page,
      'acta': instance.record,
      'clase': instance.birthClass,
    };

_$_MarriageModel _$$_MarriageModelFromJson(Map<String, dynamic> json) =>
    _$_MarriageModel(
      marriagePlace: json['lugarMatrimonio'] as String?,
      marriageDate: json['fechaMatrimonio'] as String?,
      marriageVolume: json['tomoMatrimonio'] as String?,
      marriagePage: json['paginaMatrimonio'] as String?,
      marriageRecord: json['actaMatrimonio'] as String?,
      marriageClass: json['claseMatrimonio'] as String?,
      spouseNui: json['nuiConyuge'] as String?,
      spouseName: json['conyuge'] as String?,
    );

Map<String, dynamic> _$$_MarriageModelToJson(_$_MarriageModel instance) =>
    <String, dynamic>{
      'lugarMatrimonio': instance.marriagePlace,
      'fechaMatrimonio': instance.marriageDate,
      'tomoMatrimonio': instance.marriageVolume,
      'paginaMatrimonio': instance.marriagePage,
      'actaMatrimonio': instance.marriageRecord,
      'claseMatrimonio': instance.marriageClass,
      'nuiConyuge': instance.spouseNui,
      'conyuge': instance.spouseName,
    };
