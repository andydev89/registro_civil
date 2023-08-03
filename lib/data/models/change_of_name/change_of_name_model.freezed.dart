// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_of_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeOfNameModel _$ChangeOfNameModelFromJson(Map<String, dynamic> json) {
  return _ChangeOfNameModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeOfNameModel {
  String? get nui => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'type')
  ChangeOfNameType get changeOfNameType => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  AgencyModel? get agency => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  String get firstName => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  String get secondName => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get resultingName => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'observation')
  String? get observations => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>(validators: [requiredValidator])
  String get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeOfNameModelCopyWith<ChangeOfNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOfNameModelCopyWith<$Res> {
  factory $ChangeOfNameModelCopyWith(
          ChangeOfNameModel value, $Res Function(ChangeOfNameModel) then) =
      _$ChangeOfNameModelCopyWithImpl<$Res, ChangeOfNameModel>;
  @useResult
  $Res call(
      {String? nui,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'type')
          ChangeOfNameType changeOfNameType,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          AgencyModel? agency,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          String firstName,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          String secondName,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          String? resultingName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'observation')
          String? observations,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          String document});
}

/// @nodoc
class _$ChangeOfNameModelCopyWithImpl<$Res, $Val extends ChangeOfNameModel>
    implements $ChangeOfNameModelCopyWith<$Res> {
  _$ChangeOfNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = freezed,
    Object? changeOfNameType = null,
    Object? agency = freezed,
    Object? firstName = null,
    Object? secondName = null,
    Object? resultingName = freezed,
    Object? observations = freezed,
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOfNameType: null == changeOfNameType
          ? _value.changeOfNameType
          : changeOfNameType // ignore: cast_nullable_to_non_nullable
              as ChangeOfNameType,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      resultingName: freezed == resultingName
          ? _value.resultingName
          : resultingName // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeOfNameModelCopyWith<$Res>
    implements $ChangeOfNameModelCopyWith<$Res> {
  factory _$$_ChangeOfNameModelCopyWith(_$_ChangeOfNameModel value,
          $Res Function(_$_ChangeOfNameModel) then) =
      __$$_ChangeOfNameModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nui,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'type')
          ChangeOfNameType changeOfNameType,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          AgencyModel? agency,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          String firstName,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          String secondName,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          String? resultingName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'observation')
          String? observations,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          String document});
}

/// @nodoc
class __$$_ChangeOfNameModelCopyWithImpl<$Res>
    extends _$ChangeOfNameModelCopyWithImpl<$Res, _$_ChangeOfNameModel>
    implements _$$_ChangeOfNameModelCopyWith<$Res> {
  __$$_ChangeOfNameModelCopyWithImpl(
      _$_ChangeOfNameModel _value, $Res Function(_$_ChangeOfNameModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = freezed,
    Object? changeOfNameType = null,
    Object? agency = freezed,
    Object? firstName = null,
    Object? secondName = null,
    Object? resultingName = freezed,
    Object? observations = freezed,
    Object? document = null,
  }) {
    return _then(_$_ChangeOfNameModel(
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOfNameType: null == changeOfNameType
          ? _value.changeOfNameType
          : changeOfNameType // ignore: cast_nullable_to_non_nullable
              as ChangeOfNameType,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      resultingName: freezed == resultingName
          ? _value.resultingName
          : resultingName // ignore: cast_nullable_to_non_nullable
              as String?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String?,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeOfNameModel extends _ChangeOfNameModel {
  const _$_ChangeOfNameModel(
      {this.nui,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'type')
          required this.changeOfNameType,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.agency,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          required this.firstName,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          required this.secondName,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          this.resultingName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'observation')
          this.observations,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          required this.document})
      : super._();

  factory _$_ChangeOfNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeOfNameModelFromJson(json);

  @override
  final String? nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'type')
  final ChangeOfNameType changeOfNameType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  final AgencyModel? agency;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  final String firstName;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  final String secondName;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? resultingName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'observation')
  final String? observations;
  @override
  @FormControlAnnotation<String>(validators: [requiredValidator])
  final String document;

  @override
  String toString() {
    return 'ChangeOfNameModel(nui: $nui, changeOfNameType: $changeOfNameType, agency: $agency, firstName: $firstName, secondName: $secondName, resultingName: $resultingName, observations: $observations, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeOfNameModel &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.changeOfNameType, changeOfNameType) ||
                other.changeOfNameType == changeOfNameType) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.resultingName, resultingName) ||
                other.resultingName == resultingName) &&
            (identical(other.observations, observations) ||
                other.observations == observations) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nui, changeOfNameType, agency,
      firstName, secondName, resultingName, observations, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeOfNameModelCopyWith<_$_ChangeOfNameModel> get copyWith =>
      __$$_ChangeOfNameModelCopyWithImpl<_$_ChangeOfNameModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeOfNameModelToJson(
      this,
    );
  }
}

abstract class _ChangeOfNameModel extends ChangeOfNameModel {
  const factory _ChangeOfNameModel(
      {final String? nui,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'type')
          required final ChangeOfNameType changeOfNameType,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          final AgencyModel? agency,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          required final String firstName,
      @FormControlAnnotation(validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
        no3EqualsLettersConsecutives
      ])
          required final String secondName,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(includeFromJson: false, includeToJson: false)
          final String? resultingName,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'observation')
          final String? observations,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          required final String document}) = _$_ChangeOfNameModel;
  const _ChangeOfNameModel._() : super._();

  factory _ChangeOfNameModel.fromJson(Map<String, dynamic> json) =
      _$_ChangeOfNameModel.fromJson;

  @override
  String? get nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'type')
  ChangeOfNameType get changeOfNameType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  AgencyModel? get agency;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  String get firstName;
  @override
  @FormControlAnnotation(validators: [
    requiredValidator,
    lengthMax20Validator,
    lengthMin2Validator,
    no3EqualsLettersConsecutives
  ])
  String get secondName;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get resultingName;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'observation')
  String? get observations;
  @override
  @FormControlAnnotation<String>(validators: [requiredValidator])
  String get document;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeOfNameModelCopyWith<_$_ChangeOfNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeOfNameListModel _$ChangeOfNameListModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeOfNameListModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeOfNameListModel {
  String get id => throw _privateConstructorUsedError;
  String? get nui => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ChangeOfNameType get changeOfNameType => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get secondName => throw _privateConstructorUsedError;
  ProcessStatus get state => throw _privateConstructorUsedError;
  String? get receiptState => throw _privateConstructorUsedError;
  String? get transactionCode => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeOfNameListModelCopyWith<ChangeOfNameListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOfNameListModelCopyWith<$Res> {
  factory $ChangeOfNameListModelCopyWith(ChangeOfNameListModel value,
          $Res Function(ChangeOfNameListModel) then) =
      _$ChangeOfNameListModelCopyWithImpl<$Res, ChangeOfNameListModel>;
  @useResult
  $Res call(
      {String id,
      String? nui,
      @JsonKey(name: 'type') ChangeOfNameType changeOfNameType,
      String firstName,
      String secondName,
      ProcessStatus state,
      String? receiptState,
      String? transactionCode,
      DateTime? createAt,
      String documentId});
}

/// @nodoc
class _$ChangeOfNameListModelCopyWithImpl<$Res,
        $Val extends ChangeOfNameListModel>
    implements $ChangeOfNameListModelCopyWith<$Res> {
  _$ChangeOfNameListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nui = freezed,
    Object? changeOfNameType = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? state = null,
    Object? receiptState = freezed,
    Object? transactionCode = freezed,
    Object? createAt = freezed,
    Object? documentId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOfNameType: null == changeOfNameType
          ? _value.changeOfNameType
          : changeOfNameType // ignore: cast_nullable_to_non_nullable
              as ChangeOfNameType,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      receiptState: freezed == receiptState
          ? _value.receiptState
          : receiptState // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeOfNameListModelCopyWith<$Res>
    implements $ChangeOfNameListModelCopyWith<$Res> {
  factory _$$_ChangeOfNameListModelCopyWith(_$_ChangeOfNameListModel value,
          $Res Function(_$_ChangeOfNameListModel) then) =
      __$$_ChangeOfNameListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? nui,
      @JsonKey(name: 'type') ChangeOfNameType changeOfNameType,
      String firstName,
      String secondName,
      ProcessStatus state,
      String? receiptState,
      String? transactionCode,
      DateTime? createAt,
      String documentId});
}

/// @nodoc
class __$$_ChangeOfNameListModelCopyWithImpl<$Res>
    extends _$ChangeOfNameListModelCopyWithImpl<$Res, _$_ChangeOfNameListModel>
    implements _$$_ChangeOfNameListModelCopyWith<$Res> {
  __$$_ChangeOfNameListModelCopyWithImpl(_$_ChangeOfNameListModel _value,
      $Res Function(_$_ChangeOfNameListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nui = freezed,
    Object? changeOfNameType = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? state = null,
    Object? receiptState = freezed,
    Object? transactionCode = freezed,
    Object? createAt = freezed,
    Object? documentId = null,
  }) {
    return _then(_$_ChangeOfNameListModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      changeOfNameType: null == changeOfNameType
          ? _value.changeOfNameType
          : changeOfNameType // ignore: cast_nullable_to_non_nullable
              as ChangeOfNameType,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      receiptState: freezed == receiptState
          ? _value.receiptState
          : receiptState // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeOfNameListModel extends _ChangeOfNameListModel {
  const _$_ChangeOfNameListModel(
      {required this.id,
      this.nui,
      @JsonKey(name: 'type') required this.changeOfNameType,
      required this.firstName,
      required this.secondName,
      required this.state,
      this.receiptState,
      this.transactionCode,
      this.createAt,
      required this.documentId})
      : super._();

  factory _$_ChangeOfNameListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeOfNameListModelFromJson(json);

  @override
  final String id;
  @override
  final String? nui;
  @override
  @JsonKey(name: 'type')
  final ChangeOfNameType changeOfNameType;
  @override
  final String firstName;
  @override
  final String secondName;
  @override
  final ProcessStatus state;
  @override
  final String? receiptState;
  @override
  final String? transactionCode;
  @override
  final DateTime? createAt;
  @override
  final String documentId;

  @override
  String toString() {
    return 'ChangeOfNameListModel(id: $id, nui: $nui, changeOfNameType: $changeOfNameType, firstName: $firstName, secondName: $secondName, state: $state, receiptState: $receiptState, transactionCode: $transactionCode, createAt: $createAt, documentId: $documentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeOfNameListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.changeOfNameType, changeOfNameType) ||
                other.changeOfNameType == changeOfNameType) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.receiptState, receiptState) ||
                other.receiptState == receiptState) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nui,
      changeOfNameType,
      firstName,
      secondName,
      state,
      receiptState,
      transactionCode,
      createAt,
      documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeOfNameListModelCopyWith<_$_ChangeOfNameListModel> get copyWith =>
      __$$_ChangeOfNameListModelCopyWithImpl<_$_ChangeOfNameListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeOfNameListModelToJson(
      this,
    );
  }
}

abstract class _ChangeOfNameListModel extends ChangeOfNameListModel {
  const factory _ChangeOfNameListModel(
      {required final String id,
      final String? nui,
      @JsonKey(name: 'type') required final ChangeOfNameType changeOfNameType,
      required final String firstName,
      required final String secondName,
      required final ProcessStatus state,
      final String? receiptState,
      final String? transactionCode,
      final DateTime? createAt,
      required final String documentId}) = _$_ChangeOfNameListModel;
  const _ChangeOfNameListModel._() : super._();

  factory _ChangeOfNameListModel.fromJson(Map<String, dynamic> json) =
      _$_ChangeOfNameListModel.fromJson;

  @override
  String get id;
  @override
  String? get nui;
  @override
  @JsonKey(name: 'type')
  ChangeOfNameType get changeOfNameType;
  @override
  String get firstName;
  @override
  String get secondName;
  @override
  ProcessStatus get state;
  @override
  String? get receiptState;
  @override
  String? get transactionCode;
  @override
  DateTime? get createAt;
  @override
  String get documentId;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeOfNameListModelCopyWith<_$_ChangeOfNameListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
