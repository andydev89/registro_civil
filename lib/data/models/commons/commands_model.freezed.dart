// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommandModel _$CommandModelFromJson(Map<String, dynamic> json) {
  return _CommandModel.fromJson(json);
}

/// @nodoc
mixin _$CommandModel {
  String get id => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandModelCopyWith<CommandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandModelCopyWith<$Res> {
  factory $CommandModelCopyWith(
          CommandModel value, $Res Function(CommandModel) then) =
      _$CommandModelCopyWithImpl<$Res, CommandModel>;
  @useResult
  $Res call({String id, String command});
}

/// @nodoc
class _$CommandModelCopyWithImpl<$Res, $Val extends CommandModel>
    implements $CommandModelCopyWith<$Res> {
  _$CommandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommandModelCopyWith<$Res>
    implements $CommandModelCopyWith<$Res> {
  factory _$$_CommandModelCopyWith(
          _$_CommandModel value, $Res Function(_$_CommandModel) then) =
      __$$_CommandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String command});
}

/// @nodoc
class __$$_CommandModelCopyWithImpl<$Res>
    extends _$CommandModelCopyWithImpl<$Res, _$_CommandModel>
    implements _$$_CommandModelCopyWith<$Res> {
  __$$_CommandModelCopyWithImpl(
      _$_CommandModel _value, $Res Function(_$_CommandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
  }) {
    return _then(_$_CommandModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommandModel implements _CommandModel {
  const _$_CommandModel({required this.id, required this.command});

  factory _$_CommandModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommandModelFromJson(json);

  @override
  final String id;
  @override
  final String command;

  @override
  String toString() {
    return 'CommandModel(id: $id, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandModelCopyWith<_$_CommandModel> get copyWith =>
      __$$_CommandModelCopyWithImpl<_$_CommandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandModelToJson(
      this,
    );
  }
}

abstract class _CommandModel implements CommandModel {
  const factory _CommandModel(
      {required final String id,
      required final String command}) = _$_CommandModel;

  factory _CommandModel.fromJson(Map<String, dynamic> json) =
      _$_CommandModel.fromJson;

  @override
  String get id;
  @override
  String get command;
  @override
  @JsonKey(ignore: true)
  _$$_CommandModelCopyWith<_$_CommandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommandWithTransactionCodeModel _$CommandWithTransactionCodeModelFromJson(
    Map<String, dynamic> json) {
  return _CommandWithTransactionCodeModel.fromJson(json);
}

/// @nodoc
mixin _$CommandWithTransactionCodeModel {
  String get id => throw _privateConstructorUsedError;
  String get transactionCode => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandWithTransactionCodeModelCopyWith<CommandWithTransactionCodeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandWithTransactionCodeModelCopyWith<$Res> {
  factory $CommandWithTransactionCodeModelCopyWith(
          CommandWithTransactionCodeModel value,
          $Res Function(CommandWithTransactionCodeModel) then) =
      _$CommandWithTransactionCodeModelCopyWithImpl<$Res,
          CommandWithTransactionCodeModel>;
  @useResult
  $Res call({String id, String transactionCode, String command});
}

/// @nodoc
class _$CommandWithTransactionCodeModelCopyWithImpl<$Res,
        $Val extends CommandWithTransactionCodeModel>
    implements $CommandWithTransactionCodeModelCopyWith<$Res> {
  _$CommandWithTransactionCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? command = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommandWithTransactionCodeModelCopyWith<$Res>
    implements $CommandWithTransactionCodeModelCopyWith<$Res> {
  factory _$$_CommandWithTransactionCodeModelCopyWith(
          _$_CommandWithTransactionCodeModel value,
          $Res Function(_$_CommandWithTransactionCodeModel) then) =
      __$$_CommandWithTransactionCodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String transactionCode, String command});
}

/// @nodoc
class __$$_CommandWithTransactionCodeModelCopyWithImpl<$Res>
    extends _$CommandWithTransactionCodeModelCopyWithImpl<$Res,
        _$_CommandWithTransactionCodeModel>
    implements _$$_CommandWithTransactionCodeModelCopyWith<$Res> {
  __$$_CommandWithTransactionCodeModelCopyWithImpl(
      _$_CommandWithTransactionCodeModel _value,
      $Res Function(_$_CommandWithTransactionCodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? command = null,
  }) {
    return _then(_$_CommandWithTransactionCodeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommandWithTransactionCodeModel
    implements _CommandWithTransactionCodeModel {
  const _$_CommandWithTransactionCodeModel(
      {required this.id, required this.transactionCode, required this.command});

  factory _$_CommandWithTransactionCodeModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CommandWithTransactionCodeModelFromJson(json);

  @override
  final String id;
  @override
  final String transactionCode;
  @override
  final String command;

  @override
  String toString() {
    return 'CommandWithTransactionCodeModel(id: $id, transactionCode: $transactionCode, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandWithTransactionCodeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionCode, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandWithTransactionCodeModelCopyWith<
          _$_CommandWithTransactionCodeModel>
      get copyWith => __$$_CommandWithTransactionCodeModelCopyWithImpl<
          _$_CommandWithTransactionCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandWithTransactionCodeModelToJson(
      this,
    );
  }
}

abstract class _CommandWithTransactionCodeModel
    implements CommandWithTransactionCodeModel {
  const factory _CommandWithTransactionCodeModel(
      {required final String id,
      required final String transactionCode,
      required final String command}) = _$_CommandWithTransactionCodeModel;

  factory _CommandWithTransactionCodeModel.fromJson(Map<String, dynamic> json) =
      _$_CommandWithTransactionCodeModel.fromJson;

  @override
  String get id;
  @override
  String get transactionCode;
  @override
  String get command;
  @override
  @JsonKey(ignore: true)
  _$$_CommandWithTransactionCodeModelCopyWith<
          _$_CommandWithTransactionCodeModel>
      get copyWith => throw _privateConstructorUsedError;
}

CommandListModel _$CommandListModelFromJson(Map<String, dynamic> json) {
  return _CommandListModel.fromJson(json);
}

/// @nodoc
mixin _$CommandListModel {
  List<String> get ids => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandListModelCopyWith<CommandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandListModelCopyWith<$Res> {
  factory $CommandListModelCopyWith(
          CommandListModel value, $Res Function(CommandListModel) then) =
      _$CommandListModelCopyWithImpl<$Res, CommandListModel>;
  @useResult
  $Res call({List<String> ids, String command});
}

/// @nodoc
class _$CommandListModelCopyWithImpl<$Res, $Val extends CommandListModel>
    implements $CommandListModelCopyWith<$Res> {
  _$CommandListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? command = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommandListModelCopyWith<$Res>
    implements $CommandListModelCopyWith<$Res> {
  factory _$$_CommandListModelCopyWith(
          _$_CommandListModel value, $Res Function(_$_CommandListModel) then) =
      __$$_CommandListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ids, String command});
}

/// @nodoc
class __$$_CommandListModelCopyWithImpl<$Res>
    extends _$CommandListModelCopyWithImpl<$Res, _$_CommandListModel>
    implements _$$_CommandListModelCopyWith<$Res> {
  __$$_CommandListModelCopyWithImpl(
      _$_CommandListModel _value, $Res Function(_$_CommandListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? command = null,
  }) {
    return _then(_$_CommandListModel(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommandListModel implements _CommandListModel {
  const _$_CommandListModel(
      {required final List<String> ids, required this.command})
      : _ids = ids;

  factory _$_CommandListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommandListModelFromJson(json);

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  final String command;

  @override
  String toString() {
    return 'CommandListModel(ids: $ids, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandListModel &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ids), command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandListModelCopyWith<_$_CommandListModel> get copyWith =>
      __$$_CommandListModelCopyWithImpl<_$_CommandListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandListModelToJson(
      this,
    );
  }
}

abstract class _CommandListModel implements CommandListModel {
  const factory _CommandListModel(
      {required final List<String> ids,
      required final String command}) = _$_CommandListModel;

  factory _CommandListModel.fromJson(Map<String, dynamic> json) =
      _$_CommandListModel.fromJson;

  @override
  List<String> get ids;
  @override
  String get command;
  @override
  @JsonKey(ignore: true)
  _$$_CommandListModelCopyWith<_$_CommandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CommandListWithTransactionCodeModel
    _$CommandListWithTransactionCodeModelFromJson(Map<String, dynamic> json) {
  return _CommandListWithTransactionCodeModel.fromJson(json);
}

/// @nodoc
mixin _$CommandListWithTransactionCodeModel {
  List<String> get ids => throw _privateConstructorUsedError;
  String get transactionCode => throw _privateConstructorUsedError;
  String get command => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandListWithTransactionCodeModelCopyWith<
          CommandListWithTransactionCodeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandListWithTransactionCodeModelCopyWith<$Res> {
  factory $CommandListWithTransactionCodeModelCopyWith(
          CommandListWithTransactionCodeModel value,
          $Res Function(CommandListWithTransactionCodeModel) then) =
      _$CommandListWithTransactionCodeModelCopyWithImpl<$Res,
          CommandListWithTransactionCodeModel>;
  @useResult
  $Res call({List<String> ids, String transactionCode, String command});
}

/// @nodoc
class _$CommandListWithTransactionCodeModelCopyWithImpl<$Res,
        $Val extends CommandListWithTransactionCodeModel>
    implements $CommandListWithTransactionCodeModelCopyWith<$Res> {
  _$CommandListWithTransactionCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? transactionCode = null,
    Object? command = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommandListWithTransactionCodeModelCopyWith<$Res>
    implements $CommandListWithTransactionCodeModelCopyWith<$Res> {
  factory _$$_CommandListWithTransactionCodeModelCopyWith(
          _$_CommandListWithTransactionCodeModel value,
          $Res Function(_$_CommandListWithTransactionCodeModel) then) =
      __$$_CommandListWithTransactionCodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ids, String transactionCode, String command});
}

/// @nodoc
class __$$_CommandListWithTransactionCodeModelCopyWithImpl<$Res>
    extends _$CommandListWithTransactionCodeModelCopyWithImpl<$Res,
        _$_CommandListWithTransactionCodeModel>
    implements _$$_CommandListWithTransactionCodeModelCopyWith<$Res> {
  __$$_CommandListWithTransactionCodeModelCopyWithImpl(
      _$_CommandListWithTransactionCodeModel _value,
      $Res Function(_$_CommandListWithTransactionCodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
    Object? transactionCode = null,
    Object? command = null,
  }) {
    return _then(_$_CommandListWithTransactionCodeModel(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommandListWithTransactionCodeModel
    implements _CommandListWithTransactionCodeModel {
  const _$_CommandListWithTransactionCodeModel(
      {required final List<String> ids,
      required this.transactionCode,
      required this.command})
      : _ids = ids;

  factory _$_CommandListWithTransactionCodeModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CommandListWithTransactionCodeModelFromJson(json);

  final List<String> _ids;
  @override
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  final String transactionCode;
  @override
  final String command;

  @override
  String toString() {
    return 'CommandListWithTransactionCodeModel(ids: $ids, transactionCode: $transactionCode, command: $command)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommandListWithTransactionCodeModel &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.command, command) || other.command == command));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ids), transactionCode, command);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommandListWithTransactionCodeModelCopyWith<
          _$_CommandListWithTransactionCodeModel>
      get copyWith => __$$_CommandListWithTransactionCodeModelCopyWithImpl<
          _$_CommandListWithTransactionCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandListWithTransactionCodeModelToJson(
      this,
    );
  }
}

abstract class _CommandListWithTransactionCodeModel
    implements CommandListWithTransactionCodeModel {
  const factory _CommandListWithTransactionCodeModel(
      {required final List<String> ids,
      required final String transactionCode,
      required final String command}) = _$_CommandListWithTransactionCodeModel;

  factory _CommandListWithTransactionCodeModel.fromJson(
          Map<String, dynamic> json) =
      _$_CommandListWithTransactionCodeModel.fromJson;

  @override
  List<String> get ids;
  @override
  String get transactionCode;
  @override
  String get command;
  @override
  @JsonKey(ignore: true)
  _$$_CommandListWithTransactionCodeModelCopyWith<
          _$_CommandListWithTransactionCodeModel>
      get copyWith => throw _privateConstructorUsedError;
}
