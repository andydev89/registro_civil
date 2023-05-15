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
  @FormControlAnnotation(validators: [requiredValidator])
  String get firstName => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
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
      @FormControlAnnotation(validators: [requiredValidator])
          String firstName,
      @FormControlAnnotation(validators: [requiredValidator])
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
      @FormControlAnnotation(validators: [requiredValidator])
          String firstName,
      @FormControlAnnotation(validators: [requiredValidator])
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
      @FormControlAnnotation(validators: [requiredValidator])
          required this.firstName,
      @FormControlAnnotation(validators: [requiredValidator])
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
  @FormControlAnnotation(validators: [requiredValidator])
  final String firstName;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
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
      @FormControlAnnotation(validators: [requiredValidator])
          required final String firstName,
      @FormControlAnnotation(validators: [requiredValidator])
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
  @FormControlAnnotation(validators: [requiredValidator])
  String get firstName;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
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
