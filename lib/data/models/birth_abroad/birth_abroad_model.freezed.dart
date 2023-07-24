// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_abroad_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BirthAbroadModel {
  @JsonKey(name: 'type', includeToJson: true)
  ForeignType get foreignType => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  RegisterOwnerType get registerOwnerType => throw _privateConstructorUsedError;
  String? get requestOwner => throw _privateConstructorUsedError;
  RegisterOwner? get registerOwner => throw _privateConstructorUsedError;
  Certificate? get birthCertificate => throw _privateConstructorUsedError;
  Certificate? get identity => throw _privateConstructorUsedError;
  Certificate? get powerOfAttorney => throw _privateConstructorUsedError;
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get cantonId => throw _privateConstructorUsedError;
  @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
  AgencyModel? get agencyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthAbroadModelCopyWith<BirthAbroadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthAbroadModelCopyWith<$Res> {
  factory $BirthAbroadModelCopyWith(
          BirthAbroadModel value, $Res Function(BirthAbroadModel) then) =
      _$BirthAbroadModelCopyWithImpl<$Res, BirthAbroadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type', includeToJson: true)
          ForeignType foreignType,
      @JsonKey(includeToJson: true)
          RegisterOwnerType registerOwnerType,
      String? requestOwner,
      RegisterOwner? registerOwner,
      Certificate? birthCertificate,
      Certificate? identity,
      Certificate? powerOfAttorney,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? cantonId,
      @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
          AgencyModel? agencyId});

  $RegisterOwnerCopyWith<$Res>? get registerOwner;
  $CertificateCopyWith<$Res>? get birthCertificate;
  $CertificateCopyWith<$Res>? get identity;
  $CertificateCopyWith<$Res>? get powerOfAttorney;
  $LocationModelCopyWith<$Res>? get provinceId;
  $LocationModelCopyWith<$Res>? get cantonId;
}

/// @nodoc
class _$BirthAbroadModelCopyWithImpl<$Res, $Val extends BirthAbroadModel>
    implements $BirthAbroadModelCopyWith<$Res> {
  _$BirthAbroadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foreignType = null,
    Object? registerOwnerType = null,
    Object? requestOwner = freezed,
    Object? registerOwner = freezed,
    Object? birthCertificate = freezed,
    Object? identity = freezed,
    Object? powerOfAttorney = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(_value.copyWith(
      foreignType: null == foreignType
          ? _value.foreignType
          : foreignType // ignore: cast_nullable_to_non_nullable
              as ForeignType,
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      registerOwner: freezed == registerOwner
          ? _value.registerOwner
          : registerOwner // ignore: cast_nullable_to_non_nullable
              as RegisterOwner?,
      birthCertificate: freezed == birthCertificate
          ? _value.birthCertificate
          : birthCertificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterOwnerCopyWith<$Res>? get registerOwner {
    if (_value.registerOwner == null) {
      return null;
    }

    return $RegisterOwnerCopyWith<$Res>(_value.registerOwner!, (value) {
      return _then(_value.copyWith(registerOwner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get birthCertificate {
    if (_value.birthCertificate == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.birthCertificate!, (value) {
      return _then(_value.copyWith(birthCertificate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get identity {
    if (_value.identity == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.identity!, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get powerOfAttorney {
    if (_value.powerOfAttorney == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.powerOfAttorney!, (value) {
      return _then(_value.copyWith(powerOfAttorney: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$_BirthAbroadModelCopyWith<$Res>
    implements $BirthAbroadModelCopyWith<$Res> {
  factory _$$_BirthAbroadModelCopyWith(
          _$_BirthAbroadModel value, $Res Function(_$_BirthAbroadModel) then) =
      __$$_BirthAbroadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', includeToJson: true)
          ForeignType foreignType,
      @JsonKey(includeToJson: true)
          RegisterOwnerType registerOwnerType,
      String? requestOwner,
      RegisterOwner? registerOwner,
      Certificate? birthCertificate,
      Certificate? identity,
      Certificate? powerOfAttorney,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          LocationModel? cantonId,
      @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
          AgencyModel? agencyId});

  @override
  $RegisterOwnerCopyWith<$Res>? get registerOwner;
  @override
  $CertificateCopyWith<$Res>? get birthCertificate;
  @override
  $CertificateCopyWith<$Res>? get identity;
  @override
  $CertificateCopyWith<$Res>? get powerOfAttorney;
  @override
  $LocationModelCopyWith<$Res>? get provinceId;
  @override
  $LocationModelCopyWith<$Res>? get cantonId;
}

/// @nodoc
class __$$_BirthAbroadModelCopyWithImpl<$Res>
    extends _$BirthAbroadModelCopyWithImpl<$Res, _$_BirthAbroadModel>
    implements _$$_BirthAbroadModelCopyWith<$Res> {
  __$$_BirthAbroadModelCopyWithImpl(
      _$_BirthAbroadModel _value, $Res Function(_$_BirthAbroadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foreignType = null,
    Object? registerOwnerType = null,
    Object? requestOwner = freezed,
    Object? registerOwner = freezed,
    Object? birthCertificate = freezed,
    Object? identity = freezed,
    Object? powerOfAttorney = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(_$_BirthAbroadModel(
      foreignType: null == foreignType
          ? _value.foreignType
          : foreignType // ignore: cast_nullable_to_non_nullable
              as ForeignType,
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      registerOwner: freezed == registerOwner
          ? _value.registerOwner
          : registerOwner // ignore: cast_nullable_to_non_nullable
              as RegisterOwner?,
      birthCertificate: freezed == birthCertificate
          ? _value.birthCertificate
          : birthCertificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_BirthAbroadModel extends _BirthAbroadModel {
  const _$_BirthAbroadModel(
      {@JsonKey(name: 'type', includeToJson: true)
          this.foreignType = ForeignType.resident,
      @JsonKey(includeToJson: true)
          this.registerOwnerType = RegisterOwnerType.attorney,
      this.requestOwner,
      this.registerOwner,
      this.birthCertificate,
      this.identity,
      this.powerOfAttorney,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          this.provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          this.cantonId,
      @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
          this.agencyId})
      : super._();

  @override
  @JsonKey(name: 'type', includeToJson: true)
  final ForeignType foreignType;
  @override
  @JsonKey(includeToJson: true)
  final RegisterOwnerType registerOwnerType;
  @override
  final String? requestOwner;
  @override
  final RegisterOwner? registerOwner;
  @override
  final Certificate? birthCertificate;
  @override
  final Certificate? identity;
  @override
  final Certificate? powerOfAttorney;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  final LocationModel? provinceId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  final LocationModel? cantonId;
  @override
  @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
  final AgencyModel? agencyId;

  @override
  String toString() {
    return 'BirthAbroadModel(foreignType: $foreignType, registerOwnerType: $registerOwnerType, requestOwner: $requestOwner, registerOwner: $registerOwner, birthCertificate: $birthCertificate, identity: $identity, powerOfAttorney: $powerOfAttorney, provinceId: $provinceId, cantonId: $cantonId, agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthAbroadModel &&
            (identical(other.foreignType, foreignType) ||
                other.foreignType == foreignType) &&
            (identical(other.registerOwnerType, registerOwnerType) ||
                other.registerOwnerType == registerOwnerType) &&
            (identical(other.requestOwner, requestOwner) ||
                other.requestOwner == requestOwner) &&
            (identical(other.registerOwner, registerOwner) ||
                other.registerOwner == registerOwner) &&
            (identical(other.birthCertificate, birthCertificate) ||
                other.birthCertificate == birthCertificate) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.powerOfAttorney, powerOfAttorney) ||
                other.powerOfAttorney == powerOfAttorney) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.cantonId, cantonId) ||
                other.cantonId == cantonId) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foreignType,
      registerOwnerType,
      requestOwner,
      registerOwner,
      birthCertificate,
      identity,
      powerOfAttorney,
      provinceId,
      cantonId,
      agencyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthAbroadModelCopyWith<_$_BirthAbroadModel> get copyWith =>
      __$$_BirthAbroadModelCopyWithImpl<_$_BirthAbroadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthAbroadModelToJson(
      this,
    );
  }
}

abstract class _BirthAbroadModel extends BirthAbroadModel {
  const factory _BirthAbroadModel(
      {@JsonKey(name: 'type', includeToJson: true)
          final ForeignType foreignType,
      @JsonKey(includeToJson: true)
          final RegisterOwnerType registerOwnerType,
      final String? requestOwner,
      final RegisterOwner? registerOwner,
      final Certificate? birthCertificate,
      final Certificate? identity,
      final Certificate? powerOfAttorney,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          final LocationModel? provinceId,
      @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
          final LocationModel? cantonId,
      @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
          final AgencyModel? agencyId}) = _$_BirthAbroadModel;
  const _BirthAbroadModel._() : super._();

  @override
  @JsonKey(name: 'type', includeToJson: true)
  ForeignType get foreignType;
  @override
  @JsonKey(includeToJson: true)
  RegisterOwnerType get registerOwnerType;
  @override
  String? get requestOwner;
  @override
  RegisterOwner? get registerOwner;
  @override
  Certificate? get birthCertificate;
  @override
  Certificate? get identity;
  @override
  Certificate? get powerOfAttorney;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get provinceId;
  @override
  @JsonKey(toJson: LocationModel.locationToJsonNull, includeToJson: true)
  LocationModel? get cantonId;
  @override
  @JsonKey(toJson: AgencyModel.agencyToJson, includeToJson: true)
  AgencyModel? get agencyId;
  @override
  @JsonKey(ignore: true)
  _$$_BirthAbroadModelCopyWith<_$_BirthAbroadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterOwnerSubModel _$RegisterOwnerSubModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterOwnerForm.fromJson(json);
}

/// @nodoc
mixin _$RegisterOwnerSubModel {
  @FormControlAnnotation(validators: [requiredValidator])
  RegisterOwnerType? get registerOwnerType =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String? get identification => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String? get name => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get email => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterOwnerSubModelCopyWith<RegisterOwnerSubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOwnerSubModelCopyWith<$Res> {
  factory $RegisterOwnerSubModelCopyWith(RegisterOwnerSubModel value,
          $Res Function(RegisterOwnerSubModel) then) =
      _$RegisterOwnerSubModelCopyWithImpl<$Res, RegisterOwnerSubModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          RegisterOwnerType? registerOwnerType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String? identification,
      @FormControlAnnotation(validators: [requiredValidator])
          String? name,
      @FormControlAnnotation<String>()
          String? email,
      @FormControlAnnotation<String>()
          String? phone});
}

/// @nodoc
class _$RegisterOwnerSubModelCopyWithImpl<$Res,
        $Val extends RegisterOwnerSubModel>
    implements $RegisterOwnerSubModelCopyWith<$Res> {
  _$RegisterOwnerSubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerOwnerType = freezed,
    Object? identification = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      registerOwnerType: freezed == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType?,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterOwnerFormCopyWith<$Res>
    implements $RegisterOwnerSubModelCopyWith<$Res> {
  factory _$$_RegisterOwnerFormCopyWith(_$_RegisterOwnerForm value,
          $Res Function(_$_RegisterOwnerForm) then) =
      __$$_RegisterOwnerFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          RegisterOwnerType? registerOwnerType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String? identification,
      @FormControlAnnotation(validators: [requiredValidator])
          String? name,
      @FormControlAnnotation<String>()
          String? email,
      @FormControlAnnotation<String>()
          String? phone});
}

/// @nodoc
class __$$_RegisterOwnerFormCopyWithImpl<$Res>
    extends _$RegisterOwnerSubModelCopyWithImpl<$Res, _$_RegisterOwnerForm>
    implements _$$_RegisterOwnerFormCopyWith<$Res> {
  __$$_RegisterOwnerFormCopyWithImpl(
      _$_RegisterOwnerForm _value, $Res Function(_$_RegisterOwnerForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerOwnerType = freezed,
    Object? identification = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_RegisterOwnerForm(
      registerOwnerType: freezed == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType?,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterOwnerForm extends _RegisterOwnerForm {
  const _$_RegisterOwnerForm(
      {@FormControlAnnotation(validators: [requiredValidator])
          this.registerOwnerType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          this.identification,
      @FormControlAnnotation(validators: [requiredValidator])
          this.name,
      @FormControlAnnotation<String>()
          this.email,
      @FormControlAnnotation<String>()
          this.phone})
      : super._();

  factory _$_RegisterOwnerForm.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterOwnerFormFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final RegisterOwnerType? registerOwnerType;
  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String? identification;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String? name;
  @override
  @FormControlAnnotation<String>()
  final String? email;
  @override
  @FormControlAnnotation<String>()
  final String? phone;

  @override
  String toString() {
    return 'RegisterOwnerSubModel(registerOwnerType: $registerOwnerType, identification: $identification, name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterOwnerForm &&
            (identical(other.registerOwnerType, registerOwnerType) ||
                other.registerOwnerType == registerOwnerType) &&
            (identical(other.identification, identification) ||
                other.identification == identification) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, registerOwnerType, identification, name, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterOwnerFormCopyWith<_$_RegisterOwnerForm> get copyWith =>
      __$$_RegisterOwnerFormCopyWithImpl<_$_RegisterOwnerForm>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterOwnerFormToJson(
      this,
    );
  }
}

abstract class _RegisterOwnerForm extends RegisterOwnerSubModel {
  const factory _RegisterOwnerForm(
      {@FormControlAnnotation(validators: [requiredValidator])
          final RegisterOwnerType? registerOwnerType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          final String? identification,
      @FormControlAnnotation(validators: [requiredValidator])
          final String? name,
      @FormControlAnnotation<String>()
          final String? email,
      @FormControlAnnotation<String>()
          final String? phone}) = _$_RegisterOwnerForm;
  const _RegisterOwnerForm._() : super._();

  factory _RegisterOwnerForm.fromJson(Map<String, dynamic> json) =
      _$_RegisterOwnerForm.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  RegisterOwnerType? get registerOwnerType;
  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String? get identification;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String? get name;
  @override
  @FormControlAnnotation<String>()
  String? get email;
  @override
  @FormControlAnnotation<String>()
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterOwnerFormCopyWith<_$_RegisterOwnerForm> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterOwner _$RegisterOwnerFromJson(Map<String, dynamic> json) {
  return _RegisterOwner.fromJson(json);
}

/// @nodoc
mixin _$RegisterOwner {
  String? get name => throw _privateConstructorUsedError;
  String? get identification => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterOwnerCopyWith<RegisterOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOwnerCopyWith<$Res> {
  factory $RegisterOwnerCopyWith(
          RegisterOwner value, $Res Function(RegisterOwner) then) =
      _$RegisterOwnerCopyWithImpl<$Res, RegisterOwner>;
  @useResult
  $Res call(
      {String? name, String? identification, String? email, String? phone});
}

/// @nodoc
class _$RegisterOwnerCopyWithImpl<$Res, $Val extends RegisterOwner>
    implements $RegisterOwnerCopyWith<$Res> {
  _$RegisterOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? identification = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterOwnerCopyWith<$Res>
    implements $RegisterOwnerCopyWith<$Res> {
  factory _$$_RegisterOwnerCopyWith(
          _$_RegisterOwner value, $Res Function(_$_RegisterOwner) then) =
      __$$_RegisterOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? identification, String? email, String? phone});
}

/// @nodoc
class __$$_RegisterOwnerCopyWithImpl<$Res>
    extends _$RegisterOwnerCopyWithImpl<$Res, _$_RegisterOwner>
    implements _$$_RegisterOwnerCopyWith<$Res> {
  __$$_RegisterOwnerCopyWithImpl(
      _$_RegisterOwner _value, $Res Function(_$_RegisterOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? identification = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_RegisterOwner(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      identification: freezed == identification
          ? _value.identification
          : identification // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterOwner extends _RegisterOwner {
  const _$_RegisterOwner(
      {this.name, this.identification, this.email, this.phone})
      : super._();

  factory _$_RegisterOwner.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterOwnerFromJson(json);

  @override
  final String? name;
  @override
  final String? identification;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'RegisterOwner(name: $name, identification: $identification, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterOwner &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identification, identification) ||
                other.identification == identification) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, identification, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterOwnerCopyWith<_$_RegisterOwner> get copyWith =>
      __$$_RegisterOwnerCopyWithImpl<_$_RegisterOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterOwnerToJson(
      this,
    );
  }
}

abstract class _RegisterOwner extends RegisterOwner {
  const factory _RegisterOwner(
      {final String? name,
      final String? identification,
      final String? email,
      final String? phone}) = _$_RegisterOwner;
  const _RegisterOwner._() : super._();

  factory _RegisterOwner.fromJson(Map<String, dynamic> json) =
      _$_RegisterOwner.fromJson;

  @override
  String? get name;
  @override
  String? get identification;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterOwnerCopyWith<_$_RegisterOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentsSubModel _$DocumentsSubModelFromJson(Map<String, dynamic> json) {
  return _DocumentsForm.fromJson(json);
}

/// @nodoc
mixin _$DocumentsSubModel {
  @FormControlAnnotation<RegisterOwnerType>()
  RegisterOwnerType get registerOwnerType => throw _privateConstructorUsedError;
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get birthCertificate => throw _privateConstructorUsedError;
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get identity => throw _privateConstructorUsedError;
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get powerOfAttorney => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsSubModelCopyWith<DocumentsSubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsSubModelCopyWith<$Res> {
  factory $DocumentsSubModelCopyWith(
          DocumentsSubModel value, $Res Function(DocumentsSubModel) then) =
      _$DocumentsSubModelCopyWithImpl<$Res, DocumentsSubModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<RegisterOwnerType>()
          RegisterOwnerType registerOwnerType,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? birthCertificate,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? identity,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? powerOfAttorney});

  $CertificateCopyWith<$Res>? get birthCertificate;
  $CertificateCopyWith<$Res>? get identity;
  $CertificateCopyWith<$Res>? get powerOfAttorney;
}

/// @nodoc
class _$DocumentsSubModelCopyWithImpl<$Res, $Val extends DocumentsSubModel>
    implements $DocumentsSubModelCopyWith<$Res> {
  _$DocumentsSubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerOwnerType = null,
    Object? birthCertificate = freezed,
    Object? identity = freezed,
    Object? powerOfAttorney = freezed,
  }) {
    return _then(_value.copyWith(
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      birthCertificate: freezed == birthCertificate
          ? _value.birthCertificate
          : birthCertificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as Certificate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get birthCertificate {
    if (_value.birthCertificate == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.birthCertificate!, (value) {
      return _then(_value.copyWith(birthCertificate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get identity {
    if (_value.identity == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.identity!, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateCopyWith<$Res>? get powerOfAttorney {
    if (_value.powerOfAttorney == null) {
      return null;
    }

    return $CertificateCopyWith<$Res>(_value.powerOfAttorney!, (value) {
      return _then(_value.copyWith(powerOfAttorney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentsFormCopyWith<$Res>
    implements $DocumentsSubModelCopyWith<$Res> {
  factory _$$_DocumentsFormCopyWith(
          _$_DocumentsForm value, $Res Function(_$_DocumentsForm) then) =
      __$$_DocumentsFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<RegisterOwnerType>()
          RegisterOwnerType registerOwnerType,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? birthCertificate,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? identity,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          Certificate? powerOfAttorney});

  @override
  $CertificateCopyWith<$Res>? get birthCertificate;
  @override
  $CertificateCopyWith<$Res>? get identity;
  @override
  $CertificateCopyWith<$Res>? get powerOfAttorney;
}

/// @nodoc
class __$$_DocumentsFormCopyWithImpl<$Res>
    extends _$DocumentsSubModelCopyWithImpl<$Res, _$_DocumentsForm>
    implements _$$_DocumentsFormCopyWith<$Res> {
  __$$_DocumentsFormCopyWithImpl(
      _$_DocumentsForm _value, $Res Function(_$_DocumentsForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerOwnerType = null,
    Object? birthCertificate = freezed,
    Object? identity = freezed,
    Object? powerOfAttorney = freezed,
  }) {
    return _then(_$_DocumentsForm(
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      birthCertificate: freezed == birthCertificate
          ? _value.birthCertificate
          : birthCertificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Certificate?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as Certificate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentsForm extends _DocumentsForm {
  const _$_DocumentsForm(
      {@FormControlAnnotation<RegisterOwnerType>()
          this.registerOwnerType = RegisterOwnerType.attorney,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          this.birthCertificate,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          this.identity,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          this.powerOfAttorney})
      : super._();

  factory _$_DocumentsForm.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentsFormFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation<RegisterOwnerType>()
  final RegisterOwnerType registerOwnerType;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  final Certificate? birthCertificate;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  final Certificate? identity;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  final Certificate? powerOfAttorney;

  @override
  String toString() {
    return 'DocumentsSubModel(registerOwnerType: $registerOwnerType, birthCertificate: $birthCertificate, identity: $identity, powerOfAttorney: $powerOfAttorney)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentsForm &&
            (identical(other.registerOwnerType, registerOwnerType) ||
                other.registerOwnerType == registerOwnerType) &&
            (identical(other.birthCertificate, birthCertificate) ||
                other.birthCertificate == birthCertificate) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.powerOfAttorney, powerOfAttorney) ||
                other.powerOfAttorney == powerOfAttorney));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, registerOwnerType,
      birthCertificate, identity, powerOfAttorney);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentsFormCopyWith<_$_DocumentsForm> get copyWith =>
      __$$_DocumentsFormCopyWithImpl<_$_DocumentsForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentsFormToJson(
      this,
    );
  }
}

abstract class _DocumentsForm extends DocumentsSubModel {
  const factory _DocumentsForm(
      {@FormControlAnnotation<RegisterOwnerType>()
          final RegisterOwnerType registerOwnerType,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          final Certificate? birthCertificate,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          final Certificate? identity,
      @FormControlAnnotation<Certificate>(validators: [requiredValidator])
          final Certificate? powerOfAttorney}) = _$_DocumentsForm;
  const _DocumentsForm._() : super._();

  factory _DocumentsForm.fromJson(Map<String, dynamic> json) =
      _$_DocumentsForm.fromJson;

  @override
  @FormControlAnnotation<RegisterOwnerType>()
  RegisterOwnerType get registerOwnerType;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get birthCertificate;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get identity;
  @override
  @FormControlAnnotation<Certificate>(validators: [requiredValidator])
  Certificate? get powerOfAttorney;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentsFormCopyWith<_$_DocumentsForm> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationSubModel _$LocationSubModelFromJson(Map<String, dynamic> json) {
  return _LocationForm.fromJson(json);
}

/// @nodoc
mixin _$LocationSubModel {
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  LocationModel? get province => throw _privateConstructorUsedError;
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  LocationModel? get canton => throw _privateConstructorUsedError;
  @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
  AgencyModel? get agency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationSubModelCopyWith<LocationSubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSubModelCopyWith<$Res> {
  factory $LocationSubModelCopyWith(
          LocationSubModel value, $Res Function(LocationSubModel) then) =
      _$LocationSubModelCopyWithImpl<$Res, LocationSubModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          LocationModel? province,
      @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          LocationModel? canton,
      @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
          AgencyModel? agency});

  $LocationModelCopyWith<$Res>? get province;
  $LocationModelCopyWith<$Res>? get canton;
}

/// @nodoc
class _$LocationSubModelCopyWithImpl<$Res, $Val extends LocationSubModel>
    implements $LocationSubModelCopyWith<$Res> {
  _$LocationSubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? canton = freezed,
    Object? agency = freezed,
  }) {
    return _then(_value.copyWith(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      canton: freezed == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get canton {
    if (_value.canton == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.canton!, (value) {
      return _then(_value.copyWith(canton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationFormCopyWith<$Res>
    implements $LocationSubModelCopyWith<$Res> {
  factory _$$_LocationFormCopyWith(
          _$_LocationForm value, $Res Function(_$_LocationForm) then) =
      __$$_LocationFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          LocationModel? province,
      @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          LocationModel? canton,
      @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
          AgencyModel? agency});

  @override
  $LocationModelCopyWith<$Res>? get province;
  @override
  $LocationModelCopyWith<$Res>? get canton;
}

/// @nodoc
class __$$_LocationFormCopyWithImpl<$Res>
    extends _$LocationSubModelCopyWithImpl<$Res, _$_LocationForm>
    implements _$$_LocationFormCopyWith<$Res> {
  __$$_LocationFormCopyWithImpl(
      _$_LocationForm _value, $Res Function(_$_LocationForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? canton = freezed,
    Object? agency = freezed,
  }) {
    return _then(_$_LocationForm(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      canton: freezed == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationForm extends _LocationForm {
  const _$_LocationForm(
      {@FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          this.province,
      @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          this.canton,
      @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
          this.agency})
      : super._();

  factory _$_LocationForm.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFormFromJson(json);

  @override
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  final LocationModel? province;
  @override
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  final LocationModel? canton;
  @override
  @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
  final AgencyModel? agency;

  @override
  String toString() {
    return 'LocationSubModel(province: $province, canton: $canton, agency: $agency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationForm &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.canton, canton) || other.canton == canton) &&
            (identical(other.agency, agency) || other.agency == agency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, province, canton, agency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationFormCopyWith<_$_LocationForm> get copyWith =>
      __$$_LocationFormCopyWithImpl<_$_LocationForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationFormToJson(
      this,
    );
  }
}

abstract class _LocationForm extends LocationSubModel {
  const factory _LocationForm(
      {@FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          final LocationModel? province,
      @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
          final LocationModel? canton,
      @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
          final AgencyModel? agency}) = _$_LocationForm;
  const _LocationForm._() : super._();

  factory _LocationForm.fromJson(Map<String, dynamic> json) =
      _$_LocationForm.fromJson;

  @override
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  LocationModel? get province;
  @override
  @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
  LocationModel? get canton;
  @override
  @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
  AgencyModel? get agency;
  @override
  @JsonKey(ignore: true)
  _$$_LocationFormCopyWith<_$_LocationForm> get copyWith =>
      throw _privateConstructorUsedError;
}

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificateCopyWith<Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificateCopyWith<$Res> {
  factory $CertificateCopyWith(
          Certificate value, $Res Function(Certificate) then) =
      _$CertificateCopyWithImpl<$Res, Certificate>;
  @useResult
  $Res call({String? id, String? name, String? file});
}

/// @nodoc
class _$CertificateCopyWithImpl<$Res, $Val extends Certificate>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CertificateCopyWith<$Res>
    implements $CertificateCopyWith<$Res> {
  factory _$$_CertificateCopyWith(
          _$_Certificate value, $Res Function(_$_Certificate) then) =
      __$$_CertificateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? file});
}

/// @nodoc
class __$$_CertificateCopyWithImpl<$Res>
    extends _$CertificateCopyWithImpl<$Res, _$_Certificate>
    implements _$$_CertificateCopyWith<$Res> {
  __$$_CertificateCopyWithImpl(
      _$_Certificate _value, $Res Function(_$_Certificate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_$_Certificate(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Certificate extends _Certificate {
  const _$_Certificate({this.id, this.name, this.file}) : super._();

  factory _$_Certificate.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? file;

  @override
  String toString() {
    return 'Certificate(id: $id, name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Certificate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CertificateCopyWith<_$_Certificate> get copyWith =>
      __$$_CertificateCopyWithImpl<_$_Certificate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificateToJson(
      this,
    );
  }
}

abstract class _Certificate extends Certificate {
  const factory _Certificate(
      {final String? id,
      final String? name,
      final String? file}) = _$_Certificate;
  const _Certificate._() : super._();

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$_Certificate.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get file;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateCopyWith<_$_Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}
