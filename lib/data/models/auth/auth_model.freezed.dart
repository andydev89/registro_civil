// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterCitizenModel _$RegisterCitizenModelFromJson(Map<String, dynamic> json) {
  return _RegisterCitizenModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterCitizenModel {
  String get nui => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterCitizenModelCopyWith<RegisterCitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCitizenModelCopyWith<$Res> {
  factory $RegisterCitizenModelCopyWith(RegisterCitizenModel value,
          $Res Function(RegisterCitizenModel) then) =
      _$RegisterCitizenModelCopyWithImpl<$Res, RegisterCitizenModel>;
  @useResult
  $Res call({String nui, String firstName, String lastName, String fullName});
}

/// @nodoc
class _$RegisterCitizenModelCopyWithImpl<$Res,
        $Val extends RegisterCitizenModel>
    implements $RegisterCitizenModelCopyWith<$Res> {
  _$RegisterCitizenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterCitizenModelCopyWith<$Res>
    implements $RegisterCitizenModelCopyWith<$Res> {
  factory _$$_RegisterCitizenModelCopyWith(_$_RegisterCitizenModel value,
          $Res Function(_$_RegisterCitizenModel) then) =
      __$$_RegisterCitizenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nui, String firstName, String lastName, String fullName});
}

/// @nodoc
class __$$_RegisterCitizenModelCopyWithImpl<$Res>
    extends _$RegisterCitizenModelCopyWithImpl<$Res, _$_RegisterCitizenModel>
    implements _$$_RegisterCitizenModelCopyWith<$Res> {
  __$$_RegisterCitizenModelCopyWithImpl(_$_RegisterCitizenModel _value,
      $Res Function(_$_RegisterCitizenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? fullName = null,
  }) {
    return _then(_$_RegisterCitizenModel(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterCitizenModel extends _RegisterCitizenModel {
  const _$_RegisterCitizenModel(
      {this.nui = '',
      this.firstName = '',
      this.lastName = '',
      this.fullName = ''})
      : super._();

  factory _$_RegisterCitizenModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterCitizenModelFromJson(json);

  @override
  @JsonKey()
  final String nui;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String fullName;

  @override
  String toString() {
    return 'RegisterCitizenModel(nui: $nui, firstName: $firstName, lastName: $lastName, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterCitizenModel &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nui, firstName, lastName, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCitizenModelCopyWith<_$_RegisterCitizenModel> get copyWith =>
      __$$_RegisterCitizenModelCopyWithImpl<_$_RegisterCitizenModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterCitizenModelToJson(
      this,
    );
  }
}

abstract class _RegisterCitizenModel extends RegisterCitizenModel {
  const factory _RegisterCitizenModel(
      {final String nui,
      final String firstName,
      final String lastName,
      final String fullName}) = _$_RegisterCitizenModel;
  const _RegisterCitizenModel._() : super._();

  factory _RegisterCitizenModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterCitizenModel.fromJson;

  @override
  String get nui;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCitizenModelCopyWith<_$_RegisterCitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
