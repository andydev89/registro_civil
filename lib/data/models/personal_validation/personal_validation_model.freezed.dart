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
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          bool? acceptTerms});
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
      acceptTerms: freezed == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
      @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
          bool? acceptTerms});
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
  @JsonKey()
  @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
  final bool? acceptTerms;

  @override
  String toString() {
    return 'PersonalValidationModel(firstName: $firstName, lastName: $lastName, gender: $gender, maritalStatusType: $maritalStatusType, acceptTerms: $acceptTerms)';
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
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, gender, maritalStatusType, acceptTerms);

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
  @FormControlAnnotation<bool>(validators: [requiredTrueValidator])
  bool? get acceptTerms;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalValidationModelCopyWith<_$_PersonalValidationModel>
      get copyWith => throw _privateConstructorUsedError;
}
