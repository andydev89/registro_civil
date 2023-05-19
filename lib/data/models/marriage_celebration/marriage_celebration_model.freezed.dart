// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marriage_celebration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarriageCelebrationModel _$MarriageCelebrationModelFromJson(
    Map<String, dynamic> json) {
  return _MarriageCelebrationModel.fromJson(json);
}

/// @nodoc
mixin _$MarriageCelebrationModel {
  @FormControlAnnotation<MarriageCelebrationType>()
  MarriageCelebrationType get requestOwnerType =>
      throw _privateConstructorUsedError;
  @JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false)
  @FormControlAnnotation<AgencyModel>()
  AgencyModel? get agencyID => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  LocationModel? get province => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  LocationModel? get agency => throw _privateConstructorUsedError;
  @FormControlAnnotation<Witness>()
  Witness? get firstWitness => throw _privateConstructorUsedError;
  @FormControlAnnotation<Witness>()
  Witness? get secondWitness => throw _privateConstructorUsedError;
  Partner? get firstPartner => throw _privateConstructorUsedError;
  Partner? get secondPartner => throw _privateConstructorUsedError;
  RequestOwner? get requestOwner => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get isOutside => throw _privateConstructorUsedError;
  Outside? get outside => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  StateMarriageType? get state => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarriageCelebrationModelCopyWith<MarriageCelebrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarriageCelebrationModelCopyWith<$Res> {
  factory $MarriageCelebrationModelCopyWith(MarriageCelebrationModel value,
          $Res Function(MarriageCelebrationModel) then) =
      _$MarriageCelebrationModelCopyWithImpl<$Res, MarriageCelebrationModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation<MarriageCelebrationType>()
          MarriageCelebrationType requestOwnerType,
      @JsonKey(
          toJson: AgencyModel.agencyToJson,
          includeToJson: true,
          includeFromJson: false)
      @FormControlAnnotation<AgencyModel>()
          AgencyModel? agencyID,
      @JsonKey(includeToJson: false)
          LocationModel? province,
      @JsonKey(includeToJson: false)
          LocationModel? agency,
      @FormControlAnnotation<Witness>()
          Witness? firstWitness,
      @FormControlAnnotation<Witness>()
          Witness? secondWitness,
      Partner? firstPartner,
      Partner? secondPartner,
      RequestOwner? requestOwner,
      @FormControlAnnotation<bool>()
          bool isOutside,
      Outside? outside,
      @JsonKey(includeToJson: false)
          StateMarriageType? state,
      @JsonKey(includeToJson: false)
          String? id});

  $LocationModelCopyWith<$Res>? get province;
  $LocationModelCopyWith<$Res>? get agency;
  $WitnessCopyWith<$Res>? get firstWitness;
  $WitnessCopyWith<$Res>? get secondWitness;
  $PartnerCopyWith<$Res>? get firstPartner;
  $PartnerCopyWith<$Res>? get secondPartner;
  $RequestOwnerCopyWith<$Res>? get requestOwner;
  $OutsideCopyWith<$Res>? get outside;
}

/// @nodoc
class _$MarriageCelebrationModelCopyWithImpl<$Res,
        $Val extends MarriageCelebrationModel>
    implements $MarriageCelebrationModelCopyWith<$Res> {
  _$MarriageCelebrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOwnerType = null,
    Object? agencyID = freezed,
    Object? province = freezed,
    Object? agency = freezed,
    Object? firstWitness = freezed,
    Object? secondWitness = freezed,
    Object? firstPartner = freezed,
    Object? secondPartner = freezed,
    Object? requestOwner = freezed,
    Object? isOutside = null,
    Object? outside = freezed,
    Object? state = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      requestOwnerType: null == requestOwnerType
          ? _value.requestOwnerType
          : requestOwnerType // ignore: cast_nullable_to_non_nullable
              as MarriageCelebrationType,
      agencyID: freezed == agencyID
          ? _value.agencyID
          : agencyID // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      firstWitness: freezed == firstWitness
          ? _value.firstWitness
          : firstWitness // ignore: cast_nullable_to_non_nullable
              as Witness?,
      secondWitness: freezed == secondWitness
          ? _value.secondWitness
          : secondWitness // ignore: cast_nullable_to_non_nullable
              as Witness?,
      firstPartner: freezed == firstPartner
          ? _value.firstPartner
          : firstPartner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      secondPartner: freezed == secondPartner
          ? _value.secondPartner
          : secondPartner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as RequestOwner?,
      isOutside: null == isOutside
          ? _value.isOutside
          : isOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      outside: freezed == outside
          ? _value.outside
          : outside // ignore: cast_nullable_to_non_nullable
              as Outside?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateMarriageType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $LocationModelCopyWith<$Res>? get agency {
    if (_value.agency == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.agency!, (value) {
      return _then(_value.copyWith(agency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WitnessCopyWith<$Res>? get firstWitness {
    if (_value.firstWitness == null) {
      return null;
    }

    return $WitnessCopyWith<$Res>(_value.firstWitness!, (value) {
      return _then(_value.copyWith(firstWitness: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WitnessCopyWith<$Res>? get secondWitness {
    if (_value.secondWitness == null) {
      return null;
    }

    return $WitnessCopyWith<$Res>(_value.secondWitness!, (value) {
      return _then(_value.copyWith(secondWitness: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res>? get firstPartner {
    if (_value.firstPartner == null) {
      return null;
    }

    return $PartnerCopyWith<$Res>(_value.firstPartner!, (value) {
      return _then(_value.copyWith(firstPartner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res>? get secondPartner {
    if (_value.secondPartner == null) {
      return null;
    }

    return $PartnerCopyWith<$Res>(_value.secondPartner!, (value) {
      return _then(_value.copyWith(secondPartner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestOwnerCopyWith<$Res>? get requestOwner {
    if (_value.requestOwner == null) {
      return null;
    }

    return $RequestOwnerCopyWith<$Res>(_value.requestOwner!, (value) {
      return _then(_value.copyWith(requestOwner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OutsideCopyWith<$Res>? get outside {
    if (_value.outside == null) {
      return null;
    }

    return $OutsideCopyWith<$Res>(_value.outside!, (value) {
      return _then(_value.copyWith(outside: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MarriageCelebrationModelCopyWith<$Res>
    implements $MarriageCelebrationModelCopyWith<$Res> {
  factory _$$_MarriageCelebrationModelCopyWith(
          _$_MarriageCelebrationModel value,
          $Res Function(_$_MarriageCelebrationModel) then) =
      __$$_MarriageCelebrationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<MarriageCelebrationType>()
          MarriageCelebrationType requestOwnerType,
      @JsonKey(
          toJson: AgencyModel.agencyToJson,
          includeToJson: true,
          includeFromJson: false)
      @FormControlAnnotation<AgencyModel>()
          AgencyModel? agencyID,
      @JsonKey(includeToJson: false)
          LocationModel? province,
      @JsonKey(includeToJson: false)
          LocationModel? agency,
      @FormControlAnnotation<Witness>()
          Witness? firstWitness,
      @FormControlAnnotation<Witness>()
          Witness? secondWitness,
      Partner? firstPartner,
      Partner? secondPartner,
      RequestOwner? requestOwner,
      @FormControlAnnotation<bool>()
          bool isOutside,
      Outside? outside,
      @JsonKey(includeToJson: false)
          StateMarriageType? state,
      @JsonKey(includeToJson: false)
          String? id});

  @override
  $LocationModelCopyWith<$Res>? get province;
  @override
  $LocationModelCopyWith<$Res>? get agency;
  @override
  $WitnessCopyWith<$Res>? get firstWitness;
  @override
  $WitnessCopyWith<$Res>? get secondWitness;
  @override
  $PartnerCopyWith<$Res>? get firstPartner;
  @override
  $PartnerCopyWith<$Res>? get secondPartner;
  @override
  $RequestOwnerCopyWith<$Res>? get requestOwner;
  @override
  $OutsideCopyWith<$Res>? get outside;
}

/// @nodoc
class __$$_MarriageCelebrationModelCopyWithImpl<$Res>
    extends _$MarriageCelebrationModelCopyWithImpl<$Res,
        _$_MarriageCelebrationModel>
    implements _$$_MarriageCelebrationModelCopyWith<$Res> {
  __$$_MarriageCelebrationModelCopyWithImpl(_$_MarriageCelebrationModel _value,
      $Res Function(_$_MarriageCelebrationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestOwnerType = null,
    Object? agencyID = freezed,
    Object? province = freezed,
    Object? agency = freezed,
    Object? firstWitness = freezed,
    Object? secondWitness = freezed,
    Object? firstPartner = freezed,
    Object? secondPartner = freezed,
    Object? requestOwner = freezed,
    Object? isOutside = null,
    Object? outside = freezed,
    Object? state = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_MarriageCelebrationModel(
      requestOwnerType: null == requestOwnerType
          ? _value.requestOwnerType
          : requestOwnerType // ignore: cast_nullable_to_non_nullable
              as MarriageCelebrationType,
      agencyID: freezed == agencyID
          ? _value.agencyID
          : agencyID // ignore: cast_nullable_to_non_nullable
              as AgencyModel?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      firstWitness: freezed == firstWitness
          ? _value.firstWitness
          : firstWitness // ignore: cast_nullable_to_non_nullable
              as Witness?,
      secondWitness: freezed == secondWitness
          ? _value.secondWitness
          : secondWitness // ignore: cast_nullable_to_non_nullable
              as Witness?,
      firstPartner: freezed == firstPartner
          ? _value.firstPartner
          : firstPartner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      secondPartner: freezed == secondPartner
          ? _value.secondPartner
          : secondPartner // ignore: cast_nullable_to_non_nullable
              as Partner?,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as RequestOwner?,
      isOutside: null == isOutside
          ? _value.isOutside
          : isOutside // ignore: cast_nullable_to_non_nullable
              as bool,
      outside: freezed == outside
          ? _value.outside
          : outside // ignore: cast_nullable_to_non_nullable
              as Outside?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StateMarriageType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarriageCelebrationModel extends _MarriageCelebrationModel {
  const _$_MarriageCelebrationModel(
      {@FormControlAnnotation<MarriageCelebrationType>()
          this.requestOwnerType = MarriageCelebrationType.attorney,
      @JsonKey(
          toJson: AgencyModel.agencyToJson,
          includeToJson: true,
          includeFromJson: false)
      @FormControlAnnotation<AgencyModel>()
          this.agencyID,
      @JsonKey(includeToJson: false)
          this.province,
      @JsonKey(includeToJson: false)
          this.agency,
      @FormControlAnnotation<Witness>()
          this.firstWitness,
      @FormControlAnnotation<Witness>()
          this.secondWitness,
      this.firstPartner,
      this.secondPartner,
      this.requestOwner,
      @FormControlAnnotation<bool>()
          this.isOutside = false,
      this.outside,
      @JsonKey(includeToJson: false)
          this.state,
      @JsonKey(includeToJson: false)
          this.id})
      : super._();

  factory _$_MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =>
      _$$_MarriageCelebrationModelFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation<MarriageCelebrationType>()
  final MarriageCelebrationType requestOwnerType;
  @override
  @JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false)
  @FormControlAnnotation<AgencyModel>()
  final AgencyModel? agencyID;
  @override
  @JsonKey(includeToJson: false)
  final LocationModel? province;
  @override
  @JsonKey(includeToJson: false)
  final LocationModel? agency;
  @override
  @FormControlAnnotation<Witness>()
  final Witness? firstWitness;
  @override
  @FormControlAnnotation<Witness>()
  final Witness? secondWitness;
  @override
  final Partner? firstPartner;
  @override
  final Partner? secondPartner;
  @override
  final RequestOwner? requestOwner;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isOutside;
  @override
  final Outside? outside;
  @override
  @JsonKey(includeToJson: false)
  final StateMarriageType? state;
  @override
  @JsonKey(includeToJson: false)
  final String? id;

  @override
  String toString() {
    return 'MarriageCelebrationModel(requestOwnerType: $requestOwnerType, agencyID: $agencyID, province: $province, agency: $agency, firstWitness: $firstWitness, secondWitness: $secondWitness, firstPartner: $firstPartner, secondPartner: $secondPartner, requestOwner: $requestOwner, isOutside: $isOutside, outside: $outside, state: $state, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarriageCelebrationModel &&
            (identical(other.requestOwnerType, requestOwnerType) ||
                other.requestOwnerType == requestOwnerType) &&
            (identical(other.agencyID, agencyID) ||
                other.agencyID == agencyID) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.firstWitness, firstWitness) ||
                other.firstWitness == firstWitness) &&
            (identical(other.secondWitness, secondWitness) ||
                other.secondWitness == secondWitness) &&
            (identical(other.firstPartner, firstPartner) ||
                other.firstPartner == firstPartner) &&
            (identical(other.secondPartner, secondPartner) ||
                other.secondPartner == secondPartner) &&
            (identical(other.requestOwner, requestOwner) ||
                other.requestOwner == requestOwner) &&
            (identical(other.isOutside, isOutside) ||
                other.isOutside == isOutside) &&
            (identical(other.outside, outside) || other.outside == outside) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestOwnerType,
      agencyID,
      province,
      agency,
      firstWitness,
      secondWitness,
      firstPartner,
      secondPartner,
      requestOwner,
      isOutside,
      outside,
      state,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarriageCelebrationModelCopyWith<_$_MarriageCelebrationModel>
      get copyWith => __$$_MarriageCelebrationModelCopyWithImpl<
          _$_MarriageCelebrationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarriageCelebrationModelToJson(
      this,
    );
  }
}

abstract class _MarriageCelebrationModel extends MarriageCelebrationModel {
  const factory _MarriageCelebrationModel(
      {@FormControlAnnotation<MarriageCelebrationType>()
          final MarriageCelebrationType requestOwnerType,
      @JsonKey(
          toJson: AgencyModel.agencyToJson,
          includeToJson: true,
          includeFromJson: false)
      @FormControlAnnotation<AgencyModel>()
          final AgencyModel? agencyID,
      @JsonKey(includeToJson: false)
          final LocationModel? province,
      @JsonKey(includeToJson: false)
          final LocationModel? agency,
      @FormControlAnnotation<Witness>()
          final Witness? firstWitness,
      @FormControlAnnotation<Witness>()
          final Witness? secondWitness,
      final Partner? firstPartner,
      final Partner? secondPartner,
      final RequestOwner? requestOwner,
      @FormControlAnnotation<bool>()
          final bool isOutside,
      final Outside? outside,
      @JsonKey(includeToJson: false)
          final StateMarriageType? state,
      @JsonKey(includeToJson: false)
          final String? id}) = _$_MarriageCelebrationModel;
  const _MarriageCelebrationModel._() : super._();

  factory _MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =
      _$_MarriageCelebrationModel.fromJson;

  @override
  @FormControlAnnotation<MarriageCelebrationType>()
  MarriageCelebrationType get requestOwnerType;
  @override
  @JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false)
  @FormControlAnnotation<AgencyModel>()
  AgencyModel? get agencyID;
  @override
  @JsonKey(includeToJson: false)
  LocationModel? get province;
  @override
  @JsonKey(includeToJson: false)
  LocationModel? get agency;
  @override
  @FormControlAnnotation<Witness>()
  Witness? get firstWitness;
  @override
  @FormControlAnnotation<Witness>()
  Witness? get secondWitness;
  @override
  Partner? get firstPartner;
  @override
  Partner? get secondPartner;
  @override
  RequestOwner? get requestOwner;
  @override
  @FormControlAnnotation<bool>()
  bool get isOutside;
  @override
  Outside? get outside;
  @override
  @JsonKey(includeToJson: false)
  StateMarriageType? get state;
  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MarriageCelebrationModelCopyWith<_$_MarriageCelebrationModel>
      get copyWith => throw _privateConstructorUsedError;
}

RequestOwner _$RequestOwnerFromJson(Map<String, dynamic> json) {
  return _RequestOwner.fromJson(json);
}

/// @nodoc
mixin _$RequestOwner {
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name => throw _privateConstructorUsedError;
  @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation])
  String get phone => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  String get email => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get identityCard => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get powerOfAttorney => throw _privateConstructorUsedError;
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  StateDocument? get identityCardSate => throw _privateConstructorUsedError;
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  StateDocument? get powerOfAttorneyState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestOwnerCopyWith<RequestOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOwnerCopyWith<$Res> {
  factory $RequestOwnerCopyWith(
          RequestOwner value, $Res Function(RequestOwner) then) =
      _$RequestOwnerCopyWithImpl<$Res, RequestOwner>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name,
      @FormControlAnnotation(validators: [
        requiredValidator,
        length10Validator
      ], asyncValidators: [
        phoneNumberEcuadorValidation
      ])
          String phone,
      @FormControlAnnotation(validators: [requiredValidator, emailValidator])
          String email,
      @FormControlAnnotation<String>()
          String? identityCard,
      @FormControlAnnotation<String>()
          String? powerOfAttorney,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          StateDocument? identityCardSate,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          StateDocument? powerOfAttorneyState});
}

/// @nodoc
class _$RequestOwnerCopyWithImpl<$Res, $Val extends RequestOwner>
    implements $RequestOwnerCopyWith<$Res> {
  _$RequestOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? identityCard = freezed,
    Object? powerOfAttorney = freezed,
    Object? identityCardSate = freezed,
    Object? powerOfAttorneyState = freezed,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      identityCard: freezed == identityCard
          ? _value.identityCard
          : identityCard // ignore: cast_nullable_to_non_nullable
              as String?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as String?,
      identityCardSate: freezed == identityCardSate
          ? _value.identityCardSate
          : identityCardSate // ignore: cast_nullable_to_non_nullable
              as StateDocument?,
      powerOfAttorneyState: freezed == powerOfAttorneyState
          ? _value.powerOfAttorneyState
          : powerOfAttorneyState // ignore: cast_nullable_to_non_nullable
              as StateDocument?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestOwnerCopyWith<$Res>
    implements $RequestOwnerCopyWith<$Res> {
  factory _$$_RequestOwnerCopyWith(
          _$_RequestOwner value, $Res Function(_$_RequestOwner) then) =
      __$$_RequestOwnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name,
      @FormControlAnnotation(validators: [
        requiredValidator,
        length10Validator
      ], asyncValidators: [
        phoneNumberEcuadorValidation
      ])
          String phone,
      @FormControlAnnotation(validators: [requiredValidator, emailValidator])
          String email,
      @FormControlAnnotation<String>()
          String? identityCard,
      @FormControlAnnotation<String>()
          String? powerOfAttorney,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          StateDocument? identityCardSate,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          StateDocument? powerOfAttorneyState});
}

/// @nodoc
class __$$_RequestOwnerCopyWithImpl<$Res>
    extends _$RequestOwnerCopyWithImpl<$Res, _$_RequestOwner>
    implements _$$_RequestOwnerCopyWith<$Res> {
  __$$_RequestOwnerCopyWithImpl(
      _$_RequestOwner _value, $Res Function(_$_RequestOwner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? identityCard = freezed,
    Object? powerOfAttorney = freezed,
    Object? identityCardSate = freezed,
    Object? powerOfAttorneyState = freezed,
  }) {
    return _then(_$_RequestOwner(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      identityCard: freezed == identityCard
          ? _value.identityCard
          : identityCard // ignore: cast_nullable_to_non_nullable
              as String?,
      powerOfAttorney: freezed == powerOfAttorney
          ? _value.powerOfAttorney
          : powerOfAttorney // ignore: cast_nullable_to_non_nullable
              as String?,
      identityCardSate: freezed == identityCardSate
          ? _value.identityCardSate
          : identityCardSate // ignore: cast_nullable_to_non_nullable
              as StateDocument?,
      powerOfAttorneyState: freezed == powerOfAttorneyState
          ? _value.powerOfAttorneyState
          : powerOfAttorneyState // ignore: cast_nullable_to_non_nullable
              as StateDocument?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestOwner extends _RequestOwner {
  const _$_RequestOwner(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          this.nui = '',
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          this.name = '',
      @FormControlAnnotation(validators: [
        requiredValidator,
        length10Validator
      ], asyncValidators: [
        phoneNumberEcuadorValidation
      ])
          this.phone = '',
      @FormControlAnnotation(validators: [requiredValidator, emailValidator])
          this.email = '',
      @FormControlAnnotation<String>()
          this.identityCard,
      @FormControlAnnotation<String>()
          this.powerOfAttorney,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          this.identityCardSate,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          this.powerOfAttorneyState})
      : super._();

  factory _$_RequestOwner.fromJson(Map<String, dynamic> json) =>
      _$$_RequestOwnerFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nui;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  final String name;
  @override
  @JsonKey()
  @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation])
  final String phone;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  final String email;
  @override
  @FormControlAnnotation<String>()
  final String? identityCard;
  @override
  @FormControlAnnotation<String>()
  final String? powerOfAttorney;
  @override
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  final StateDocument? identityCardSate;
  @override
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  final StateDocument? powerOfAttorneyState;

  @override
  String toString() {
    return 'RequestOwner(nui: $nui, name: $name, phone: $phone, email: $email, identityCard: $identityCard, powerOfAttorney: $powerOfAttorney, identityCardSate: $identityCardSate, powerOfAttorneyState: $powerOfAttorneyState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestOwner &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.identityCard, identityCard) ||
                other.identityCard == identityCard) &&
            (identical(other.powerOfAttorney, powerOfAttorney) ||
                other.powerOfAttorney == powerOfAttorney) &&
            (identical(other.identityCardSate, identityCardSate) ||
                other.identityCardSate == identityCardSate) &&
            (identical(other.powerOfAttorneyState, powerOfAttorneyState) ||
                other.powerOfAttorneyState == powerOfAttorneyState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nui, name, phone, email,
      identityCard, powerOfAttorney, identityCardSate, powerOfAttorneyState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestOwnerCopyWith<_$_RequestOwner> get copyWith =>
      __$$_RequestOwnerCopyWithImpl<_$_RequestOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestOwnerToJson(
      this,
    );
  }
}

abstract class _RequestOwner extends RequestOwner {
  const factory _RequestOwner(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          final String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          final String name,
      @FormControlAnnotation(validators: [
        requiredValidator,
        length10Validator
      ], asyncValidators: [
        phoneNumberEcuadorValidation
      ])
          final String phone,
      @FormControlAnnotation(validators: [requiredValidator, emailValidator])
          final String email,
      @FormControlAnnotation<String>()
          final String? identityCard,
      @FormControlAnnotation<String>()
          final String? powerOfAttorney,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          final StateDocument? identityCardSate,
      @JsonKey(
          includeToJson: false,
          includeFromJson: true,
          unknownEnumValue: StateDocument.pending)
      @FormControlAnnotation<StateDocument>()
          final StateDocument? powerOfAttorneyState}) = _$_RequestOwner;
  const _RequestOwner._() : super._();

  factory _RequestOwner.fromJson(Map<String, dynamic> json) =
      _$_RequestOwner.fromJson;

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name;
  @override
  @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation])
  String get phone;
  @override
  @FormControlAnnotation(validators: [requiredValidator, emailValidator])
  String get email;
  @override
  @FormControlAnnotation<String>()
  String? get identityCard;
  @override
  @FormControlAnnotation<String>()
  String? get powerOfAttorney;
  @override
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  StateDocument? get identityCardSate;
  @override
  @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending)
  @FormControlAnnotation<StateDocument>()
  StateDocument? get powerOfAttorneyState;
  @override
  @JsonKey(ignore: true)
  _$$_RequestOwnerCopyWith<_$_RequestOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

Outside _$OutsideFromJson(Map<String, dynamic> json) {
  return _Outside.fromJson(json);
}

/// @nodoc
mixin _$Outside {
  @FormControlAnnotation(validators: [requiredValidator])
  String get latitude => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get longitude => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get principalStreet => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get secondaryStreet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutsideCopyWith<Outside> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutsideCopyWith<$Res> {
  factory $OutsideCopyWith(Outside value, $Res Function(Outside) then) =
      _$OutsideCopyWithImpl<$Res, Outside>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String latitude,
      @FormControlAnnotation(validators: [requiredValidator])
          String longitude,
      @FormControlAnnotation(validators: [requiredValidator])
          String principalStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          String secondaryStreet});
}

/// @nodoc
class _$OutsideCopyWithImpl<$Res, $Val extends Outside>
    implements $OutsideCopyWith<$Res> {
  _$OutsideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? principalStreet = null,
    Object? secondaryStreet = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      principalStreet: null == principalStreet
          ? _value.principalStreet
          : principalStreet // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryStreet: null == secondaryStreet
          ? _value.secondaryStreet
          : secondaryStreet // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutsideCopyWith<$Res> implements $OutsideCopyWith<$Res> {
  factory _$$_OutsideCopyWith(
          _$_Outside value, $Res Function(_$_Outside) then) =
      __$$_OutsideCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String latitude,
      @FormControlAnnotation(validators: [requiredValidator])
          String longitude,
      @FormControlAnnotation(validators: [requiredValidator])
          String principalStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          String secondaryStreet});
}

/// @nodoc
class __$$_OutsideCopyWithImpl<$Res>
    extends _$OutsideCopyWithImpl<$Res, _$_Outside>
    implements _$$_OutsideCopyWith<$Res> {
  __$$_OutsideCopyWithImpl(_$_Outside _value, $Res Function(_$_Outside) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? principalStreet = null,
    Object? secondaryStreet = null,
  }) {
    return _then(_$_Outside(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      principalStreet: null == principalStreet
          ? _value.principalStreet
          : principalStreet // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryStreet: null == secondaryStreet
          ? _value.secondaryStreet
          : secondaryStreet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Outside extends _Outside {
  const _$_Outside(
      {@FormControlAnnotation(validators: [requiredValidator])
          this.latitude = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.longitude = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.principalStreet = '',
      @FormControlAnnotation(validators: [requiredValidator])
          this.secondaryStreet = ''})
      : super._();

  factory _$_Outside.fromJson(Map<String, dynamic> json) =>
      _$$_OutsideFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String latitude;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String longitude;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String principalStreet;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator])
  final String secondaryStreet;

  @override
  String toString() {
    return 'Outside(latitude: $latitude, longitude: $longitude, principalStreet: $principalStreet, secondaryStreet: $secondaryStreet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Outside &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.principalStreet, principalStreet) ||
                other.principalStreet == principalStreet) &&
            (identical(other.secondaryStreet, secondaryStreet) ||
                other.secondaryStreet == secondaryStreet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, principalStreet, secondaryStreet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutsideCopyWith<_$_Outside> get copyWith =>
      __$$_OutsideCopyWithImpl<_$_Outside>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutsideToJson(
      this,
    );
  }
}

abstract class _Outside extends Outside {
  const factory _Outside(
      {@FormControlAnnotation(validators: [requiredValidator])
          final String latitude,
      @FormControlAnnotation(validators: [requiredValidator])
          final String longitude,
      @FormControlAnnotation(validators: [requiredValidator])
          final String principalStreet,
      @FormControlAnnotation(validators: [requiredValidator])
          final String secondaryStreet}) = _$_Outside;
  const _Outside._() : super._();

  factory _Outside.fromJson(Map<String, dynamic> json) = _$_Outside.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get latitude;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get longitude;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get principalStreet;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get secondaryStreet;
  @override
  @JsonKey(ignore: true)
  _$$_OutsideCopyWith<_$_Outside> get copyWith =>
      throw _privateConstructorUsedError;
}

Witness _$WitnessFromJson(Map<String, dynamic> json) {
  return _Witness.fromJson(json);
}

/// @nodoc
mixin _$Witness {
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WitnessCopyWith<Witness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WitnessCopyWith<$Res> {
  factory $WitnessCopyWith(Witness value, $Res Function(Witness) then) =
      _$WitnessCopyWithImpl<$Res, Witness>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name});
}

/// @nodoc
class _$WitnessCopyWithImpl<$Res, $Val extends Witness>
    implements $WitnessCopyWith<$Res> {
  _$WitnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WitnessCopyWith<$Res> implements $WitnessCopyWith<$Res> {
  factory _$$_WitnessCopyWith(
          _$_Witness value, $Res Function(_$_Witness) then) =
      __$$_WitnessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name});
}

/// @nodoc
class __$$_WitnessCopyWithImpl<$Res>
    extends _$WitnessCopyWithImpl<$Res, _$_Witness>
    implements _$$_WitnessCopyWith<$Res> {
  __$$_WitnessCopyWithImpl(_$_Witness _value, $Res Function(_$_Witness) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
  }) {
    return _then(_$_Witness(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Witness extends _Witness {
  const _$_Witness(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          this.nui = '',
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          this.name = ''})
      : super._();

  factory _$_Witness.fromJson(Map<String, dynamic> json) =>
      _$$_WitnessFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nui;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  final String name;

  @override
  String toString() {
    return 'Witness(nui: $nui, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Witness &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nui, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WitnessCopyWith<_$_Witness> get copyWith =>
      __$$_WitnessCopyWithImpl<_$_Witness>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WitnessToJson(
      this,
    );
  }
}

abstract class _Witness extends Witness {
  const factory _Witness(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          final String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          final String name}) = _$_Witness;
  const _Witness._() : super._();

  factory _Witness.fromJson(Map<String, dynamic> json) = _$_Witness.fromJson;

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_WitnessCopyWith<_$_Witness> get copyWith =>
      throw _privateConstructorUsedError;
}

Partner _$PartnerFromJson(Map<String, dynamic> json) {
  return _Partner.fromJson(json);
}

/// @nodoc
mixin _$Partner {
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  MaritalStatusType get maritalStatus => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
  Binary get hasChildren => throw _privateConstructorUsedError;
  @FormControlAnnotation<ChildrenRelationShipType>()
  ChildrenRelationShipType? get childrenRelationship =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'hasConadis')
  bool get conadis => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  @JsonKey(name: 'conadisNui')
  String get conadisNumber => throw _privateConstructorUsedError;
  @FormArrayAnnotation<Document>()
  List<Document> get documents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerCopyWith<Partner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res, Partner>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name,
      @FormControlAnnotation(validators: [requiredValidator])
          MaritalStatusType maritalStatus,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
          Binary hasChildren,
      @FormControlAnnotation<ChildrenRelationShipType>()
          ChildrenRelationShipType? childrenRelationship,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'hasConadis')
          bool conadis,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'conadisNui')
          String conadisNumber,
      @FormArrayAnnotation<Document>()
          List<Document> documents});
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res, $Val extends Partner>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
    Object? maritalStatus = null,
    Object? hasChildren = null,
    Object? childrenRelationship = freezed,
    Object? conadis = null,
    Object? conadisNumber = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatusType,
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as Binary,
      childrenRelationship: freezed == childrenRelationship
          ? _value.childrenRelationship
          : childrenRelationship // ignore: cast_nullable_to_non_nullable
              as ChildrenRelationShipType?,
      conadis: null == conadis
          ? _value.conadis
          : conadis // ignore: cast_nullable_to_non_nullable
              as bool,
      conadisNumber: null == conadisNumber
          ? _value.conadisNumber
          : conadisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerCopyWith<$Res> implements $PartnerCopyWith<$Res> {
  factory _$$_PartnerCopyWith(
          _$_Partner value, $Res Function(_$_Partner) then) =
      __$$_PartnerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          String name,
      @FormControlAnnotation(validators: [requiredValidator])
          MaritalStatusType maritalStatus,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
          Binary hasChildren,
      @FormControlAnnotation<ChildrenRelationShipType>()
          ChildrenRelationShipType? childrenRelationship,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'hasConadis')
          bool conadis,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'conadisNui')
          String conadisNumber,
      @FormArrayAnnotation<Document>()
          List<Document> documents});
}

/// @nodoc
class __$$_PartnerCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$_Partner>
    implements _$$_PartnerCopyWith<$Res> {
  __$$_PartnerCopyWithImpl(_$_Partner _value, $Res Function(_$_Partner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? name = null,
    Object? maritalStatus = null,
    Object? hasChildren = null,
    Object? childrenRelationship = freezed,
    Object? conadis = null,
    Object? conadisNumber = null,
    Object? documents = null,
  }) {
    return _then(_$_Partner(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatusType,
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as Binary,
      childrenRelationship: freezed == childrenRelationship
          ? _value.childrenRelationship
          : childrenRelationship // ignore: cast_nullable_to_non_nullable
              as ChildrenRelationShipType?,
      conadis: null == conadis
          ? _value.conadis
          : conadis // ignore: cast_nullable_to_non_nullable
              as bool,
      conadisNumber: null == conadisNumber
          ? _value.conadisNumber
          : conadisNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Partner extends _Partner {
  const _$_Partner(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          this.nui = '',
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          this.name = '',
      @FormControlAnnotation(validators: [requiredValidator])
          required this.maritalStatus,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
          required this.hasChildren,
      @FormControlAnnotation<ChildrenRelationShipType>()
          this.childrenRelationship,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'hasConadis')
          this.conadis = false,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'conadisNui')
          this.conadisNumber = '',
      @FormArrayAnnotation<Document>()
          final List<Document> documents = const []})
      : _documents = documents,
        super._();

  factory _$_Partner.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nui;
  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  final String name;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final MaritalStatusType maritalStatus;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
  final Binary hasChildren;
  @override
  @FormControlAnnotation<ChildrenRelationShipType>()
  final ChildrenRelationShipType? childrenRelationship;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'hasConadis')
  final bool conadis;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'conadisNui')
  final String conadisNumber;
  final List<Document> _documents;
  @override
  @JsonKey()
  @FormArrayAnnotation<Document>()
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'Partner(nui: $nui, name: $name, maritalStatus: $maritalStatus, hasChildren: $hasChildren, childrenRelationship: $childrenRelationship, conadis: $conadis, conadisNumber: $conadisNumber, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Partner &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.childrenRelationship, childrenRelationship) ||
                other.childrenRelationship == childrenRelationship) &&
            (identical(other.conadis, conadis) || other.conadis == conadis) &&
            (identical(other.conadisNumber, conadisNumber) ||
                other.conadisNumber == conadisNumber) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nui,
      name,
      maritalStatus,
      hasChildren,
      childrenRelationship,
      conadis,
      conadisNumber,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerCopyWith<_$_Partner> get copyWith =>
      __$$_PartnerCopyWithImpl<_$_Partner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerToJson(
      this,
    );
  }
}

abstract class _Partner extends Partner {
  const factory _Partner(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          final String nui,
      @FormControlAnnotation(validators: [requiredValidator, nameValidator])
          final String name,
      @FormControlAnnotation(validators: [requiredValidator])
          required final MaritalStatusType maritalStatus,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
          required final Binary hasChildren,
      @FormControlAnnotation<ChildrenRelationShipType>()
          final ChildrenRelationShipType? childrenRelationship,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'hasConadis')
          final bool conadis,
      @FormControlAnnotation<String>()
      @JsonKey(name: 'conadisNui')
          final String conadisNumber,
      @FormArrayAnnotation<Document>()
          final List<Document> documents}) = _$_Partner;
  const _Partner._() : super._();

  factory _Partner.fromJson(Map<String, dynamic> json) = _$_Partner.fromJson;

  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator, nameValidator])
  String get name;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  MaritalStatusType get maritalStatus;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
  Binary get hasChildren;
  @override
  @FormControlAnnotation<ChildrenRelationShipType>()
  ChildrenRelationShipType? get childrenRelationship;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'hasConadis')
  bool get conadis;
  @override
  @FormControlAnnotation<String>()
  @JsonKey(name: 'conadisNui')
  String get conadisNumber;
  @override
  @FormArrayAnnotation<Document>()
  List<Document> get documents;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerCopyWith<_$_Partner> get copyWith =>
      throw _privateConstructorUsedError;
}
