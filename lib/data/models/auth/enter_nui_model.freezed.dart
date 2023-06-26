// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_nui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnterNuiModel _$EnterNuiModelFromJson(Map<String, dynamic> json) {
  return _EnterNuiModel.fromJson(json);
}

/// @nodoc
mixin _$EnterNuiModel {
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnterNuiModelCopyWith<EnterNuiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterNuiModelCopyWith<$Res> {
  factory $EnterNuiModelCopyWith(
          EnterNuiModel value, $Res Function(EnterNuiModel) then) =
      _$EnterNuiModelCopyWithImpl<$Res, EnterNuiModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui});
}

/// @nodoc
class _$EnterNuiModelCopyWithImpl<$Res, $Val extends EnterNuiModel>
    implements $EnterNuiModelCopyWith<$Res> {
  _$EnterNuiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnterNuiModelCopyWith<$Res>
    implements $EnterNuiModelCopyWith<$Res> {
  factory _$$_EnterNuiModelCopyWith(
          _$_EnterNuiModel value, $Res Function(_$_EnterNuiModel) then) =
      __$$_EnterNuiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui});
}

/// @nodoc
class __$$_EnterNuiModelCopyWithImpl<$Res>
    extends _$EnterNuiModelCopyWithImpl<$Res, _$_EnterNuiModel>
    implements _$$_EnterNuiModelCopyWith<$Res> {
  __$$_EnterNuiModelCopyWithImpl(
      _$_EnterNuiModel _value, $Res Function(_$_EnterNuiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
  }) {
    return _then(_$_EnterNuiModel(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EnterNuiModel extends _EnterNuiModel {
  const _$_EnterNuiModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          required this.nui})
      : super._();

  factory _$_EnterNuiModel.fromJson(Map<String, dynamic> json) =>
      _$$_EnterNuiModelFromJson(json);

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nui;

  @override
  String toString() {
    return 'EnterNuiModel(nui: $nui)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterNuiModel &&
            (identical(other.nui, nui) || other.nui == nui));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nui);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterNuiModelCopyWith<_$_EnterNuiModel> get copyWith =>
      __$$_EnterNuiModelCopyWithImpl<_$_EnterNuiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnterNuiModelToJson(
      this,
    );
  }
}

abstract class _EnterNuiModel extends EnterNuiModel {
  const factory _EnterNuiModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          required final String nui}) = _$_EnterNuiModel;
  const _EnterNuiModel._() : super._();

  factory _EnterNuiModel.fromJson(Map<String, dynamic> json) =
      _$_EnterNuiModel.fromJson;

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui;
  @override
  @JsonKey(ignore: true)
  _$$_EnterNuiModelCopyWith<_$_EnterNuiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
