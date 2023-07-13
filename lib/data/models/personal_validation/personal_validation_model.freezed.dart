// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_validation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalValidationModel _$PersonalValidationModelFromJson(
    Map<String, dynamic> json) {
  return _PersonalValidationModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalValidationModel {
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombres')
  String? get firstName => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'apellidos')
  String? get lastName => throw _privateConstructorUsedError;
  @FormControlAnnotation<PersonalValidationGenderType>()
  @JsonKey(name: 'sexo')
  PersonalValidationGenderType? get gender =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation<PersonalValidationMaritalStatusType>()
  @JsonKey(name: 'estadoCivil')
  PersonalValidationMaritalStatusType? get maritalStatusType =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaNacimiento')
  String? get birthDate => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidad')
  String? get nationality => throw _privateConstructorUsedError;
  @FormControlAnnotation<BirthModel>()
  BirthModel? get birth => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiPadre')
  String? get fatherNui => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombrePadre')
  String? get fatherName => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadPadre')
  String? get fatherNationality => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiMadre')
  String? get motherNui => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombreMadre')
  String? get motherName => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadMadre')
  String? get motherNationality => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
  bool? get acceptTerms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalValidationModelCopyWith<PersonalValidationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalValidationModelCopyWith<$Res> {
  factory $PersonalValidationModelCopyWith(PersonalValidationModel value,
          $Res Function(PersonalValidationModel) then) =
      _$PersonalValidationModelCopyWithImpl<$Res, PersonalValidationModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'nombres')
          String? firstName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'apellidos')
          String? lastName,
      @FormControlAnnotation<PersonalValidationGenderType>()
      @JsonKey(name: 'sexo')
          PersonalValidationGenderType? gender,
      @FormControlAnnotation<PersonalValidationMaritalStatusType>()
      @JsonKey(name: 'estadoCivil')
          PersonalValidationMaritalStatusType? maritalStatusType,
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
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          bool? acceptTerms});

  $BirthModelCopyWith<$Res>? get birth;
}

/// @nodoc
class _$PersonalValidationModelCopyWithImpl<$Res,
        $Val extends PersonalValidationModel>
    implements $PersonalValidationModelCopyWith<$Res> {
  _$PersonalValidationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? maritalStatusType = freezed,
    Object? birthDate = freezed,
    Object? nationality = freezed,
    Object? birth = freezed,
    Object? fatherNui = freezed,
    Object? fatherName = freezed,
    Object? fatherNationality = freezed,
    Object? motherNui = freezed,
    Object? motherName = freezed,
    Object? motherNationality = freezed,
    Object? acceptTerms = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PersonalValidationGenderType?,
      maritalStatusType: freezed == maritalStatusType
          ? _value.maritalStatusType
          : maritalStatusType // ignore: cast_nullable_to_non_nullable
              as PersonalValidationMaritalStatusType?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as BirthModel?,
      fatherNui: freezed == fatherNui
          ? _value.fatherNui
          : fatherNui // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherNationality: freezed == fatherNationality
          ? _value.fatherNationality
          : fatherNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      motherNui: freezed == motherNui
          ? _value.motherNui
          : motherNui // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: freezed == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherNationality: freezed == motherNationality
          ? _value.motherNationality
          : motherNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BirthModelCopyWith<$Res>? get birth {
    if (_value.birth == null) {
      return null;
    }

    return $BirthModelCopyWith<$Res>(_value.birth!, (value) {
      return _then(_value.copyWith(birth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonalValidationModelCopyWith<$Res>
    implements $PersonalValidationModelCopyWith<$Res> {
  factory _$$_PersonalValidationModelCopyWith(_$_PersonalValidationModel value,
          $Res Function(_$_PersonalValidationModel) then) =
      __$$_PersonalValidationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'nombres')
          String? firstName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'apellidos')
          String? lastName,
      @FormControlAnnotation<PersonalValidationGenderType>()
      @JsonKey(name: 'sexo')
          PersonalValidationGenderType? gender,
      @FormControlAnnotation<PersonalValidationMaritalStatusType>()
      @JsonKey(name: 'estadoCivil')
          PersonalValidationMaritalStatusType? maritalStatusType,
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
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          bool? acceptTerms});

  @override
  $BirthModelCopyWith<$Res>? get birth;
}

/// @nodoc
class __$$_PersonalValidationModelCopyWithImpl<$Res>
    extends _$PersonalValidationModelCopyWithImpl<$Res,
        _$_PersonalValidationModel>
    implements _$$_PersonalValidationModelCopyWith<$Res> {
  __$$_PersonalValidationModelCopyWithImpl(_$_PersonalValidationModel _value,
      $Res Function(_$_PersonalValidationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? maritalStatusType = freezed,
    Object? birthDate = freezed,
    Object? nationality = freezed,
    Object? birth = freezed,
    Object? fatherNui = freezed,
    Object? fatherName = freezed,
    Object? fatherNationality = freezed,
    Object? motherNui = freezed,
    Object? motherName = freezed,
    Object? motherNationality = freezed,
    Object? acceptTerms = freezed,
  }) {
    return _then(_$_PersonalValidationModel(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as PersonalValidationGenderType?,
      maritalStatusType: freezed == maritalStatusType
          ? _value.maritalStatusType
          : maritalStatusType // ignore: cast_nullable_to_non_nullable
              as PersonalValidationMaritalStatusType?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      birth: freezed == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as BirthModel?,
      fatherNui: freezed == fatherNui
          ? _value.fatherNui
          : fatherNui // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherNationality: freezed == fatherNationality
          ? _value.fatherNationality
          : fatherNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      motherNui: freezed == motherNui
          ? _value.motherNui
          : motherNui // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: freezed == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherNationality: freezed == motherNationality
          ? _value.motherNationality
          : motherNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PersonalValidationModel extends _PersonalValidationModel {
  const _$_PersonalValidationModel(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'nombres')
          this.firstName = '',
      @FormControlAnnotation<String>()
      @JsonKey(name: 'apellidos')
          this.lastName = '',
      @FormControlAnnotation<PersonalValidationGenderType>()
      @JsonKey(name: 'sexo')
          this.gender,
      @FormControlAnnotation<PersonalValidationMaritalStatusType>()
      @JsonKey(name: 'estadoCivil')
          this.maritalStatusType,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'fechaNacimiento')
          this.birthDate = '',
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidad')
          this.nationality,
      @FormControlAnnotation<BirthModel>()
          this.birth,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nuiPadre')
          this.fatherNui,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nombrePadre')
          this.fatherName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidadPadre')
          this.fatherNationality,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nuiMadre')
          this.motherNui,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nombreMadre')
          this.motherName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidadMadre')
          this.motherNationality,
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          this.acceptTerms = false})
      : super._();

  factory _$_PersonalValidationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonalValidationModelFromJson(json);

  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombres')
  final String? firstName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'apellidos')
  final String? lastName;
  @override
  @FormControlAnnotation<PersonalValidationGenderType>()
  @JsonKey(name: 'sexo')
  final PersonalValidationGenderType? gender;
  @override
  @FormControlAnnotation<PersonalValidationMaritalStatusType>()
  @JsonKey(name: 'estadoCivil')
  final PersonalValidationMaritalStatusType? maritalStatusType;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaNacimiento')
  final String? birthDate;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidad')
  final String? nationality;
  @override
  @FormControlAnnotation<BirthModel>()
  final BirthModel? birth;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiPadre')
  final String? fatherNui;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombrePadre')
  final String? fatherName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadPadre')
  final String? fatherNationality;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiMadre')
  final String? motherNui;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombreMadre')
  final String? motherName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadMadre')
  final String? motherNationality;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
  final bool? acceptTerms;

  @override
  String toString() {
    return 'PersonalValidationModel(firstName: $firstName, lastName: $lastName, gender: $gender, maritalStatusType: $maritalStatusType, birthDate: $birthDate, nationality: $nationality, birth: $birth, fatherNui: $fatherNui, fatherName: $fatherName, fatherNationality: $fatherNationality, motherNui: $motherNui, motherName: $motherName, motherNationality: $motherNationality, acceptTerms: $acceptTerms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalValidationModel &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatusType, maritalStatusType) ||
                other.maritalStatusType == maritalStatusType) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.fatherNui, fatherNui) ||
                other.fatherNui == fatherNui) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.fatherNationality, fatherNationality) ||
                other.fatherNationality == fatherNationality) &&
            (identical(other.motherNui, motherNui) ||
                other.motherNui == motherNui) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            (identical(other.motherNationality, motherNationality) ||
                other.motherNationality == motherNationality) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      gender,
      maritalStatusType,
      birthDate,
      nationality,
      birth,
      fatherNui,
      fatherName,
      fatherNationality,
      motherNui,
      motherName,
      motherNationality,
      acceptTerms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalValidationModelCopyWith<_$_PersonalValidationModel>
      get copyWith =>
          __$$_PersonalValidationModelCopyWithImpl<_$_PersonalValidationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonalValidationModelToJson(
      this,
    );
  }
}

abstract class _PersonalValidationModel extends PersonalValidationModel {
  const factory _PersonalValidationModel(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'nombres')
          final String? firstName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'apellidos')
          final String? lastName,
      @FormControlAnnotation<PersonalValidationGenderType>()
      @JsonKey(name: 'sexo')
          final PersonalValidationGenderType? gender,
      @FormControlAnnotation<PersonalValidationMaritalStatusType>()
      @JsonKey(name: 'estadoCivil')
          final PersonalValidationMaritalStatusType? maritalStatusType,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'fechaNacimiento')
          final String? birthDate,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidad')
          final String? nationality,
      @FormControlAnnotation<BirthModel>()
          final BirthModel? birth,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nuiPadre')
          final String? fatherNui,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nombrePadre')
          final String? fatherName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidadPadre')
          final String? fatherNationality,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nuiMadre')
          final String? motherNui,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nombreMadre')
          final String? motherName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'nacionalidadMadre')
          final String? motherNationality,
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          final bool? acceptTerms}) = _$_PersonalValidationModel;
  const _PersonalValidationModel._() : super._();

  factory _PersonalValidationModel.fromJson(Map<String, dynamic> json) =
      _$_PersonalValidationModel.fromJson;

  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombres')
  String? get firstName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'apellidos')
  String? get lastName;
  @override
  @FormControlAnnotation<PersonalValidationGenderType>()
  @JsonKey(name: 'sexo')
  PersonalValidationGenderType? get gender;
  @override
  @FormControlAnnotation<PersonalValidationMaritalStatusType>()
  @JsonKey(name: 'estadoCivil')
  PersonalValidationMaritalStatusType? get maritalStatusType;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaNacimiento')
  String? get birthDate;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidad')
  String? get nationality;
  @override
  @FormControlAnnotation<BirthModel>()
  BirthModel? get birth;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiPadre')
  String? get fatherNui;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombrePadre')
  String? get fatherName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadPadre')
  String? get fatherNationality;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nuiMadre')
  String? get motherNui;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nombreMadre')
  String? get motherName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'nacionalidadMadre')
  String? get motherNationality;
  @override
  @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
  bool? get acceptTerms;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalValidationModelCopyWith<_$_PersonalValidationModel>
      get copyWith => throw _privateConstructorUsedError;
}

BirthModel _$BirthModelFromJson(Map<String, dynamic> json) {
  return _BirthModel.fromJson(json);
}

/// @nodoc
mixin _$BirthModel {
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarNacimiento')
  String? get birthPlace => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarInscripcion')
  String? get inscriptionPlace => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'anioInscripcionNacimiento')
  String? get inscriptionYear => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaInscripcionNacimiento')
  String? get inscriptionDate => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'tomo')
  String? get volume => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'pagina')
  String? get page => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'acta')
  String? get record => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'clase')
  String? get birthClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthModelCopyWith<BirthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthModelCopyWith<$Res> {
  factory $BirthModelCopyWith(
          BirthModel value, $Res Function(BirthModel) then) =
      _$BirthModelCopyWithImpl<$Res, BirthModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
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
          String? birthClass});
}

/// @nodoc
class _$BirthModelCopyWithImpl<$Res, $Val extends BirthModel>
    implements $BirthModelCopyWith<$Res> {
  _$BirthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthPlace = freezed,
    Object? inscriptionPlace = freezed,
    Object? inscriptionYear = freezed,
    Object? inscriptionDate = freezed,
    Object? volume = freezed,
    Object? page = freezed,
    Object? record = freezed,
    Object? birthClass = freezed,
  }) {
    return _then(_value.copyWith(
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionPlace: freezed == inscriptionPlace
          ? _value.inscriptionPlace
          : inscriptionPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionYear: freezed == inscriptionYear
          ? _value.inscriptionYear
          : inscriptionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionDate: freezed == inscriptionDate
          ? _value.inscriptionDate
          : inscriptionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String?,
      birthClass: freezed == birthClass
          ? _value.birthClass
          : birthClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BirthModelCopyWith<$Res>
    implements $BirthModelCopyWith<$Res> {
  factory _$$_BirthModelCopyWith(
          _$_BirthModel value, $Res Function(_$_BirthModel) then) =
      __$$_BirthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
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
          String? birthClass});
}

/// @nodoc
class __$$_BirthModelCopyWithImpl<$Res>
    extends _$BirthModelCopyWithImpl<$Res, _$_BirthModel>
    implements _$$_BirthModelCopyWith<$Res> {
  __$$_BirthModelCopyWithImpl(
      _$_BirthModel _value, $Res Function(_$_BirthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthPlace = freezed,
    Object? inscriptionPlace = freezed,
    Object? inscriptionYear = freezed,
    Object? inscriptionDate = freezed,
    Object? volume = freezed,
    Object? page = freezed,
    Object? record = freezed,
    Object? birthClass = freezed,
  }) {
    return _then(_$_BirthModel(
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionPlace: freezed == inscriptionPlace
          ? _value.inscriptionPlace
          : inscriptionPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionYear: freezed == inscriptionYear
          ? _value.inscriptionYear
          : inscriptionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      inscriptionDate: freezed == inscriptionDate
          ? _value.inscriptionDate
          : inscriptionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as String?,
      birthClass: freezed == birthClass
          ? _value.birthClass
          : birthClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BirthModel extends _BirthModel {
  const _$_BirthModel(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'lugarNacimiento')
          this.birthPlace,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'lugarInscripcion')
          this.inscriptionPlace,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'anioInscripcionNacimiento')
          this.inscriptionYear,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'fechaInscripcionNacimiento')
          this.inscriptionDate,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'tomo')
          this.volume,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'pagina')
          this.page,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'acta')
          this.record,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'clase')
          this.birthClass})
      : super._();

  factory _$_BirthModel.fromJson(Map<String, dynamic> json) =>
      _$$_BirthModelFromJson(json);

  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarNacimiento')
  final String? birthPlace;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarInscripcion')
  final String? inscriptionPlace;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'anioInscripcionNacimiento')
  final String? inscriptionYear;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaInscripcionNacimiento')
  final String? inscriptionDate;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'tomo')
  final String? volume;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'pagina')
  final String? page;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'acta')
  final String? record;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'clase')
  final String? birthClass;

  @override
  String toString() {
    return 'BirthModel(birthPlace: $birthPlace, inscriptionPlace: $inscriptionPlace, inscriptionYear: $inscriptionYear, inscriptionDate: $inscriptionDate, volume: $volume, page: $page, record: $record, birthClass: $birthClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthModel &&
            (identical(other.birthPlace, birthPlace) ||
                other.birthPlace == birthPlace) &&
            (identical(other.inscriptionPlace, inscriptionPlace) ||
                other.inscriptionPlace == inscriptionPlace) &&
            (identical(other.inscriptionYear, inscriptionYear) ||
                other.inscriptionYear == inscriptionYear) &&
            (identical(other.inscriptionDate, inscriptionDate) ||
                other.inscriptionDate == inscriptionDate) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.birthClass, birthClass) ||
                other.birthClass == birthClass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, birthPlace, inscriptionPlace,
      inscriptionYear, inscriptionDate, volume, page, record, birthClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthModelCopyWith<_$_BirthModel> get copyWith =>
      __$$_BirthModelCopyWithImpl<_$_BirthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthModelToJson(
      this,
    );
  }
}

abstract class _BirthModel extends BirthModel {
  const factory _BirthModel(
      {@FormControlAnnotation<String>()
      @JsonKey(name: 'lugarNacimiento')
          final String? birthPlace,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'lugarInscripcion')
          final String? inscriptionPlace,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'anioInscripcionNacimiento')
          final String? inscriptionYear,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'fechaInscripcionNacimiento')
          final String? inscriptionDate,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'tomo')
          final String? volume,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'pagina')
          final String? page,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'acta')
          final String? record,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'clase')
          final String? birthClass}) = _$_BirthModel;
  const _BirthModel._() : super._();

  factory _BirthModel.fromJson(Map<String, dynamic> json) =
      _$_BirthModel.fromJson;

  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarNacimiento')
  String? get birthPlace;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'lugarInscripcion')
  String? get inscriptionPlace;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'anioInscripcionNacimiento')
  String? get inscriptionYear;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'fechaInscripcionNacimiento')
  String? get inscriptionDate;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'tomo')
  String? get volume;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'pagina')
  String? get page;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'acta')
  String? get record;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'clase')
  String? get birthClass;
  @override
  @JsonKey(ignore: true)
  _$$_BirthModelCopyWith<_$_BirthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
