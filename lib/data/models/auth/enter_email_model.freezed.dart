// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnterEmailModel _$EnterEmailModelFromJson(Map<String, dynamic> json) {
  return _EnterEmailModel.fromJson(json);
}

/// @nodoc
mixin _$EnterEmailModel {
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnterEmailModelCopyWith<EnterEmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterEmailModelCopyWith<$Res> {
  factory $EnterEmailModelCopyWith(
          EnterEmailModel value, $Res Function(EnterEmailModel) then) =
      _$EnterEmailModelCopyWithImpl<$Res, EnterEmailModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator, emailValidator])
          String email});
}

/// @nodoc
class _$EnterEmailModelCopyWithImpl<$Res, $Val extends EnterEmailModel>
    implements $EnterEmailModelCopyWith<$Res> {
  _$EnterEmailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnterEmailModelCopyWith<$Res>
    implements $EnterEmailModelCopyWith<$Res> {
  factory _$$_EnterEmailModelCopyWith(
          _$_EnterEmailModel value, $Res Function(_$_EnterEmailModel) then) =
      __$$_EnterEmailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator, emailValidator])
          String email});
}

/// @nodoc
class __$$_EnterEmailModelCopyWithImpl<$Res>
    extends _$EnterEmailModelCopyWithImpl<$Res, _$_EnterEmailModel>
    implements _$$_EnterEmailModelCopyWith<$Res> {
  __$$_EnterEmailModelCopyWithImpl(
      _$_EnterEmailModel _value, $Res Function(_$_EnterEmailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EnterEmailModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EnterEmailModel extends _EnterEmailModel {
  const _$_EnterEmailModel(
      {@FormControlAnnotation(validators: [requiredValidator, emailValidator])
          this.email = ''})
      : super._();

  factory _$_EnterEmailModel.fromJson(Map<String, dynamic> json) =>
      _$$_EnterEmailModelFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  final String email;

  @override
  String toString() {
    return 'EnterEmailModel(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterEmailModel &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterEmailModelCopyWith<_$_EnterEmailModel> get copyWith =>
      __$$_EnterEmailModelCopyWithImpl<_$_EnterEmailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnterEmailModelToJson(
      this,
    );
  }
}

abstract class _EnterEmailModel extends EnterEmailModel {
  const factory _EnterEmailModel(
      {@FormControlAnnotation(validators: [requiredValidator, emailValidator])
          final String email}) = _$_EnterEmailModel;
  const _EnterEmailModel._() : super._();

  factory _EnterEmailModel.fromJson(Map<String, dynamic> json) =
      _$_EnterEmailModel.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EnterEmailModelCopyWith<_$_EnterEmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
