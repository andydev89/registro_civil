// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_relationship_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckRelationshipModel _$CheckRelationshipModelFromJson(
    Map<String, dynamic> json) {
  return _CheckRelationshipModel.fromJson(json);
}

/// @nodoc
mixin _$CheckRelationshipModel {
  bool get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckRelationshipModelCopyWith<CheckRelationshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRelationshipModelCopyWith<$Res> {
  factory $CheckRelationshipModelCopyWith(CheckRelationshipModel value,
          $Res Function(CheckRelationshipModel) then) =
      _$CheckRelationshipModelCopyWithImpl<$Res, CheckRelationshipModel>;
  @useResult
  $Res call({bool result});
}

/// @nodoc
class _$CheckRelationshipModelCopyWithImpl<$Res,
        $Val extends CheckRelationshipModel>
    implements $CheckRelationshipModelCopyWith<$Res> {
  _$CheckRelationshipModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckRelationshipModelCopyWith<$Res>
    implements $CheckRelationshipModelCopyWith<$Res> {
  factory _$$_CheckRelationshipModelCopyWith(_$_CheckRelationshipModel value,
          $Res Function(_$_CheckRelationshipModel) then) =
      __$$_CheckRelationshipModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool result});
}

/// @nodoc
class __$$_CheckRelationshipModelCopyWithImpl<$Res>
    extends _$CheckRelationshipModelCopyWithImpl<$Res,
        _$_CheckRelationshipModel>
    implements _$$_CheckRelationshipModelCopyWith<$Res> {
  __$$_CheckRelationshipModelCopyWithImpl(_$_CheckRelationshipModel _value,
      $Res Function(_$_CheckRelationshipModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_CheckRelationshipModel(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckRelationshipModel implements _CheckRelationshipModel {
  const _$_CheckRelationshipModel({required this.result});

  factory _$_CheckRelationshipModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckRelationshipModelFromJson(json);

  @override
  final bool result;

  @override
  String toString() {
    return 'CheckRelationshipModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckRelationshipModel &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckRelationshipModelCopyWith<_$_CheckRelationshipModel> get copyWith =>
      __$$_CheckRelationshipModelCopyWithImpl<_$_CheckRelationshipModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckRelationshipModelToJson(
      this,
    );
  }
}

abstract class _CheckRelationshipModel implements CheckRelationshipModel {
  const factory _CheckRelationshipModel({required final bool result}) =
      _$_CheckRelationshipModel;

  factory _CheckRelationshipModel.fromJson(Map<String, dynamic> json) =
      _$_CheckRelationshipModel.fromJson;

  @override
  bool get result;
  @override
  @JsonKey(ignore: true)
  _$$_CheckRelationshipModelCopyWith<_$_CheckRelationshipModel> get copyWith =>
      throw _privateConstructorUsedError;
}
