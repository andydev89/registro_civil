// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'residence_registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResidenceRegistration _$ResidenceRegistrationFromJson(
    Map<String, dynamic> json) {
  return _ResidenceRegistration.fromJson(json);
}

/// @nodoc
mixin _$ResidenceRegistration {
  @FormControlAnnotation<String>()
  @JsonKey(includeToJson: true, includeFromJson: false)
  String get userId => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get observations => throw _privateConstructorUsedError;
  @FormArrayAnnotation<Residential>()
  List<Residential> get residentials => throw _privateConstructorUsedError;
  @FormControlAnnotation<StatusType>()
  @JsonKey(includeToJson: false, includeFromJson: true)
  StatusType get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidenceRegistrationCopyWith<ResidenceRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidenceRegistrationCopyWith<$Res> {
  factory $ResidenceRegistrationCopyWith(ResidenceRegistration value,
          $Res Function(ResidenceRegistration) then) =
      _$ResidenceRegistrationCopyWithImpl<$Res, ResidenceRegistration>;
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
      @JsonKey(includeToJson: true, includeFromJson: false)
          String userId,
      @FormControlAnnotation(validators: [requiredValidator])
          String observations,
      @FormArrayAnnotation<Residential>()
          List<Residential> residentials,
      @FormControlAnnotation<StatusType>()
      @JsonKey(includeToJson: false, includeFromJson: true)
          StatusType state});
}

/// @nodoc
class _$ResidenceRegistrationCopyWithImpl<$Res,
        $Val extends ResidenceRegistration>
    implements $ResidenceRegistrationCopyWith<$Res> {
  _$ResidenceRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? observations = null,
    Object? residentials = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      observations: null == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String,
      residentials: null == residentials
          ? _value.residentials
          : residentials // ignore: cast_nullable_to_non_nullable
              as List<Residential>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResidenceRegistrationCopyWith<$Res>
    implements $ResidenceRegistrationCopyWith<$Res> {
  factory _$$_ResidenceRegistrationCopyWith(_$_ResidenceRegistration value,
          $Res Function(_$_ResidenceRegistration) then) =
      __$$_ResidenceRegistrationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
      @JsonKey(includeToJson: true, includeFromJson: false)
          String userId,
      @FormControlAnnotation(validators: [requiredValidator])
          String observations,
      @FormArrayAnnotation<Residential>()
          List<Residential> residentials,
      @FormControlAnnotation<StatusType>()
      @JsonKey(includeToJson: false, includeFromJson: true)
          StatusType state});
}

/// @nodoc
class __$$_ResidenceRegistrationCopyWithImpl<$Res>
    extends _$ResidenceRegistrationCopyWithImpl<$Res, _$_ResidenceRegistration>
    implements _$$_ResidenceRegistrationCopyWith<$Res> {
  __$$_ResidenceRegistrationCopyWithImpl(_$_ResidenceRegistration _value,
      $Res Function(_$_ResidenceRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? observations = null,
    Object? residentials = null,
    Object? state = null,
  }) {
    return _then(_$_ResidenceRegistration(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      observations: null == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as String,
      residentials: null == residentials
          ? _value._residentials
          : residentials // ignore: cast_nullable_to_non_nullable
              as List<Residential>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResidenceRegistration extends _ResidenceRegistration {
  const _$_ResidenceRegistration(
      {@FormControlAnnotation<String>()
      @JsonKey(includeToJson: true, includeFromJson: false)
          this.userId = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.observations = '',
      @FormArrayAnnotation<Residential>()
          final List<Residential> residentials = const [],
      @FormControlAnnotation<StatusType>()
      @JsonKey(includeToJson: false, includeFromJson: true)
          this.state = StatusType.active})
      : _residentials = residentials,
        super._();

  factory _$_ResidenceRegistration.fromJson(Map<String, dynamic> json) =>
      _$$_ResidenceRegistrationFromJson(json);

  @override
  @FormControlAnnotation<String>()
  @JsonKey(includeToJson: true, includeFromJson: false)
  final String userId;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String observations;
  final List<Residential> _residentials;
  @override
  @JsonKey()
  @FormArrayAnnotation<Residential>()
  List<Residential> get residentials {
    if (_residentials is EqualUnmodifiableListView) return _residentials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residentials);
  }

  @override
  @FormControlAnnotation<StatusType>()
  @JsonKey(includeToJson: false, includeFromJson: true)
  final StatusType state;

  @override
  String toString() {
    return 'ResidenceRegistration(userId: $userId, observations: $observations, residentials: $residentials, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResidenceRegistration &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.observations, observations) ||
                other.observations == observations) &&
            const DeepCollectionEquality()
                .equals(other._residentials, _residentials) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, observations,
      const DeepCollectionEquality().hash(_residentials), state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResidenceRegistrationCopyWith<_$_ResidenceRegistration> get copyWith =>
      __$$_ResidenceRegistrationCopyWithImpl<_$_ResidenceRegistration>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResidenceRegistrationToJson(
      this,
    );
  }
}

abstract class _ResidenceRegistration extends ResidenceRegistration {
  const factory _ResidenceRegistration(
      {@FormControlAnnotation<String>()
      @JsonKey(includeToJson: true, includeFromJson: false)
          final String userId,
      @FormControlAnnotation(validators: [requiredValidator])
          final String observations,
      @FormArrayAnnotation<Residential>()
          final List<Residential> residentials,
      @FormControlAnnotation<StatusType>()
      @JsonKey(includeToJson: false, includeFromJson: true)
          final StatusType state}) = _$_ResidenceRegistration;
  const _ResidenceRegistration._() : super._();

  factory _ResidenceRegistration.fromJson(Map<String, dynamic> json) =
      _$_ResidenceRegistration.fromJson;

  @override
  @FormControlAnnotation<String>()
  @JsonKey(includeToJson: true, includeFromJson: false)
  String get userId;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get observations;
  @override
  @FormArrayAnnotation<Residential>()
  List<Residential> get residentials;
  @override
  @FormControlAnnotation<StatusType>()
  @JsonKey(includeToJson: false, includeFromJson: true)
  StatusType get state;
  @override
  @JsonKey(ignore: true)
  _$$_ResidenceRegistrationCopyWith<_$_ResidenceRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

Residential _$ResidentialFromJson(Map<String, dynamic> json) {
  return _Residential.fromJson(json);
}

/// @nodoc
mixin _$Residential {
  @FormControlAnnotation(validators: [requiredValidator])
  bool get electricLightMeter => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String get electricalCode => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get province => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get canton => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get parroquia => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get mainStreet => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get backStreet => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialHousingType get housingType => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialTenureHousingAgreementeType get tenureHousingTypeAgreement =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get numberVillaBuilding => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get floorNumber => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get departmentNumber => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidenceType get type => throw _privateConstructorUsedError;
  @FormArrayAnnotation<Dependent>()
  List<Dependent> get dependents => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidentialCopyWith<Residential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentialCopyWith<$Res> {
  factory $ResidentialCopyWith(
          Residential value, $Res Function(Residential) then) =
      _$ResidentialCopyWithImpl<$Res, Residential>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          bool electricLightMeter,
      @FormControlAnnotation<String>()
          String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidenceType type,
      @FormArrayAnnotation<Dependent>()
          List<Dependent> dependents,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          String id});

  $LocationModelCopyWith<$Res> get province;
  $LocationModelCopyWith<$Res> get canton;
  $LocationModelCopyWith<$Res> get parroquia;
}

/// @nodoc
class _$ResidentialCopyWithImpl<$Res, $Val extends Residential>
    implements $ResidentialCopyWith<$Res> {
  _$ResidentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? electricLightMeter = null,
    Object? electricalCode = null,
    Object? province = null,
    Object? canton = null,
    Object? parroquia = null,
    Object? mainStreet = null,
    Object? backStreet = null,
    Object? housingType = null,
    Object? tenureHousingTypeAgreement = null,
    Object? numberVillaBuilding = null,
    Object? floorNumber = null,
    Object? departmentNumber = null,
    Object? type = null,
    Object? dependents = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      electricLightMeter: null == electricLightMeter
          ? _value.electricLightMeter
          : electricLightMeter // ignore: cast_nullable_to_non_nullable
              as bool,
      electricalCode: null == electricalCode
          ? _value.electricalCode
          : electricalCode // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      canton: null == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      parroquia: null == parroquia
          ? _value.parroquia
          : parroquia // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      mainStreet: null == mainStreet
          ? _value.mainStreet
          : mainStreet // ignore: cast_nullable_to_non_nullable
              as String,
      backStreet: null == backStreet
          ? _value.backStreet
          : backStreet // ignore: cast_nullable_to_non_nullable
              as String,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as ResidentialHousingType,
      tenureHousingTypeAgreement: null == tenureHousingTypeAgreement
          ? _value.tenureHousingTypeAgreement
          : tenureHousingTypeAgreement // ignore: cast_nullable_to_non_nullable
              as ResidentialTenureHousingAgreementeType,
      numberVillaBuilding: null == numberVillaBuilding
          ? _value.numberVillaBuilding
          : numberVillaBuilding // ignore: cast_nullable_to_non_nullable
              as String,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departmentNumber: null == departmentNumber
          ? _value.departmentNumber
          : departmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
      dependents: null == dependents
          ? _value.dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<Dependent>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get province {
    return $LocationModelCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get canton {
    return $LocationModelCopyWith<$Res>(_value.canton, (value) {
      return _then(_value.copyWith(canton: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get parroquia {
    return $LocationModelCopyWith<$Res>(_value.parroquia, (value) {
      return _then(_value.copyWith(parroquia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResidentialCopyWith<$Res>
    implements $ResidentialCopyWith<$Res> {
  factory _$$_ResidentialCopyWith(
          _$_Residential value, $Res Function(_$_Residential) then) =
      __$$_ResidentialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          bool electricLightMeter,
      @FormControlAnnotation<String>()
          String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidenceType type,
      @FormArrayAnnotation<Dependent>()
          List<Dependent> dependents,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          String id});

  @override
  $LocationModelCopyWith<$Res> get province;
  @override
  $LocationModelCopyWith<$Res> get canton;
  @override
  $LocationModelCopyWith<$Res> get parroquia;
}

/// @nodoc
class __$$_ResidentialCopyWithImpl<$Res>
    extends _$ResidentialCopyWithImpl<$Res, _$_Residential>
    implements _$$_ResidentialCopyWith<$Res> {
  __$$_ResidentialCopyWithImpl(
      _$_Residential _value, $Res Function(_$_Residential) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? electricLightMeter = null,
    Object? electricalCode = null,
    Object? province = null,
    Object? canton = null,
    Object? parroquia = null,
    Object? mainStreet = null,
    Object? backStreet = null,
    Object? housingType = null,
    Object? tenureHousingTypeAgreement = null,
    Object? numberVillaBuilding = null,
    Object? floorNumber = null,
    Object? departmentNumber = null,
    Object? type = null,
    Object? dependents = null,
    Object? id = null,
  }) {
    return _then(_$_Residential(
      electricLightMeter: null == electricLightMeter
          ? _value.electricLightMeter
          : electricLightMeter // ignore: cast_nullable_to_non_nullable
              as bool,
      electricalCode: null == electricalCode
          ? _value.electricalCode
          : electricalCode // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      canton: null == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      parroquia: null == parroquia
          ? _value.parroquia
          : parroquia // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      mainStreet: null == mainStreet
          ? _value.mainStreet
          : mainStreet // ignore: cast_nullable_to_non_nullable
              as String,
      backStreet: null == backStreet
          ? _value.backStreet
          : backStreet // ignore: cast_nullable_to_non_nullable
              as String,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as ResidentialHousingType,
      tenureHousingTypeAgreement: null == tenureHousingTypeAgreement
          ? _value.tenureHousingTypeAgreement
          : tenureHousingTypeAgreement // ignore: cast_nullable_to_non_nullable
              as ResidentialTenureHousingAgreementeType,
      numberVillaBuilding: null == numberVillaBuilding
          ? _value.numberVillaBuilding
          : numberVillaBuilding // ignore: cast_nullable_to_non_nullable
              as String,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departmentNumber: null == departmentNumber
          ? _value.departmentNumber
          : departmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
      dependents: null == dependents
          ? _value._dependents
          : dependents // ignore: cast_nullable_to_non_nullable
              as List<Dependent>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Residential extends _Residential {
  const _$_Residential(
      {@FormControlAnnotation(validators: [requiredValidator])
          this.electricLightMeter = false,
      @FormControlAnnotation<String>()
          this.electricalCode = '',
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required this.province,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required this.canton,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required this.parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          this.mainStreet = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.backStreet = '',
      @FormControlAnnotation(validators: [requiredValidator])
          required this.housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          this.numberVillaBuilding = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.floorNumber = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.departmentNumber = '',
      @FormControlAnnotation(validators: [requiredValidator])
          required this.type,
      @FormArrayAnnotation<Dependent>()
          final List<Dependent> dependents = const [],
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          this.id = ''})
      : _dependents = dependents,
        super._();

  factory _$_Residential.fromJson(Map<String, dynamic> json) =>
      _$$_ResidentialFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final bool electricLightMeter;
  @override
  @JsonKey()
  @FormControlAnnotation<String>()
  final String electricalCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  final LocationModel province;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  final LocationModel canton;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  final LocationModel parroquia;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String mainStreet;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String backStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidentialHousingType housingType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String numberVillaBuilding;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String floorNumber;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String departmentNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidenceType type;
  final List<Dependent> _dependents;
  @override
  @JsonKey()
  @FormArrayAnnotation<Dependent>()
  List<Dependent> get dependents {
    if (_dependents is EqualUnmodifiableListView) return _dependents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependents);
  }

  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  final String id;

  @override
  String toString() {
    return 'Residential(electricLightMeter: $electricLightMeter, electricalCode: $electricalCode, province: $province, canton: $canton, parroquia: $parroquia, mainStreet: $mainStreet, backStreet: $backStreet, housingType: $housingType, tenureHousingTypeAgreement: $tenureHousingTypeAgreement, numberVillaBuilding: $numberVillaBuilding, floorNumber: $floorNumber, departmentNumber: $departmentNumber, type: $type, dependents: $dependents, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Residential &&
            (identical(other.electricLightMeter, electricLightMeter) ||
                other.electricLightMeter == electricLightMeter) &&
            (identical(other.electricalCode, electricalCode) ||
                other.electricalCode == electricalCode) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.canton, canton) || other.canton == canton) &&
            (identical(other.parroquia, parroquia) ||
                other.parroquia == parroquia) &&
            (identical(other.mainStreet, mainStreet) ||
                other.mainStreet == mainStreet) &&
            (identical(other.backStreet, backStreet) ||
                other.backStreet == backStreet) &&
            (identical(other.housingType, housingType) ||
                other.housingType == housingType) &&
            (identical(other.tenureHousingTypeAgreement,
                    tenureHousingTypeAgreement) ||
                other.tenureHousingTypeAgreement ==
                    tenureHousingTypeAgreement) &&
            (identical(other.numberVillaBuilding, numberVillaBuilding) ||
                other.numberVillaBuilding == numberVillaBuilding) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.departmentNumber, departmentNumber) ||
                other.departmentNumber == departmentNumber) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._dependents, _dependents) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      electricLightMeter,
      electricalCode,
      province,
      canton,
      parroquia,
      mainStreet,
      backStreet,
      housingType,
      tenureHousingTypeAgreement,
      numberVillaBuilding,
      floorNumber,
      departmentNumber,
      type,
      const DeepCollectionEquality().hash(_dependents),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResidentialCopyWith<_$_Residential> get copyWith =>
      __$$_ResidentialCopyWithImpl<_$_Residential>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResidentialToJson(
      this,
    );
  }
}

abstract class _Residential extends Residential {
  const factory _Residential(
      {@FormControlAnnotation(validators: [requiredValidator])
          final bool electricLightMeter,
      @FormControlAnnotation<String>()
          final String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required final LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required final LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required final LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          final String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          final String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidentialTenureHousingAgreementeType
              tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          final String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          final String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          final String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidenceType type,
      @FormArrayAnnotation<Dependent>()
          final List<Dependent> dependents,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          final String id}) = _$_Residential;
  const _Residential._() : super._();

  factory _Residential.fromJson(Map<String, dynamic> json) =
      _$_Residential.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  bool get electricLightMeter;
  @override
  @FormControlAnnotation<String>()
  String get electricalCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get province;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get canton;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get parroquia;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get mainStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get backStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialHousingType get housingType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialTenureHousingAgreementeType get tenureHousingTypeAgreement;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get numberVillaBuilding;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get floorNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get departmentNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidenceType get type;
  @override
  @FormArrayAnnotation<Dependent>()
  List<Dependent> get dependents;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_ResidentialCopyWith<_$_Residential> get copyWith =>
      throw _privateConstructorUsedError;
}

Dependent _$DependentFromJson(Map<String, dynamic> json) {
  return _Dependent.fromJson(json);
}

/// @nodoc
mixin _$Dependent {
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nuiDependents => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialDependentRelationType get relationship =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String get date => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get name => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get lastname => throw _privateConstructorUsedError;
  @FormControlAnnotation<StatusType>()
  StatusType get state => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  String get id => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  @FormControlAnnotation(validators: [requiredValidator])
  TranslatableString get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DependentCopyWith<Dependent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependentCopyWith<$Res> {
  factory $DependentCopyWith(Dependent value, $Res Function(Dependent) then) =
      _$DependentCopyWithImpl<$Res, Dependent>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nuiDependents,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialDependentRelationType relationship,
      @FormControlAnnotation<String>()
          String date,
      @FormControlAnnotation(validators: [requiredValidator])
          String name,
      @FormControlAnnotation(validators: [requiredValidator])
          String lastname,
      @FormControlAnnotation<StatusType>()
          StatusType state,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      @FormControlAnnotation(validators: [requiredValidator])
          TranslatableString address});
}

/// @nodoc
class _$DependentCopyWithImpl<$Res, $Val extends Dependent>
    implements $DependentCopyWith<$Res> {
  _$DependentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nuiDependents = null,
    Object? relationship = null,
    Object? date = null,
    Object? name = null,
    Object? lastname = null,
    Object? state = null,
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      nuiDependents: null == nuiDependents
          ? _value.nuiDependents
          : nuiDependents // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as ResidentialDependentRelationType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatusType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as TranslatableString,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DependentCopyWith<$Res> implements $DependentCopyWith<$Res> {
  factory _$$_DependentCopyWith(
          _$_Dependent value, $Res Function(_$_Dependent) then) =
      __$$_DependentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nuiDependents,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialDependentRelationType relationship,
      @FormControlAnnotation<String>()
          String date,
      @FormControlAnnotation(validators: [requiredValidator])
          String name,
      @FormControlAnnotation(validators: [requiredValidator])
          String lastname,
      @FormControlAnnotation<StatusType>()
          StatusType state,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      @FormControlAnnotation(validators: [requiredValidator])
          TranslatableString address});
}

/// @nodoc
class __$$_DependentCopyWithImpl<$Res>
    extends _$DependentCopyWithImpl<$Res, _$_Dependent>
    implements _$$_DependentCopyWith<$Res> {
  __$$_DependentCopyWithImpl(
      _$_Dependent _value, $Res Function(_$_Dependent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nuiDependents = null,
    Object? relationship = null,
    Object? date = null,
    Object? name = null,
    Object? lastname = null,
    Object? state = null,
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_$_Dependent(
      nuiDependents: null == nuiDependents
          ? _value.nuiDependents
          : nuiDependents // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as ResidentialDependentRelationType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatusType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as TranslatableString,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dependent extends _Dependent {
  const _$_Dependent(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          required this.nuiDependents,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.relationship,
      @FormControlAnnotation<String>()
          required this.date,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.name,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.lastname,
      @FormControlAnnotation<StatusType>()
          this.state = StatusType.active,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          this.id = '',
      @JsonKey(includeToJson: false, includeFromJson: false)
      @FormControlAnnotation(validators: [requiredValidator])
          this.address = const TranslatableString('')})
      : super._();

  factory _$_Dependent.fromJson(Map<String, dynamic> json) =>
      _$$_DependentFromJson(json);

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nuiDependents;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidentialDependentRelationType relationship;
  @override
  @FormControlAnnotation<String>()
  final String date;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String name;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String lastname;
  @override
  @JsonKey()
  @FormControlAnnotation<StatusType>()
  final StatusType state;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  final String id;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  @FormControlAnnotation(validators: [requiredValidator])
  final TranslatableString address;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DependentCopyWith<_$_Dependent> get copyWith =>
      __$$_DependentCopyWithImpl<_$_Dependent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DependentToJson(
      this,
    );
  }
}

abstract class _Dependent extends Dependent {
  const factory _Dependent(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          required final String nuiDependents,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidentialDependentRelationType relationship,
      @FormControlAnnotation<String>()
          required final String date,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String name,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String lastname,
      @FormControlAnnotation<StatusType>()
          final StatusType state,
      @JsonKey(includeToJson: false, includeFromJson: true)
      @FormControlAnnotation<String>()
          final String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      @FormControlAnnotation(validators: [requiredValidator])
          final TranslatableString address}) = _$_Dependent;
  const _Dependent._() : super._();

  factory _Dependent.fromJson(Map<String, dynamic> json) =
      _$_Dependent.fromJson;

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nuiDependents;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialDependentRelationType get relationship;
  @override
  @FormControlAnnotation<String>()
  String get date;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get name;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get lastname;
  @override
  @FormControlAnnotation<StatusType>()
  StatusType get state;
  @override
  @JsonKey(includeToJson: false, includeFromJson: true)
  @FormControlAnnotation<String>()
  String get id;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  @FormControlAnnotation(validators: [requiredValidator])
  TranslatableString get address;
  @override
  @JsonKey(ignore: true)
  _$$_DependentCopyWith<_$_Dependent> get copyWith =>
      throw _privateConstructorUsedError;
}

FirstStepResidenceModel _$FirstStepResidenceModelFromJson(
    Map<String, dynamic> json) {
  return _FirstStepResidenceModel.fromJson(json);
}

/// @nodoc
mixin _$FirstStepResidenceModel {
  @FormControlAnnotation(validators: [requiredValidator])
  String get backStreet => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get canton => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get mainStreet => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get parroquia => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstStepResidenceModelCopyWith<FirstStepResidenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStepResidenceModelCopyWith<$Res> {
  factory $FirstStepResidenceModelCopyWith(FirstStepResidenceModel value,
          $Res Function(FirstStepResidenceModel) then) =
      _$FirstStepResidenceModelCopyWithImpl<$Res, FirstStepResidenceModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
          String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel province});

  $LocationModelCopyWith<$Res> get canton;
  $LocationModelCopyWith<$Res> get parroquia;
  $LocationModelCopyWith<$Res> get province;
}

/// @nodoc
class _$FirstStepResidenceModelCopyWithImpl<$Res,
        $Val extends FirstStepResidenceModel>
    implements $FirstStepResidenceModelCopyWith<$Res> {
  _$FirstStepResidenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backStreet = null,
    Object? canton = null,
    Object? mainStreet = null,
    Object? parroquia = null,
    Object? province = null,
  }) {
    return _then(_value.copyWith(
      backStreet: null == backStreet
          ? _value.backStreet
          : backStreet // ignore: cast_nullable_to_non_nullable
              as String,
      canton: null == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      mainStreet: null == mainStreet
          ? _value.mainStreet
          : mainStreet // ignore: cast_nullable_to_non_nullable
              as String,
      parroquia: null == parroquia
          ? _value.parroquia
          : parroquia // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get canton {
    return $LocationModelCopyWith<$Res>(_value.canton, (value) {
      return _then(_value.copyWith(canton: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get parroquia {
    return $LocationModelCopyWith<$Res>(_value.parroquia, (value) {
      return _then(_value.copyWith(parroquia: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get province {
    return $LocationModelCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FirstStepResidenceModelCopyWith<$Res>
    implements $FirstStepResidenceModelCopyWith<$Res> {
  factory _$$_FirstStepResidenceModelCopyWith(_$_FirstStepResidenceModel value,
          $Res Function(_$_FirstStepResidenceModel) then) =
      __$$_FirstStepResidenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
          String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          LocationModel province});

  @override
  $LocationModelCopyWith<$Res> get canton;
  @override
  $LocationModelCopyWith<$Res> get parroquia;
  @override
  $LocationModelCopyWith<$Res> get province;
}

/// @nodoc
class __$$_FirstStepResidenceModelCopyWithImpl<$Res>
    extends _$FirstStepResidenceModelCopyWithImpl<$Res,
        _$_FirstStepResidenceModel>
    implements _$$_FirstStepResidenceModelCopyWith<$Res> {
  __$$_FirstStepResidenceModelCopyWithImpl(_$_FirstStepResidenceModel _value,
      $Res Function(_$_FirstStepResidenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backStreet = null,
    Object? canton = null,
    Object? mainStreet = null,
    Object? parroquia = null,
    Object? province = null,
  }) {
    return _then(_$_FirstStepResidenceModel(
      backStreet: null == backStreet
          ? _value.backStreet
          : backStreet // ignore: cast_nullable_to_non_nullable
              as String,
      canton: null == canton
          ? _value.canton
          : canton // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      mainStreet: null == mainStreet
          ? _value.mainStreet
          : mainStreet // ignore: cast_nullable_to_non_nullable
              as String,
      parroquia: null == parroquia
          ? _value.parroquia
          : parroquia // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstStepResidenceModel extends _FirstStepResidenceModel {
  const _$_FirstStepResidenceModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required this.backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.canton,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.province})
      : super._();

  factory _$_FirstStepResidenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_FirstStepResidenceModelFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String backStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final LocationModel canton;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String mainStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final LocationModel parroquia;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final LocationModel province;

  @override
  String toString() {
    return 'FirstStepResidenceModel(backStreet: $backStreet, canton: $canton, mainStreet: $mainStreet, parroquia: $parroquia, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstStepResidenceModel &&
            (identical(other.backStreet, backStreet) ||
                other.backStreet == backStreet) &&
            (identical(other.canton, canton) || other.canton == canton) &&
            (identical(other.mainStreet, mainStreet) ||
                other.mainStreet == mainStreet) &&
            (identical(other.parroquia, parroquia) ||
                other.parroquia == parroquia) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, backStreet, canton, mainStreet, parroquia, province);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstStepResidenceModelCopyWith<_$_FirstStepResidenceModel>
      get copyWith =>
          __$$_FirstStepResidenceModelCopyWithImpl<_$_FirstStepResidenceModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirstStepResidenceModelToJson(
      this,
    );
  }
}

abstract class _FirstStepResidenceModel extends FirstStepResidenceModel {
  const factory _FirstStepResidenceModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required final String backStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          required final LocationModel canton,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String mainStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          required final LocationModel parroquia,
      @FormControlAnnotation(validators: [requiredValidator])
          required final LocationModel province}) = _$_FirstStepResidenceModel;
  const _FirstStepResidenceModel._() : super._();

  factory _FirstStepResidenceModel.fromJson(Map<String, dynamic> json) =
      _$_FirstStepResidenceModel.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get backStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get canton;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get mainStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get parroquia;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  LocationModel get province;
  @override
  @JsonKey(ignore: true)
  _$$_FirstStepResidenceModelCopyWith<_$_FirstStepResidenceModel>
      get copyWith => throw _privateConstructorUsedError;
}

SecondStepResidenceModel _$SecondStepResidenceModelFromJson(
    Map<String, dynamic> json) {
  return _SecondStepResidenceModel.fromJson(json);
}

/// @nodoc
mixin _$SecondStepResidenceModel {
  @FormControlAnnotation<bool>()
  bool get electricLightMeter => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String get electricalCode => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialHousingType get housingType => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialTenureHousingAgreementeType get tenureHousingTypeAgreement =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get numberVillaBuilding => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get floorNumber => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get departmentNumber => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  ResidenceType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecondStepResidenceModelCopyWith<SecondStepResidenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondStepResidenceModelCopyWith<$Res> {
  factory $SecondStepResidenceModelCopyWith(SecondStepResidenceModel value,
          $Res Function(SecondStepResidenceModel) then) =
      _$SecondStepResidenceModelCopyWithImpl<$Res, SecondStepResidenceModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>()
          bool electricLightMeter,
      @FormControlAnnotation<String>()
          String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidenceType type});
}

/// @nodoc
class _$SecondStepResidenceModelCopyWithImpl<$Res,
        $Val extends SecondStepResidenceModel>
    implements $SecondStepResidenceModelCopyWith<$Res> {
  _$SecondStepResidenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? electricLightMeter = null,
    Object? electricalCode = null,
    Object? housingType = null,
    Object? tenureHousingTypeAgreement = null,
    Object? numberVillaBuilding = null,
    Object? floorNumber = null,
    Object? departmentNumber = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      electricLightMeter: null == electricLightMeter
          ? _value.electricLightMeter
          : electricLightMeter // ignore: cast_nullable_to_non_nullable
              as bool,
      electricalCode: null == electricalCode
          ? _value.electricalCode
          : electricalCode // ignore: cast_nullable_to_non_nullable
              as String,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as ResidentialHousingType,
      tenureHousingTypeAgreement: null == tenureHousingTypeAgreement
          ? _value.tenureHousingTypeAgreement
          : tenureHousingTypeAgreement // ignore: cast_nullable_to_non_nullable
              as ResidentialTenureHousingAgreementeType,
      numberVillaBuilding: null == numberVillaBuilding
          ? _value.numberVillaBuilding
          : numberVillaBuilding // ignore: cast_nullable_to_non_nullable
              as String,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departmentNumber: null == departmentNumber
          ? _value.departmentNumber
          : departmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecondStepResidenceModelCopyWith<$Res>
    implements $SecondStepResidenceModelCopyWith<$Res> {
  factory _$$_SecondStepResidenceModelCopyWith(
          _$_SecondStepResidenceModel value,
          $Res Function(_$_SecondStepResidenceModel) then) =
      __$$_SecondStepResidenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>()
          bool electricLightMeter,
      @FormControlAnnotation<String>()
          String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          ResidenceType type});
}

/// @nodoc
class __$$_SecondStepResidenceModelCopyWithImpl<$Res>
    extends _$SecondStepResidenceModelCopyWithImpl<$Res,
        _$_SecondStepResidenceModel>
    implements _$$_SecondStepResidenceModelCopyWith<$Res> {
  __$$_SecondStepResidenceModelCopyWithImpl(_$_SecondStepResidenceModel _value,
      $Res Function(_$_SecondStepResidenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? electricLightMeter = null,
    Object? electricalCode = null,
    Object? housingType = null,
    Object? tenureHousingTypeAgreement = null,
    Object? numberVillaBuilding = null,
    Object? floorNumber = null,
    Object? departmentNumber = null,
    Object? type = null,
  }) {
    return _then(_$_SecondStepResidenceModel(
      electricLightMeter: null == electricLightMeter
          ? _value.electricLightMeter
          : electricLightMeter // ignore: cast_nullable_to_non_nullable
              as bool,
      electricalCode: null == electricalCode
          ? _value.electricalCode
          : electricalCode // ignore: cast_nullable_to_non_nullable
              as String,
      housingType: null == housingType
          ? _value.housingType
          : housingType // ignore: cast_nullable_to_non_nullable
              as ResidentialHousingType,
      tenureHousingTypeAgreement: null == tenureHousingTypeAgreement
          ? _value.tenureHousingTypeAgreement
          : tenureHousingTypeAgreement // ignore: cast_nullable_to_non_nullable
              as ResidentialTenureHousingAgreementeType,
      numberVillaBuilding: null == numberVillaBuilding
          ? _value.numberVillaBuilding
          : numberVillaBuilding // ignore: cast_nullable_to_non_nullable
              as String,
      floorNumber: null == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String,
      departmentNumber: null == departmentNumber
          ? _value.departmentNumber
          : departmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResidenceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecondStepResidenceModel extends _SecondStepResidenceModel {
  _$_SecondStepResidenceModel(
      {@FormControlAnnotation<bool>()
          required this.electricLightMeter,
      @FormControlAnnotation<String>()
          required this.electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.type})
      : super._();

  factory _$_SecondStepResidenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_SecondStepResidenceModelFromJson(json);

  @override
  @FormControlAnnotation<bool>()
  final bool electricLightMeter;
  @override
  @FormControlAnnotation<String>()
  final String electricalCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidentialHousingType housingType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidentialTenureHousingAgreementeType tenureHousingTypeAgreement;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String numberVillaBuilding;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String floorNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String departmentNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final ResidenceType type;

  @override
  String toString() {
    return 'SecondStepResidenceModel(electricLightMeter: $electricLightMeter, electricalCode: $electricalCode, housingType: $housingType, tenureHousingTypeAgreement: $tenureHousingTypeAgreement, numberVillaBuilding: $numberVillaBuilding, floorNumber: $floorNumber, departmentNumber: $departmentNumber, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecondStepResidenceModel &&
            (identical(other.electricLightMeter, electricLightMeter) ||
                other.electricLightMeter == electricLightMeter) &&
            (identical(other.electricalCode, electricalCode) ||
                other.electricalCode == electricalCode) &&
            (identical(other.housingType, housingType) ||
                other.housingType == housingType) &&
            (identical(other.tenureHousingTypeAgreement,
                    tenureHousingTypeAgreement) ||
                other.tenureHousingTypeAgreement ==
                    tenureHousingTypeAgreement) &&
            (identical(other.numberVillaBuilding, numberVillaBuilding) ||
                other.numberVillaBuilding == numberVillaBuilding) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.departmentNumber, departmentNumber) ||
                other.departmentNumber == departmentNumber) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      electricLightMeter,
      electricalCode,
      housingType,
      tenureHousingTypeAgreement,
      numberVillaBuilding,
      floorNumber,
      departmentNumber,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecondStepResidenceModelCopyWith<_$_SecondStepResidenceModel>
      get copyWith => __$$_SecondStepResidenceModelCopyWithImpl<
          _$_SecondStepResidenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecondStepResidenceModelToJson(
      this,
    );
  }
}

abstract class _SecondStepResidenceModel extends SecondStepResidenceModel {
  factory _SecondStepResidenceModel(
      {@FormControlAnnotation<bool>()
          required final bool electricLightMeter,
      @FormControlAnnotation<String>()
          required final String electricalCode,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidentialHousingType housingType,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidentialTenureHousingAgreementeType
              tenureHousingTypeAgreement,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String numberVillaBuilding,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String floorNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String departmentNumber,
      @FormControlAnnotation(validators: [requiredValidator])
          required final ResidenceType type}) = _$_SecondStepResidenceModel;
  _SecondStepResidenceModel._() : super._();

  factory _SecondStepResidenceModel.fromJson(Map<String, dynamic> json) =
      _$_SecondStepResidenceModel.fromJson;

  @override
  @FormControlAnnotation<bool>()
  bool get electricLightMeter;
  @override
  @FormControlAnnotation<String>()
  String get electricalCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialHousingType get housingType;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidentialTenureHousingAgreementeType get tenureHousingTypeAgreement;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get numberVillaBuilding;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get floorNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get departmentNumber;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  ResidenceType get type;
  @override
  @JsonKey(ignore: true)
  _$$_SecondStepResidenceModelCopyWith<_$_SecondStepResidenceModel>
      get copyWith => throw _privateConstructorUsedError;
}
