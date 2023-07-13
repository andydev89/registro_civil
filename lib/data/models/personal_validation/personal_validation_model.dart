// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'personal_validation_model.g.dart';

part 'personal_validation_model.gform.dart';

part 'personal_validation_model.freezed.dart';

@JsonSerializable()
class PersonalValidationResponseModel {
  PersonalValidationResponseModel({required this.response});

  factory PersonalValidationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalValidationResponseModelFromJson(json);

  final PersonalValidationModel response;

  Map<String, dynamic> toJson() =>
      _$PersonalValidationResponseModelToJson(this);
}

@ReactiveFormAnnotation()
@Freezed()
class PersonalValidationModel with _$PersonalValidationModel {
  @JsonSerializable(explicitToJson: true)
  const factory PersonalValidationModel({
    @Default('')
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nombres')
        String? firstName,
    @Default('')
    @FormControlAnnotation<String>()
    @JsonKey(name: 'apellidos')
        String? lastName,
    @FormControlAnnotation<PersonalValidationGenderType>()
    @JsonKey(name: 'sexo')
        PersonalValidationGenderType? gender,
    @FormControlAnnotation<PersonalValidationMaritalStatusType>()
    @JsonKey(name: 'estadoCivil')
        PersonalValidationMaritalStatusType? maritalStatusType,
    @Default('')
    @FormControlAnnotation<String>()
    @JsonKey(name: 'fechaNacimiento')
        String? birthDate,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nacionalidad')
        String? nationality,
    @FormControlAnnotation<BirthModel>()
        BirthModel? birth,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nuiPadre')
        String? fatherNui,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nombrePadre')
        String? fatherName,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nacionalidadPadre')
        String? fatherNationality,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nuiMadre')
        String? motherNui,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nombreMadre')
        String? motherName,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nacionalidadMadre')
        String? motherNationality,
    @FormControlAnnotation<MarriageModel>()
        MarriageModel? marriage,
    @Default(false)
    @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
        bool? acceptTerms,
  }) = _PersonalValidationModel;

  const PersonalValidationModel._();

  factory PersonalValidationModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalValidationModelFromJson(json);
}

@ReactiveFormAnnotation()
@freezed
class BirthModel with _$BirthModel {
  @JsonSerializable(explicitToJson: true)
  const factory BirthModel({
    @FormControlAnnotation<String>()
    @JsonKey(name: 'lugarNacimiento')
        String? birthPlace,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'lugarInscripcion')
        String? inscriptionPlace,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'anioInscripcionNacimiento')
        String? inscriptionYear,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'fechaInscripcionNacimiento')
        String? inscriptionDate,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'tomo')
        String? volume,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'pagina')
        String? page,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'acta')
        String? record,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'clase')
        String? birthClass,
  }) = _BirthModel;

  const BirthModel._();

  factory BirthModel.fromJson(Map<String, dynamic> json) =>
      _$BirthModelFromJson(json);
}

@ReactiveFormAnnotation()
@freezed
class MarriageModel with _$MarriageModel {
  @JsonSerializable(explicitToJson: true)
  const factory MarriageModel({
    @FormControlAnnotation<String>()
    @JsonKey(name: 'lugarMatrimonio')
        String? marriagePlace,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'fechaMatrimonio')
        String? marriageDate,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'tomoMatrimonio')
        String? marriageVolume,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'paginaMatrimonio')
        String? marriagePage,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'actaMatrimonio')
        String? marriageRecord,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'claseMatrimonio')
        String? marriageClass,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'nuiConyuge')
        String? spouseNui,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'conyuge')
        String? spouseName,
  }) = _MarriageModel;

  const MarriageModel._();

  factory MarriageModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageModelFromJson(json);
}

@JsonSerializable()
class PersonalValidationRequestModel {
  PersonalValidationRequestModel(this.nui, this.modifiedData);

  factory PersonalValidationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalValidationRequestModelFromJson(json);

  String nui;
  Map<String, ModifiedDataModel> modifiedData;

  Map<String, dynamic> toJson() => _$PersonalValidationRequestModelToJson(this);
}

@JsonSerializable()
class ModifiedDataModel {
  ModifiedDataModel({required this.original, required this.modified});

  factory ModifiedDataModel.fromJson(Map<String, dynamic> json) =>
      _$ModifiedDataModelFromJson(json);

  final String? original;
  final String modified;

  Map<String, dynamic> toJson() => _$ModifiedDataModelToJson(this);
}
