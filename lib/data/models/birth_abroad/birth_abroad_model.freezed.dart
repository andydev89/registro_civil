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
  @JsonKey(includeToJson: true)
  ForeignType get foreignType => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  RegisterOwnerType get registerOwnerType => throw _privateConstructorUsedError;
  String? get requestOwner => throw _privateConstructorUsedError;
  RegisterOwner? get registerOwner => throw _privateConstructorUsedError;
  Certificate? get birthCertificate => throw _privateConstructorUsedError;
  Certificate? get identity => throw _privateConstructorUsedError;
  Certificate? get powerOfAttorney => throw _privateConstructorUsedError;
  String? get provinceId => throw _privateConstructorUsedError;
  String? get cantonId => throw _privateConstructorUsedError;
  String? get agencyId => throw _privateConstructorUsedError;

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
      {@JsonKey(includeToJson: true) ForeignType foreignType,
      @JsonKey(includeToJson: true) RegisterOwnerType registerOwnerType,
      String? requestOwner,
      RegisterOwner? registerOwner,
      Certificate? birthCertificate,
      Certificate? identity,
      Certificate? powerOfAttorney,
      String? provinceId,
      String? cantonId,
      String? agencyId});

  $RegisterOwnerCopyWith<$Res>? get registerOwner;
  $CertificateCopyWith<$Res>? get birthCertificate;
  $CertificateCopyWith<$Res>? get identity;
  $CertificateCopyWith<$Res>? get powerOfAttorney;
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
              as String?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as String?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(includeToJson: true) ForeignType foreignType,
      @JsonKey(includeToJson: true) RegisterOwnerType registerOwnerType,
      String? requestOwner,
      RegisterOwner? registerOwner,
      Certificate? birthCertificate,
      Certificate? identity,
      Certificate? powerOfAttorney,
      String? provinceId,
      String? cantonId,
      String? agencyId});

  @override
  $RegisterOwnerCopyWith<$Res>? get registerOwner;
  @override
  $CertificateCopyWith<$Res>? get birthCertificate;
  @override
  $CertificateCopyWith<$Res>? get identity;
  @override
  $CertificateCopyWith<$Res>? get powerOfAttorney;
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
              as String?,
      cantonId: freezed == cantonId
          ? _value.cantonId
          : cantonId // ignore: cast_nullable_to_non_nullable
              as String?,
      agencyId: freezed == agencyId
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_BirthAbroadModel extends _BirthAbroadModel {
  const _$_BirthAbroadModel(
      {@JsonKey(includeToJson: true)
          this.foreignType = ForeignType.resident,
      @JsonKey(includeToJson: true)
          this.registerOwnerType = RegisterOwnerType.attorney,
      this.requestOwner,
      this.registerOwner,
      this.birthCertificate,
      this.identity,
      this.powerOfAttorney,
      this.provinceId,
      this.cantonId,
      this.agencyId})
      : super._();

  @override
  @JsonKey(includeToJson: true)
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
  final String? provinceId;
  @override
  final String? cantonId;
  @override
  final String? agencyId;

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
      {@JsonKey(includeToJson: true) final ForeignType foreignType,
      @JsonKey(includeToJson: true) final RegisterOwnerType registerOwnerType,
      final String? requestOwner,
      final RegisterOwner? registerOwner,
      final Certificate? birthCertificate,
      final Certificate? identity,
      final Certificate? powerOfAttorney,
      final String? provinceId,
      final String? cantonId,
      final String? agencyId}) = _$_BirthAbroadModel;
  const _BirthAbroadModel._() : super._();

  @override
  @JsonKey(includeToJson: true)
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
  String? get provinceId;
  @override
  String? get cantonId;
  @override
  String? get agencyId;
  @override
  @JsonKey(ignore: true)
  _$$_BirthAbroadModelCopyWith<_$_BirthAbroadModel> get copyWith =>
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

Certificate _$CertificateFromJson(Map<String, dynamic> json) {
  return _Certificate.fromJson(json);
}

/// @nodoc
mixin _$Certificate {
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
  $Res call({String? name, String? file});
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
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String? name, String? file});
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
    Object? name = freezed,
    Object? file = freezed,
  }) {
    return _then(_$_Certificate(
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
  const _$_Certificate({this.name, this.file}) : super._();

  factory _$_Certificate.fromJson(Map<String, dynamic> json) =>
      _$$_CertificateFromJson(json);

  @override
  final String? name;
  @override
  final String? file;

  @override
  String toString() {
    return 'Certificate(name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Certificate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, file);

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
  const factory _Certificate({final String? name, final String? file}) =
      _$_Certificate;
  const _Certificate._() : super._();

  factory _Certificate.fromJson(Map<String, dynamic> json) =
      _$_Certificate.fromJson;

  @override
  String? get name;
  @override
  String? get file;
  @override
  @JsonKey(ignore: true)
  _$$_CertificateCopyWith<_$_Certificate> get copyWith =>
      throw _privateConstructorUsedError;
}
