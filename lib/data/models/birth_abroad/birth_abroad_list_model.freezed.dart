// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birth_abroad_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BirthAbroadListModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  ForeignType get type => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  RegisterOwnerType get registerOwnerType => throw _privateConstructorUsedError;
  String? get requestOwnerId => throw _privateConstructorUsedError;
  String? get requestOwnerIdentification => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get identification => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get birthCertificateId => throw _privateConstructorUsedError;
  String? get identityId => throw _privateConstructorUsedError;
  String? get powerOfAttorneyId => throw _privateConstructorUsedError;
  String? get provinceId => throw _privateConstructorUsedError;
  String? get cantonId => throw _privateConstructorUsedError;
  String? get agencyId => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: true)
  ProcessStatus get state => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthAbroadListModelCopyWith<BirthAbroadListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthAbroadListModelCopyWith<$Res> {
  factory $BirthAbroadListModelCopyWith(BirthAbroadListModel value,
          $Res Function(BirthAbroadListModel) then) =
      _$BirthAbroadListModelCopyWithImpl<$Res, BirthAbroadListModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeToJson: true) ForeignType type,
      @JsonKey(includeToJson: true) RegisterOwnerType registerOwnerType,
      String? requestOwnerId,
      String? requestOwnerIdentification,
      String? name,
      String? identification,
      String? email,
      String? phone,
      String? birthCertificateId,
      String? identityId,
      String? powerOfAttorneyId,
      String? provinceId,
      String? cantonId,
      String? agencyId,
      @JsonKey(includeFromJson: true) ProcessStatus state,
      DateTime? createAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$BirthAbroadListModelCopyWithImpl<$Res,
        $Val extends BirthAbroadListModel>
    implements $BirthAbroadListModelCopyWith<$Res> {
  _$BirthAbroadListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? registerOwnerType = null,
    Object? requestOwnerId = freezed,
    Object? requestOwnerIdentification = freezed,
    Object? name = freezed,
    Object? identification = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthCertificateId = freezed,
    Object? identityId = freezed,
    Object? powerOfAttorneyId = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? agencyId = freezed,
    Object? state = null,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ForeignType,
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      requestOwnerId: freezed == requestOwnerId
          ? _value.requestOwnerId
          : requestOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestOwnerIdentification: freezed == requestOwnerIdentification
          ? _value.requestOwnerIdentification
          : requestOwnerIdentification // ignore: cast_nullable_to_non_nullable
              as String?,
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
      birthCertificateId: freezed == birthCertificateId
          ? _value.birthCertificateId
          : birthCertificateId // ignore: cast_nullable_to_non_nullable
              as String?,
      identityId: freezed == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
      powerOfAttorneyId: freezed == powerOfAttorneyId
          ? _value.powerOfAttorneyId
          : powerOfAttorneyId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BirthAbroadListModelCopyWith<$Res>
    implements $BirthAbroadListModelCopyWith<$Res> {
  factory _$$_BirthAbroadListModelCopyWith(_$_BirthAbroadListModel value,
          $Res Function(_$_BirthAbroadListModel) then) =
      __$$_BirthAbroadListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeToJson: true) ForeignType type,
      @JsonKey(includeToJson: true) RegisterOwnerType registerOwnerType,
      String? requestOwnerId,
      String? requestOwnerIdentification,
      String? name,
      String? identification,
      String? email,
      String? phone,
      String? birthCertificateId,
      String? identityId,
      String? powerOfAttorneyId,
      String? provinceId,
      String? cantonId,
      String? agencyId,
      @JsonKey(includeFromJson: true) ProcessStatus state,
      DateTime? createAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_BirthAbroadListModelCopyWithImpl<$Res>
    extends _$BirthAbroadListModelCopyWithImpl<$Res, _$_BirthAbroadListModel>
    implements _$$_BirthAbroadListModelCopyWith<$Res> {
  __$$_BirthAbroadListModelCopyWithImpl(_$_BirthAbroadListModel _value,
      $Res Function(_$_BirthAbroadListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? registerOwnerType = null,
    Object? requestOwnerId = freezed,
    Object? requestOwnerIdentification = freezed,
    Object? name = freezed,
    Object? identification = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthCertificateId = freezed,
    Object? identityId = freezed,
    Object? powerOfAttorneyId = freezed,
    Object? provinceId = freezed,
    Object? cantonId = freezed,
    Object? agencyId = freezed,
    Object? state = null,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BirthAbroadListModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ForeignType,
      registerOwnerType: null == registerOwnerType
          ? _value.registerOwnerType
          : registerOwnerType // ignore: cast_nullable_to_non_nullable
              as RegisterOwnerType,
      requestOwnerId: freezed == requestOwnerId
          ? _value.requestOwnerId
          : requestOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      requestOwnerIdentification: freezed == requestOwnerIdentification
          ? _value.requestOwnerIdentification
          : requestOwnerIdentification // ignore: cast_nullable_to_non_nullable
              as String?,
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
      birthCertificateId: freezed == birthCertificateId
          ? _value.birthCertificateId
          : birthCertificateId // ignore: cast_nullable_to_non_nullable
              as String?,
      identityId: freezed == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
      powerOfAttorneyId: freezed == powerOfAttorneyId
          ? _value.powerOfAttorneyId
          : powerOfAttorneyId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_BirthAbroadListModel extends _BirthAbroadListModel {
  const _$_BirthAbroadListModel(
      {this.id = '',
      @JsonKey(includeToJson: true)
          this.type = ForeignType.resident,
      @JsonKey(includeToJson: true)
          this.registerOwnerType = RegisterOwnerType.attorney,
      this.requestOwnerId,
      this.requestOwnerIdentification,
      this.name,
      this.identification,
      this.email,
      this.phone,
      this.birthCertificateId,
      this.identityId,
      this.powerOfAttorneyId,
      this.provinceId,
      this.cantonId,
      this.agencyId,
      @JsonKey(includeFromJson: true)
          this.state = ProcessStatus.pending,
      this.createAt,
      this.updatedAt})
      : super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(includeToJson: true)
  final ForeignType type;
  @override
  @JsonKey(includeToJson: true)
  final RegisterOwnerType registerOwnerType;
  @override
  final String? requestOwnerId;
  @override
  final String? requestOwnerIdentification;
  @override
  final String? name;
  @override
  final String? identification;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? birthCertificateId;
  @override
  final String? identityId;
  @override
  final String? powerOfAttorneyId;
  @override
  final String? provinceId;
  @override
  final String? cantonId;
  @override
  final String? agencyId;
  @override
  @JsonKey(includeFromJson: true)
  final ProcessStatus state;
  @override
  final DateTime? createAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BirthAbroadListModel(id: $id, type: $type, registerOwnerType: $registerOwnerType, requestOwnerId: $requestOwnerId, requestOwnerIdentification: $requestOwnerIdentification, name: $name, identification: $identification, email: $email, phone: $phone, birthCertificateId: $birthCertificateId, identityId: $identityId, powerOfAttorneyId: $powerOfAttorneyId, provinceId: $provinceId, cantonId: $cantonId, agencyId: $agencyId, state: $state, createAt: $createAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthAbroadListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.registerOwnerType, registerOwnerType) ||
                other.registerOwnerType == registerOwnerType) &&
            (identical(other.requestOwnerId, requestOwnerId) ||
                other.requestOwnerId == requestOwnerId) &&
            (identical(other.requestOwnerIdentification,
                    requestOwnerIdentification) ||
                other.requestOwnerIdentification ==
                    requestOwnerIdentification) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identification, identification) ||
                other.identification == identification) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthCertificateId, birthCertificateId) ||
                other.birthCertificateId == birthCertificateId) &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId) &&
            (identical(other.powerOfAttorneyId, powerOfAttorneyId) ||
                other.powerOfAttorneyId == powerOfAttorneyId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.cantonId, cantonId) ||
                other.cantonId == cantonId) &&
            (identical(other.agencyId, agencyId) ||
                other.agencyId == agencyId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      registerOwnerType,
      requestOwnerId,
      requestOwnerIdentification,
      name,
      identification,
      email,
      phone,
      birthCertificateId,
      identityId,
      powerOfAttorneyId,
      provinceId,
      cantonId,
      agencyId,
      state,
      createAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthAbroadListModelCopyWith<_$_BirthAbroadListModel> get copyWith =>
      __$$_BirthAbroadListModelCopyWithImpl<_$_BirthAbroadListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthAbroadListModelToJson(
      this,
    );
  }
}

abstract class _BirthAbroadListModel extends BirthAbroadListModel {
  const factory _BirthAbroadListModel(
      {final String id,
      @JsonKey(includeToJson: true) final ForeignType type,
      @JsonKey(includeToJson: true) final RegisterOwnerType registerOwnerType,
      final String? requestOwnerId,
      final String? requestOwnerIdentification,
      final String? name,
      final String? identification,
      final String? email,
      final String? phone,
      final String? birthCertificateId,
      final String? identityId,
      final String? powerOfAttorneyId,
      final String? provinceId,
      final String? cantonId,
      final String? agencyId,
      @JsonKey(includeFromJson: true) final ProcessStatus state,
      final DateTime? createAt,
      final DateTime? updatedAt}) = _$_BirthAbroadListModel;
  const _BirthAbroadListModel._() : super._();

  @override
  String get id;
  @override
  @JsonKey(includeToJson: true)
  ForeignType get type;
  @override
  @JsonKey(includeToJson: true)
  RegisterOwnerType get registerOwnerType;
  @override
  String? get requestOwnerId;
  @override
  String? get requestOwnerIdentification;
  @override
  String? get name;
  @override
  String? get identification;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get birthCertificateId;
  @override
  String? get identityId;
  @override
  String? get powerOfAttorneyId;
  @override
  String? get provinceId;
  @override
  String? get cantonId;
  @override
  String? get agencyId;
  @override
  @JsonKey(includeFromJson: true)
  ProcessStatus get state;
  @override
  DateTime? get createAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_BirthAbroadListModelCopyWith<_$_BirthAbroadListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
