// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cedulacion_ext_primerav_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CedulacionExtpVResModel _$CedulacionExtpVResModelFromJson(
    Map<String, dynamic> json) {
  return _CedulacionExtpVResModel.fromJson(json);
}

/// @nodoc
mixin _$CedulacionExtpVResModel {
  String? get timestamp => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<String>? get errors => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CedulacionExtpVResModelCopyWith<CedulacionExtpVResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CedulacionExtpVResModelCopyWith<$Res> {
  factory $CedulacionExtpVResModelCopyWith(CedulacionExtpVResModel value,
          $Res Function(CedulacionExtpVResModel) then) =
      _$CedulacionExtpVResModelCopyWithImpl<$Res, CedulacionExtpVResModel>;
  @useResult
  $Res call(
      {String? timestamp,
      int? status,
      String? message,
      List<String>? errors,
      Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CedulacionExtpVResModelCopyWithImpl<$Res,
        $Val extends CedulacionExtpVResModel>
    implements $CedulacionExtpVResModelCopyWith<$Res> {
  _$CedulacionExtpVResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CedulacionExtpVResModelCopyWith<$Res>
    implements $CedulacionExtpVResModelCopyWith<$Res> {
  factory _$$_CedulacionExtpVResModelCopyWith(_$_CedulacionExtpVResModel value,
          $Res Function(_$_CedulacionExtpVResModel) then) =
      __$$_CedulacionExtpVResModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? timestamp,
      int? status,
      String? message,
      List<String>? errors,
      Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CedulacionExtpVResModelCopyWithImpl<$Res>
    extends _$CedulacionExtpVResModelCopyWithImpl<$Res,
        _$_CedulacionExtpVResModel>
    implements _$$_CedulacionExtpVResModelCopyWith<$Res> {
  __$$_CedulacionExtpVResModelCopyWithImpl(_$_CedulacionExtpVResModel _value,
      $Res Function(_$_CedulacionExtpVResModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CedulacionExtpVResModel(
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CedulacionExtpVResModel implements _CedulacionExtpVResModel {
  const _$_CedulacionExtpVResModel(
      {this.timestamp,
      this.status,
      this.message,
      final List<String>? errors,
      this.data})
      : _errors = errors;

  factory _$_CedulacionExtpVResModel.fromJson(Map<String, dynamic> json) =>
      _$$_CedulacionExtpVResModelFromJson(json);

  @override
  final String? timestamp;
  @override
  final int? status;
  @override
  final String? message;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Data? data;

  @override
  String toString() {
    return 'CedulacionExtpVResModel(timestamp: $timestamp, status: $status, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CedulacionExtpVResModel &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, status, message,
      const DeepCollectionEquality().hash(_errors), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CedulacionExtpVResModelCopyWith<_$_CedulacionExtpVResModel>
      get copyWith =>
          __$$_CedulacionExtpVResModelCopyWithImpl<_$_CedulacionExtpVResModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CedulacionExtpVResModelToJson(
      this,
    );
  }
}

abstract class _CedulacionExtpVResModel implements CedulacionExtpVResModel {
  const factory _CedulacionExtpVResModel(
      {final String? timestamp,
      final int? status,
      final String? message,
      final List<String>? errors,
      final Data? data}) = _$_CedulacionExtpVResModel;

  factory _CedulacionExtpVResModel.fromJson(Map<String, dynamic> json) =
      _$_CedulacionExtpVResModel.fromJson;

  @override
  String? get timestamp;
  @override
  int? get status;
  @override
  String? get message;
  @override
  List<String>? get errors;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CedulacionExtpVResModelCopyWith<_$_CedulacionExtpVResModel>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get visa => throw _privateConstructorUsedError;
  int? get transactionCode => throw _privateConstructorUsedError;
  String? get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String? visa, int? transactionCode, String? command});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = freezed,
    Object? transactionCode = freezed,
    Object? command = freezed,
  }) {
    return _then(_value.copyWith(
      visa: freezed == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? visa, int? transactionCode, String? command});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visa = freezed,
    Object? transactionCode = freezed,
    Object? command = freezed,
  }) {
    return _then(_$_Data(
      visa: freezed == visa
          ? _value.visa
          : visa // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      command: freezed == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.visa, this.transactionCode, this.command});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? visa;
  @override
  final int? transactionCode;
  @override
  final String? command;

  @override
  String toString() {
    return 'Data(visa: $visa, transactionCode: $transactionCode, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.visa, visa) || other.visa == visa) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visa, transactionCode, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? visa,
      final int? transactionCode,
      final String? command}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get visa;
  @override
  int? get transactionCode;
  @override
  String? get command;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
