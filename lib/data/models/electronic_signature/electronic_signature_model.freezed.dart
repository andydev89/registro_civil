// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'electronic_signature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ElectronicSignatureModel {
  @JsonKey(includeToJson: true)
  PersonType get personType => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  SignatureType get type => throw _privateConstructorUsedError;
  bool get isTokenRenovation => throw _privateConstructorUsedError;
  bool get hasDeviceToken => throw _privateConstructorUsedError;
  String? get deviceTokenSerialNumber => throw _privateConstructorUsedError;
  bool get isACustomsAgent => throw _privateConstructorUsedError;
  String? get userNui => throw _privateConstructorUsedError;
  String? get contactAddress => throw _privateConstructorUsedError;
  String? get contactPostalCode => throw _privateConstructorUsedError;
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get cantonId => throw _privateConstructorUsedError;
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get parroquiaId => throw _privateConstructorUsedError;
  bool get hasRUCIncluded => throw _privateConstructorUsedError;
  String? get ruc => throw _privateConstructorUsedError;
  SignatureValidityTimeType get validityTime =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  SignatureUseCaseType get useCase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElectronicSignatureModelCopyWith<ElectronicSignatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectronicSignatureModelCopyWith<$Res> {
  factory $ElectronicSignatureModelCopyWith(ElectronicSignatureModel value,
          $Res Function(ElectronicSignatureModel) then) =
      _$ElectronicSignatureModelCopyWithImpl<$Res, ElectronicSignatureModel>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: true)
          PersonType personType,
      @JsonKey(includeToJson: true)
          SignatureType type,
      bool isTokenRenovation,
      bool hasDeviceToken,
      String? deviceTokenSerialNumber,
      bool isACustomsAgent,
      String? userNui,
      String? contactAddress,
      String? contactPostalCode,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? cantonId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? parroquiaId,
      bool hasRUCIncluded,
      String? ruc,
      SignatureValidityTimeType validityTime,
      @JsonKey(includeToJson: true)
          SignatureUseCaseType useCase});

  $LocationModelCopyWith<$Res>? get provinceId;
  $LocationModelCopyWith<$Res>? get cantonId;
  $LocationModelCopyWith<$Res>? get parroquiaId;
}

/// @nodoc
class _$ElectronicSignatureModelCopyWithImpl<$Res,
        $Val extends ElectronicSignatureModel>
    implements $ElectronicSignatureModelCopyWith<$Res> {
  _$ElectronicSignatureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personType = null,
    Object? type = null,
    Object? isTokenRenovation = null,
    Object? hasDeviceToken = null,
    Object? deviceTokenSerialNumber = freezed,
    Object? isACustomsAgent = null,
    Object? userNui = freezed,
    Object? contactAddress = freezed,
    Object? contactPostalCode = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? parroquiaId = freezed,
    Object? hasRUCIncluded = null,
    Object? ruc = freezed,
    Object? validityTime = null,
    Object? useCase = null,
  }) {
    return _then(_value.copyWith(
      personType: null == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as PersonType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SignatureType,
      isTokenRenovation: null == isTokenRenovation
          ? _value.isTokenRenovation
          : isTokenRenovation // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDeviceToken: null == hasDeviceToken
          ? _value.hasDeviceToken
          : hasDeviceToken // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceTokenSerialNumber: freezed == deviceTokenSerialNumber
          ? _value.deviceTokenSerialNumber
          : deviceTokenSerialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isACustomsAgent: null == isACustomsAgent
          ? _value.isACustomsAgent
          : isACustomsAgent // ignore: cast_nullable_to_non_nullable
              as bool,
      userNui: freezed == userNui
          ? _value.userNui
          : userNui // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPostalCode: freezed == contactPostalCode
          ? _value.contactPostalCode
          : contactPostalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      parroquiaId: freezed == parroquiaId
          ? _value.parroquiaId
          : parroquiaId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      hasRUCIncluded: null == hasRUCIncluded
          ? _value.hasRUCIncluded
          : hasRUCIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      ruc: freezed == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String?,
      validityTime: null == validityTime
          ? _value.validityTime
          : validityTime // ignore: cast_nullable_to_non_nullable
              as SignatureValidityTimeType,
      useCase: null == useCase
          ? _value.useCase
          : useCase // ignore: cast_nullable_to_non_nullable
              as SignatureUseCaseType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get provinceId {
    if (_value.provinceId == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.provinceId!, (value) {
      return _then(_value.copyWith(provinceId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get cantonId {
    if (_value.cantonId == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.cantonId!, (value) {
      return _then(_value.copyWith(cantonId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get parroquiaId {
    if (_value.parroquiaId == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.parroquiaId!, (value) {
      return _then(_value.copyWith(parroquiaId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ElectronicSignatureModelCopyWith<$Res>
    implements $ElectronicSignatureModelCopyWith<$Res> {
  factory _$$_ElectronicSignatureModelCopyWith(
          _$_ElectronicSignatureModel value,
          $Res Function(_$_ElectronicSignatureModel) then) =
      __$$_ElectronicSignatureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: true)
          PersonType personType,
      @JsonKey(includeToJson: true)
          SignatureType type,
      bool isTokenRenovation,
      bool hasDeviceToken,
      String? deviceTokenSerialNumber,
      bool isACustomsAgent,
      String? userNui,
      String? contactAddress,
      String? contactPostalCode,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? cantonId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? parroquiaId,
      bool hasRUCIncluded,
      String? ruc,
      SignatureValidityTimeType validityTime,
      @JsonKey(includeToJson: true)
          SignatureUseCaseType useCase});

  @override
  $LocationModelCopyWith<$Res>? get provinceId;
  @override
  $LocationModelCopyWith<$Res>? get cantonId;
  @override
  $LocationModelCopyWith<$Res>? get parroquiaId;
}

/// @nodoc
class __$$_ElectronicSignatureModelCopyWithImpl<$Res>
    extends _$ElectronicSignatureModelCopyWithImpl<$Res,
        _$_ElectronicSignatureModel>
    implements _$$_ElectronicSignatureModelCopyWith<$Res> {
  __$$_ElectronicSignatureModelCopyWithImpl(_$_ElectronicSignatureModel _value,
      $Res Function(_$_ElectronicSignatureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personType = null,
    Object? type = null,
    Object? isTokenRenovation = null,
    Object? hasDeviceToken = null,
    Object? deviceTokenSerialNumber = freezed,
    Object? isACustomsAgent = null,
    Object? userNui = freezed,
    Object? contactAddress = freezed,
    Object? contactPostalCode = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? parroquiaId = freezed,
    Object? hasRUCIncluded = null,
    Object? ruc = freezed,
    Object? validityTime = null,
    Object? useCase = null,
  }) {
    return _then(_$_ElectronicSignatureModel(
      personType: null == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as PersonType,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SignatureType,
      isTokenRenovation: null == isTokenRenovation
          ? _value.isTokenRenovation
          : isTokenRenovation // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDeviceToken: null == hasDeviceToken
          ? _value.hasDeviceToken
          : hasDeviceToken // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceTokenSerialNumber: freezed == deviceTokenSerialNumber
          ? _value.deviceTokenSerialNumber
          : deviceTokenSerialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isACustomsAgent: null == isACustomsAgent
          ? _value.isACustomsAgent
          : isACustomsAgent // ignore: cast_nullable_to_non_nullable
              as bool,
      userNui: freezed == userNui
          ? _value.userNui
          : userNui // ignore: cast_nullable_to_non_nullable
              as String?,
      contactAddress: freezed == contactAddress
          ? _value.contactAddress
          : contactAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPostalCode: freezed == contactPostalCode
          ? _value.contactPostalCode
          : contactPostalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      parroquiaId: freezed == parroquiaId
          ? _value.parroquiaId
          : parroquiaId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      hasRUCIncluded: null == hasRUCIncluded
          ? _value.hasRUCIncluded
          : hasRUCIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      ruc: freezed == ruc
          ? _value.ruc
          : ruc // ignore: cast_nullable_to_non_nullable
              as String?,
      validityTime: null == validityTime
          ? _value.validityTime
          : validityTime // ignore: cast_nullable_to_non_nullable
              as SignatureValidityTimeType,
      useCase: null == useCase
          ? _value.useCase
          : useCase // ignore: cast_nullable_to_non_nullable
              as SignatureUseCaseType,
    ));
  }
}

/// @nodoc

class _$_ElectronicSignatureModel extends _ElectronicSignatureModel {
  const _$_ElectronicSignatureModel(
      {@JsonKey(includeToJson: true)
          this.personType = PersonType.legalRepresentative,
      @JsonKey(includeToJson: true)
          this.type = SignatureType.file,
      this.isTokenRenovation = false,
      this.hasDeviceToken = false,
      this.deviceTokenSerialNumber,
      this.isACustomsAgent = false,
      this.userNui,
      this.contactAddress,
      this.contactPostalCode,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          this.provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          this.cantonId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          this.parroquiaId,
      this.hasRUCIncluded = false,
      this.ruc,
      this.validityTime = SignatureValidityTimeType.oneYear,
      @JsonKey(includeToJson: true)
          this.useCase = SignatureUseCaseType.publicProcurementSystem})
      : super._();

  @override
  @JsonKey(includeToJson: true)
  final PersonType personType;
  @override
  @JsonKey(includeToJson: true)
  final SignatureType type;
  @override
  @JsonKey()
  final bool isTokenRenovation;
  @override
  @JsonKey()
  final bool hasDeviceToken;
  @override
  final String? deviceTokenSerialNumber;
  @override
  @JsonKey()
  final bool isACustomsAgent;
  @override
  final String? userNui;
  @override
  final String? contactAddress;
  @override
  final String? contactPostalCode;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  final LocationModel? provinceId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  final LocationModel? cantonId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  final LocationModel? parroquiaId;
  @override
  @JsonKey()
  final bool hasRUCIncluded;
  @override
  final String? ruc;
  @override
  @JsonKey()
  final SignatureValidityTimeType validityTime;
  @override
  @JsonKey(includeToJson: true)
  final SignatureUseCaseType useCase;

  @override
  String toString() {
    return 'ElectronicSignatureModel(personType: $personType, type: $type, isTokenRenovation: $isTokenRenovation, hasDeviceToken: $hasDeviceToken, deviceTokenSerialNumber: $deviceTokenSerialNumber, isACustomsAgent: $isACustomsAgent, userNui: $userNui, contactAddress: $contactAddress, contactPostalCode: $contactPostalCode, provinceId: $provinceId, cantonId: $cantonId, parroquiaId: $parroquiaId, hasRUCIncluded: $hasRUCIncluded, ruc: $ruc, validityTime: $validityTime, useCase: $useCase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElectronicSignatureModel &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isTokenRenovation, isTokenRenovation) ||
                other.isTokenRenovation == isTokenRenovation) &&
            (identical(other.hasDeviceToken, hasDeviceToken) ||
                other.hasDeviceToken == hasDeviceToken) &&
            (identical(
                    other.deviceTokenSerialNumber, deviceTokenSerialNumber) ||
                other.deviceTokenSerialNumber == deviceTokenSerialNumber) &&
            (identical(other.isACustomsAgent, isACustomsAgent) ||
                other.isACustomsAgent == isACustomsAgent) &&
            (identical(other.userNui, userNui) || other.userNui == userNui) &&
            (identical(other.contactAddress, contactAddress) ||
                other.contactAddress == contactAddress) &&
            (identical(other.contactPostalCode, contactPostalCode) ||
                other.contactPostalCode == contactPostalCode) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.cantonId, cantonId) ||
                other.cantonId == cantonId) &&
            (identical(other.parroquiaId, parroquiaId) ||
                other.parroquiaId == parroquiaId) &&
            (identical(other.hasRUCIncluded, hasRUCIncluded) ||
                other.hasRUCIncluded == hasRUCIncluded) &&
            (identical(other.ruc, ruc) || other.ruc == ruc) &&
            (identical(other.validityTime, validityTime) ||
                other.validityTime == validityTime) &&
            (identical(other.useCase, useCase) || other.useCase == useCase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      personType,
      type,
      isTokenRenovation,
      hasDeviceToken,
      deviceTokenSerialNumber,
      isACustomsAgent,
      userNui,
      contactAddress,
      contactPostalCode,
      provinceId,
      cantonId,
      parroquiaId,
      hasRUCIncluded,
      ruc,
      validityTime,
      useCase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElectronicSignatureModelCopyWith<_$_ElectronicSignatureModel>
      get copyWith => __$$_ElectronicSignatureModelCopyWithImpl<
          _$_ElectronicSignatureModel>(this, _$identity);
}

abstract class _ElectronicSignatureModel extends ElectronicSignatureModel {
  const factory _ElectronicSignatureModel(
      {@JsonKey(includeToJson: true)
          final PersonType personType,
      @JsonKey(includeToJson: true)
          final SignatureType type,
      final bool isTokenRenovation,
      final bool hasDeviceToken,
      final String? deviceTokenSerialNumber,
      final bool isACustomsAgent,
      final String? userNui,
      final String? contactAddress,
      final String? contactPostalCode,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          final LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          final LocationModel? cantonId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          final LocationModel? parroquiaId,
      final bool hasRUCIncluded,
      final String? ruc,
      final SignatureValidityTimeType validityTime,
      @JsonKey(includeToJson: true)
          final SignatureUseCaseType useCase}) = _$_ElectronicSignatureModel;
  const _ElectronicSignatureModel._() : super._();

  @override
  @JsonKey(includeToJson: true)
  PersonType get personType;
  @override
  @JsonKey(includeToJson: true)
  SignatureType get type;
  @override
  bool get isTokenRenovation;
  @override
  bool get hasDeviceToken;
  @override
  String? get deviceTokenSerialNumber;
  @override
  bool get isACustomsAgent;
  @override
  String? get userNui;
  @override
  String? get contactAddress;
  @override
  String? get contactPostalCode;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get provinceId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get cantonId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get parroquiaId;
  @override
  bool get hasRUCIncluded;
  @override
  String? get ruc;
  @override
  SignatureValidityTimeType get validityTime;
  @override
  @JsonKey(includeToJson: true)
  SignatureUseCaseType get useCase;
  @override
  @JsonKey(ignore: true)
  _$$_ElectronicSignatureModelCopyWith<_$_ElectronicSignatureModel>
      get copyWith => throw _privateConstructorUsedError;
}
