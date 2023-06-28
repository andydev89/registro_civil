// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_duplicate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IdDuplicateModel {
  @JsonKey(includeToJson: true)
  IdDuplicateProcedureType? get type => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get requestOwner => throw _privateConstructorUsedError;
  String? get nui => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  IdDuplicateReason? get reasonType =>
      throw _privateConstructorUsedError; /*@JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false,
    )
    @FormControlAnnotation<AgencyModel>()
    AgencyModel? agencyId,*/
  @JsonKey(
      toJson: LocationAgencyModel.locationToJson,
      includeToJson: true,
      includeFromJson: true)
  LocationAgencyModel? get agency => throw _privateConstructorUsedError;
  String? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: true)
  PaymentMethodType? get paymentType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdDuplicateModelCopyWith<IdDuplicateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdDuplicateModelCopyWith<$Res> {
  factory $IdDuplicateModelCopyWith(
          IdDuplicateModel value, $Res Function(IdDuplicateModel) then) =
      _$IdDuplicateModelCopyWithImpl<$Res, IdDuplicateModel>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: true)
          IdDuplicateProcedureType? type,
      @JsonKey(includeToJson: false)
          String? requestOwner,
      String? nui,
      String? birthdate,
      @JsonKey(includeToJson: true)
          IdDuplicateReason? reasonType,
      @JsonKey(toJson: LocationAgencyModel.locationToJson, includeToJson: true, includeFromJson: true)
          LocationAgencyModel? agency,
      String? provinceId,
      @JsonKey(includeToJson: true)
          PaymentMethodType? paymentType});

  $LocationAgencyModelCopyWith<$Res>? get agency;
}

/// @nodoc
class _$IdDuplicateModelCopyWithImpl<$Res, $Val extends IdDuplicateModel>
    implements $IdDuplicateModelCopyWith<$Res> {
  _$IdDuplicateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? requestOwner = freezed,
    Object? nui = freezed,
    Object? birthdate = freezed,
    Object? reasonType = freezed,
    Object? agency = freezed,
    Object? provinceId = freezed,
    Object? paymentType = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdDuplicateProcedureType?,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonType: freezed == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as IdDuplicateReason?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as LocationAgencyModel?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationAgencyModelCopyWith<$Res>? get agency {
    if (_value.agency == null) {
      return null;
    }

    return $LocationAgencyModelCopyWith<$Res>(_value.agency!, (value) {
      return _then(_value.copyWith(agency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdDuplicateModelCopyWith<$Res>
    implements $IdDuplicateModelCopyWith<$Res> {
  factory _$$_IdDuplicateModelCopyWith(
          _$_IdDuplicateModel value, $Res Function(_$_IdDuplicateModel) then) =
      __$$_IdDuplicateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: true)
          IdDuplicateProcedureType? type,
      @JsonKey(includeToJson: false)
          String? requestOwner,
      String? nui,
      String? birthdate,
      @JsonKey(includeToJson: true)
          IdDuplicateReason? reasonType,
      @JsonKey(toJson: LocationAgencyModel.locationToJson, includeToJson: true, includeFromJson: true)
          LocationAgencyModel? agency,
      String? provinceId,
      @JsonKey(includeToJson: true)
          PaymentMethodType? paymentType});

  @override
  $LocationAgencyModelCopyWith<$Res>? get agency;
}

/// @nodoc
class __$$_IdDuplicateModelCopyWithImpl<$Res>
    extends _$IdDuplicateModelCopyWithImpl<$Res, _$_IdDuplicateModel>
    implements _$$_IdDuplicateModelCopyWith<$Res> {
  __$$_IdDuplicateModelCopyWithImpl(
      _$_IdDuplicateModel _value, $Res Function(_$_IdDuplicateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? requestOwner = freezed,
    Object? nui = freezed,
    Object? birthdate = freezed,
    Object? reasonType = freezed,
    Object? agency = freezed,
    Object? provinceId = freezed,
    Object? paymentType = freezed,
  }) {
    return _then(_$_IdDuplicateModel(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdDuplicateProcedureType?,
      requestOwner: freezed == requestOwner
          ? _value.requestOwner
          : requestOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      nui: freezed == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonType: freezed == reasonType
          ? _value.reasonType
          : reasonType // ignore: cast_nullable_to_non_nullable
              as IdDuplicateReason?,
      agency: freezed == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as LocationAgencyModel?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType?,
    ));
  }
}

/// @nodoc

class _$_IdDuplicateModel extends _IdDuplicateModel {
  const _$_IdDuplicateModel(
      {@JsonKey(includeToJson: true)
          this.type,
      @JsonKey(includeToJson: false)
          this.requestOwner = '',
      this.nui = '',
      this.birthdate = '',
      @JsonKey(includeToJson: true)
          this.reasonType,
      @JsonKey(toJson: LocationAgencyModel.locationToJson, includeToJson: true, includeFromJson: true)
          this.agency,
      this.provinceId = '',
      @JsonKey(includeToJson: true)
          this.paymentType = PaymentMethodType.placeToPay})
      : super._();

  @override
  @JsonKey(includeToJson: true)
  final IdDuplicateProcedureType? type;
  @override
  @JsonKey(includeToJson: false)
  final String? requestOwner;
  @override
  @JsonKey()
  final String? nui;
  @override
  @JsonKey()
  final String? birthdate;
  @override
  @JsonKey(includeToJson: true)
  final IdDuplicateReason? reasonType;
/*@JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false,
    )
    @FormControlAnnotation<AgencyModel>()
    AgencyModel? agencyId,*/
  @override
  @JsonKey(
      toJson: LocationAgencyModel.locationToJson,
      includeToJson: true,
      includeFromJson: true)
  final LocationAgencyModel? agency;
  @override
  @JsonKey()
  final String? provinceId;
  @override
  @JsonKey(includeToJson: true)
  final PaymentMethodType? paymentType;

  @override
  String toString() {
    return 'IdDuplicateModel(type: $type, requestOwner: $requestOwner, nui: $nui, birthdate: $birthdate, reasonType: $reasonType, agency: $agency, provinceId: $provinceId, paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdDuplicateModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requestOwner, requestOwner) ||
                other.requestOwner == requestOwner) &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.reasonType, reasonType) ||
                other.reasonType == reasonType) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, requestOwner, nui,
      birthdate, reasonType, agency, provinceId, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdDuplicateModelCopyWith<_$_IdDuplicateModel> get copyWith =>
      __$$_IdDuplicateModelCopyWithImpl<_$_IdDuplicateModel>(this, _$identity);
}

abstract class _IdDuplicateModel extends IdDuplicateModel {
  const factory _IdDuplicateModel(
      {@JsonKey(includeToJson: true)
          final IdDuplicateProcedureType? type,
      @JsonKey(includeToJson: false)
          final String? requestOwner,
      final String? nui,
      final String? birthdate,
      @JsonKey(includeToJson: true)
          final IdDuplicateReason? reasonType,
      @JsonKey(toJson: LocationAgencyModel.locationToJson, includeToJson: true, includeFromJson: true)
          final LocationAgencyModel? agency,
      final String? provinceId,
      @JsonKey(includeToJson: true)
          final PaymentMethodType? paymentType}) = _$_IdDuplicateModel;
  const _IdDuplicateModel._() : super._();

  @override
  @JsonKey(includeToJson: true)
  IdDuplicateProcedureType? get type;
  @override
  @JsonKey(includeToJson: false)
  String? get requestOwner;
  @override
  String? get nui;
  @override
  String? get birthdate;
  @override
  @JsonKey(includeToJson: true)
  IdDuplicateReason? get reasonType;
  @override /*@JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false,
    )
    @FormControlAnnotation<AgencyModel>()
    AgencyModel? agencyId,*/
  @JsonKey(
      toJson: LocationAgencyModel.locationToJson,
      includeToJson: true,
      includeFromJson: true)
  LocationAgencyModel? get agency;
  @override
  String? get provinceId;
  @override
  @JsonKey(includeToJson: true)
  PaymentMethodType? get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_IdDuplicateModelCopyWith<_$_IdDuplicateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcedureTypeSubModel _$ProcedureTypeSubModelFromJson(
    Map<String, dynamic> json) {
  return _ProcedureTypeForm.fromJson(json);
}

/// @nodoc
mixin _$ProcedureTypeSubModel {
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'procedureType')
  IdDuplicateProcedureType get idDuplicateProcedureType =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  DateTime get birthDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcedureTypeSubModelCopyWith<ProcedureTypeSubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcedureTypeSubModelCopyWith<$Res> {
  factory $ProcedureTypeSubModelCopyWith(ProcedureTypeSubModel value,
          $Res Function(ProcedureTypeSubModel) then) =
      _$ProcedureTypeSubModelCopyWithImpl<$Res, ProcedureTypeSubModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'procedureType')
          IdDuplicateProcedureType idDuplicateProcedureType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator])
          DateTime birthDate});
}

/// @nodoc
class _$ProcedureTypeSubModelCopyWithImpl<$Res,
        $Val extends ProcedureTypeSubModel>
    implements $ProcedureTypeSubModelCopyWith<$Res> {
  _$ProcedureTypeSubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDuplicateProcedureType = null,
    Object? nui = null,
    Object? birthDate = null,
  }) {
    return _then(_value.copyWith(
      idDuplicateProcedureType: null == idDuplicateProcedureType
          ? _value.idDuplicateProcedureType
          : idDuplicateProcedureType // ignore: cast_nullable_to_non_nullable
              as IdDuplicateProcedureType,
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProcedureTypeFormCopyWith<$Res>
    implements $ProcedureTypeSubModelCopyWith<$Res> {
  factory _$$_ProcedureTypeFormCopyWith(_$_ProcedureTypeForm value,
          $Res Function(_$_ProcedureTypeForm) then) =
      __$$_ProcedureTypeFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'procedureType')
          IdDuplicateProcedureType idDuplicateProcedureType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          String nui,
      @FormControlAnnotation(validators: [requiredValidator])
          DateTime birthDate});
}

/// @nodoc
class __$$_ProcedureTypeFormCopyWithImpl<$Res>
    extends _$ProcedureTypeSubModelCopyWithImpl<$Res, _$_ProcedureTypeForm>
    implements _$$_ProcedureTypeFormCopyWith<$Res> {
  __$$_ProcedureTypeFormCopyWithImpl(
      _$_ProcedureTypeForm _value, $Res Function(_$_ProcedureTypeForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDuplicateProcedureType = null,
    Object? nui = null,
    Object? birthDate = null,
  }) {
    return _then(_$_ProcedureTypeForm(
      idDuplicateProcedureType: null == idDuplicateProcedureType
          ? _value.idDuplicateProcedureType
          : idDuplicateProcedureType // ignore: cast_nullable_to_non_nullable
              as IdDuplicateProcedureType,
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcedureTypeForm extends _ProcedureTypeForm {
  const _$_ProcedureTypeForm(
      {@FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'procedureType')
          required this.idDuplicateProcedureType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          this.nui = '',
      @FormControlAnnotation(validators: [requiredValidator])
          required this.birthDate})
      : super._();

  factory _$_ProcedureTypeForm.fromJson(Map<String, dynamic> json) =>
      _$$_ProcedureTypeFormFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'procedureType')
  final IdDuplicateProcedureType idDuplicateProcedureType;
  @override
  @JsonKey()
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  final String nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final DateTime birthDate;

  @override
  String toString() {
    return 'ProcedureTypeSubModel(idDuplicateProcedureType: $idDuplicateProcedureType, nui: $nui, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcedureTypeForm &&
            (identical(
                    other.idDuplicateProcedureType, idDuplicateProcedureType) ||
                other.idDuplicateProcedureType == idDuplicateProcedureType) &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idDuplicateProcedureType, nui, birthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcedureTypeFormCopyWith<_$_ProcedureTypeForm> get copyWith =>
      __$$_ProcedureTypeFormCopyWithImpl<_$_ProcedureTypeForm>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcedureTypeFormToJson(
      this,
    );
  }
}

abstract class _ProcedureTypeForm extends ProcedureTypeSubModel {
  const factory _ProcedureTypeForm(
      {@FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(name: 'procedureType')
          required final IdDuplicateProcedureType idDuplicateProcedureType,
      @FormControlAnnotation(validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator
      ])
          final String nui,
      @FormControlAnnotation(validators: [requiredValidator])
          required final DateTime birthDate}) = _$_ProcedureTypeForm;
  const _ProcedureTypeForm._() : super._();

  factory _ProcedureTypeForm.fromJson(Map<String, dynamic> json) =
      _$_ProcedureTypeForm.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(name: 'procedureType')
  IdDuplicateProcedureType get idDuplicateProcedureType;
  @override
  @FormControlAnnotation(
      validators: [requiredValidator, ecuadorDniValidator, length10Validator])
  String get nui;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  DateTime get birthDate;
  @override
  @JsonKey(ignore: true)
  _$$_ProcedureTypeFormCopyWith<_$_ProcedureTypeForm> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcedureReasonSubModel _$ProcedureReasonSubModelFromJson(
    Map<String, dynamic> json) {
  return _ProcedureReasonForm.fromJson(json);
}

/// @nodoc
mixin _$ProcedureReasonSubModel {
  @FormControlAnnotation(validators: [requiredValidator])
  IdDuplicateReason get reason => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get province => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  AgencyModel get agency => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredTrueValidator])
  bool get acceptTerms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcedureReasonSubModelCopyWith<ProcedureReasonSubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcedureReasonSubModelCopyWith<$Res> {
  factory $ProcedureReasonSubModelCopyWith(ProcedureReasonSubModel value,
          $Res Function(ProcedureReasonSubModel) then) =
      _$ProcedureReasonSubModelCopyWithImpl<$Res, ProcedureReasonSubModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          IdDuplicateReason reason,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
          AgencyModel agency,
      @FormControlAnnotation(validators: [requiredTrueValidator])
          bool acceptTerms});

  $LocationModelCopyWith<$Res> get province;
}

/// @nodoc
class _$ProcedureReasonSubModelCopyWithImpl<$Res,
        $Val extends ProcedureReasonSubModel>
    implements $ProcedureReasonSubModelCopyWith<$Res> {
  _$ProcedureReasonSubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? province = null,
    Object? agency = null,
    Object? acceptTerms = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as IdDuplicateReason,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
abstract class _$$_ProcedureReasonFormCopyWith<$Res>
    implements $ProcedureReasonSubModelCopyWith<$Res> {
  factory _$$_ProcedureReasonFormCopyWith(_$_ProcedureReasonForm value,
          $Res Function(_$_ProcedureReasonForm) then) =
      __$$_ProcedureReasonFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          IdDuplicateReason reason,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
          AgencyModel agency,
      @FormControlAnnotation(validators: [requiredTrueValidator])
          bool acceptTerms});

  @override
  $LocationModelCopyWith<$Res> get province;
}

/// @nodoc
class __$$_ProcedureReasonFormCopyWithImpl<$Res>
    extends _$ProcedureReasonSubModelCopyWithImpl<$Res, _$_ProcedureReasonForm>
    implements _$$_ProcedureReasonFormCopyWith<$Res> {
  __$$_ProcedureReasonFormCopyWithImpl(_$_ProcedureReasonForm _value,
      $Res Function(_$_ProcedureReasonForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? province = null,
    Object? agency = null,
    Object? acceptTerms = null,
  }) {
    return _then(_$_ProcedureReasonForm(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as IdDuplicateReason,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as AgencyModel,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProcedureReasonForm extends _ProcedureReasonForm {
  const _$_ProcedureReasonForm(
      {@FormControlAnnotation(validators: [requiredValidator])
          required this.reason,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required this.province,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.agency,
      @FormControlAnnotation(validators: [requiredTrueValidator])
          required this.acceptTerms})
      : super._();

  factory _$_ProcedureReasonForm.fromJson(Map<String, dynamic> json) =>
      _$$_ProcedureReasonFormFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final IdDuplicateReason reason;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  final LocationModel province;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final AgencyModel agency;
  @override
  @FormControlAnnotation(validators: [requiredTrueValidator])
  final bool acceptTerms;

  @override
  String toString() {
    return 'ProcedureReasonSubModel(reason: $reason, province: $province, agency: $agency, acceptTerms: $acceptTerms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcedureReasonForm &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reason, province, agency, acceptTerms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcedureReasonFormCopyWith<_$_ProcedureReasonForm> get copyWith =>
      __$$_ProcedureReasonFormCopyWithImpl<_$_ProcedureReasonForm>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcedureReasonFormToJson(
      this,
    );
  }
}

abstract class _ProcedureReasonForm extends ProcedureReasonSubModel {
  const factory _ProcedureReasonForm(
      {@FormControlAnnotation(validators: [requiredValidator])
          required final IdDuplicateReason reason,
      @FormControlAnnotation(validators: [requiredValidator])
      @JsonKey(toJson: LocationModel.locationToJson)
          required final LocationModel province,
      @FormControlAnnotation(validators: [requiredValidator])
          required final AgencyModel agency,
      @FormControlAnnotation(validators: [requiredTrueValidator])
          required final bool acceptTerms}) = _$_ProcedureReasonForm;
  const _ProcedureReasonForm._() : super._();

  factory _ProcedureReasonForm.fromJson(Map<String, dynamic> json) =
      _$_ProcedureReasonForm.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  IdDuplicateReason get reason;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  @JsonKey(toJson: LocationModel.locationToJson)
  LocationModel get province;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  AgencyModel get agency;
  @override
  @FormControlAnnotation(validators: [requiredTrueValidator])
  bool get acceptTerms;
  @override
  @JsonKey(ignore: true)
  _$$_ProcedureReasonFormCopyWith<_$_ProcedureReasonForm> get copyWith =>
      throw _privateConstructorUsedError;
}
