// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cedulacion_ext_primerav_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CedulacionExtpVModel _$CedulacionExtpVModelFromJson(Map<String, dynamic> json) {
  return _CedulacionExtpVModel.fromJson(json);
}

/// @nodoc
mixin _$CedulacionExtpVModel {
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'visa')
  String get visa => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CedulacionExtpVModelCopyWith<CedulacionExtpVModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CedulacionExtpVModelCopyWith<$Res> {
  factory $CedulacionExtpVModelCopyWith(CedulacionExtpVModel value,
          $Res Function(CedulacionExtpVModel) then) =
      _$CedulacionExtpVModelCopyWithImpl<$Res, CedulacionExtpVModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'visa')
          String visa,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'email')
          String email});
}

/// @nodoc
class _$CedulacionExtpVModelCopyWithImpl<$Res,
        $Val extends CedulacionExtpVModel>
    implements $CedulacionExtpVModelCopyWith<$Res> {
  _$CedulacionExtpVModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      visa: null == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CedulacionExtpVModelCopyWith<$Res>
    implements $CedulacionExtpVModelCopyWith<$Res> {
  factory _$$_CedulacionExtpVModelCopyWith(_$_CedulacionExtpVModel value,
          $Res Function(_$_CedulacionExtpVModel) then) =
      __$$_CedulacionExtpVModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'visa')
          String visa,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'email')
          String email});
}

/// @nodoc
class __$$_CedulacionExtpVModelCopyWithImpl<$Res>
    extends _$CedulacionExtpVModelCopyWithImpl<$Res, _$_CedulacionExtpVModel>
    implements _$$_CedulacionExtpVModelCopyWith<$Res> {
  __$$_CedulacionExtpVModelCopyWithImpl(_$_CedulacionExtpVModel _value,
      $Res Function(_$_CedulacionExtpVModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = null,
    Object? email = null,
  }) {
    return _then(_$_CedulacionExtpVModel(
      visa: null == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CedulacionExtpVModel extends _CedulacionExtpVModel {
  const _$_CedulacionExtpVModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'visa')
          required this.visa,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'email')
          required this.email})
      : super._();

  factory _$_CedulacionExtpVModel.fromJson(Map<String, dynamic> json) =>
      _$$_CedulacionExtpVModelFromJson(json);

  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'visa')
  final String visa;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'CedulacionExtpVModel(visa: $visa, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CedulacionExtpVModel &&
            (identical(other.visa, visa) || other.visa == visa) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visa, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CedulacionExtpVModelCopyWith<_$_CedulacionExtpVModel> get copyWith =>
      __$$_CedulacionExtpVModelCopyWithImpl<_$_CedulacionExtpVModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CedulacionExtpVModelToJson(
      this,
    );
  }
}

abstract class _CedulacionExtpVModel extends CedulacionExtpVModel {
  const factory _CedulacionExtpVModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'visa')
          required final String visa,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator
      ])
      @JsonKey(name: 'email')
          required final String email}) = _$_CedulacionExtpVModel;
  const _CedulacionExtpVModel._() : super._();

  factory _CedulacionExtpVModel.fromJson(Map<String, dynamic> json) =
      _$_CedulacionExtpVModel.fromJson;

  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'visa')
  String get visa;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator
  ])
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_CedulacionExtpVModelCopyWith<_$_CedulacionExtpVModel> get copyWith =>
      throw _privateConstructorUsedError;
}
