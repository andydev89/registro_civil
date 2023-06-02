// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_to_pay_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceToPayReferenceModel _$PlaceToPayReferenceModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceToPayReferenceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceToPayReferenceModel {
  String get processUrl => throw _privateConstructorUsedError;
  String get paymentGatewayReference => throw _privateConstructorUsedError;
  DateTime get validTo => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  @Enumerated(EnumType.name)
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Details')
  @ignore
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  @ignore
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Code')
  @ignore
  StatusCodeType? get status => throw _privateConstructorUsedError;
  String? get transactionCode => throw _privateConstructorUsedError;
  @ignore
  TransactionStatusType? get transactionStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceToPayReferenceModelCopyWith<PlaceToPayReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceToPayReferenceModelCopyWith<$Res> {
  factory $PlaceToPayReferenceModelCopyWith(PlaceToPayReferenceModel value,
          $Res Function(PlaceToPayReferenceModel) then) =
      _$PlaceToPayReferenceModelCopyWithImpl<$Res, PlaceToPayReferenceModel>;
  @useResult
  $Res call(
      {String processUrl,
      String paymentGatewayReference,
      DateTime validTo,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @Enumerated(EnumType.name)
          ServiceType? serviceType,
      @JsonKey(name: 'Details')
      @ignore
          String? details,
      @JsonKey(name: 'Message')
      @ignore
          String? message,
      @JsonKey(name: 'Code')
      @ignore
          StatusCodeType? status,
      String? transactionCode,
      @ignore
          TransactionStatusType? transactionStatus});
}

/// @nodoc
class _$PlaceToPayReferenceModelCopyWithImpl<$Res,
        $Val extends PlaceToPayReferenceModel>
    implements $PlaceToPayReferenceModelCopyWith<$Res> {
  _$PlaceToPayReferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processUrl = null,
    Object? paymentGatewayReference = null,
    Object? validTo = null,
    Object? serviceType = freezed,
    Object? details = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? transactionCode = freezed,
    Object? transactionStatus = freezed,
  }) {
    return _then(_value.copyWith(
      processUrl: null == processUrl
          ? _value.processUrl
          : processUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGatewayReference: null == paymentGatewayReference
          ? _value.paymentGatewayReference
          : paymentGatewayReference // ignore: cast_nullable_to_non_nullable
              as String,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusCodeType?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as TransactionStatusType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceToPayReferenceModelCopyWith<$Res>
    implements $PlaceToPayReferenceModelCopyWith<$Res> {
  factory _$$_PlaceToPayReferenceModelCopyWith(
          _$_PlaceToPayReferenceModel value,
          $Res Function(_$_PlaceToPayReferenceModel) then) =
      __$$_PlaceToPayReferenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String processUrl,
      String paymentGatewayReference,
      DateTime validTo,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @Enumerated(EnumType.name)
          ServiceType? serviceType,
      @JsonKey(name: 'Details')
      @ignore
          String? details,
      @JsonKey(name: 'Message')
      @ignore
          String? message,
      @JsonKey(name: 'Code')
      @ignore
          StatusCodeType? status,
      String? transactionCode,
      @ignore
          TransactionStatusType? transactionStatus});
}

/// @nodoc
class __$$_PlaceToPayReferenceModelCopyWithImpl<$Res>
    extends _$PlaceToPayReferenceModelCopyWithImpl<$Res,
        _$_PlaceToPayReferenceModel>
    implements _$$_PlaceToPayReferenceModelCopyWith<$Res> {
  __$$_PlaceToPayReferenceModelCopyWithImpl(_$_PlaceToPayReferenceModel _value,
      $Res Function(_$_PlaceToPayReferenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processUrl = null,
    Object? paymentGatewayReference = null,
    Object? validTo = null,
    Object? serviceType = freezed,
    Object? details = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? transactionCode = freezed,
    Object? transactionStatus = freezed,
  }) {
    return _then(_$_PlaceToPayReferenceModel(
      processUrl: null == processUrl
          ? _value.processUrl
          : processUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentGatewayReference: null == paymentGatewayReference
          ? _value.paymentGatewayReference
          : paymentGatewayReference // ignore: cast_nullable_to_non_nullable
              as String,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as ServiceType?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusCodeType?,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionStatus: freezed == transactionStatus
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as TransactionStatusType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceToPayReferenceModel extends _PlaceToPayReferenceModel {
  const _$_PlaceToPayReferenceModel(
      {required this.processUrl,
      required this.paymentGatewayReference,
      required this.validTo,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @Enumerated(EnumType.name)
          this.serviceType,
      @JsonKey(name: 'Details')
      @ignore
          this.details,
      @JsonKey(name: 'Message')
      @ignore
          this.message,
      @JsonKey(name: 'Code')
      @ignore
          this.status,
      this.transactionCode,
      @ignore
          this.transactionStatus})
      : super._();

  factory _$_PlaceToPayReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceToPayReferenceModelFromJson(json);

  @override
  final String processUrl;
  @override
  final String paymentGatewayReference;
  @override
  final DateTime validTo;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @Enumerated(EnumType.name)
  final ServiceType? serviceType;
  @override
  @JsonKey(name: 'Details')
  @ignore
  final String? details;
  @override
  @JsonKey(name: 'Message')
  @ignore
  final String? message;
  @override
  @JsonKey(name: 'Code')
  @ignore
  final StatusCodeType? status;
  @override
  final String? transactionCode;
  @override
  @ignore
  final TransactionStatusType? transactionStatus;

  @override
  String toString() {
    return 'PlaceToPayReferenceModel(processUrl: $processUrl, paymentGatewayReference: $paymentGatewayReference, validTo: $validTo, serviceType: $serviceType, details: $details, message: $message, status: $status, transactionCode: $transactionCode, transactionStatus: $transactionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceToPayReferenceModel &&
            (identical(other.processUrl, processUrl) ||
                other.processUrl == processUrl) &&
            (identical(
                    other.paymentGatewayReference, paymentGatewayReference) ||
                other.paymentGatewayReference == paymentGatewayReference) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.transactionStatus, transactionStatus) ||
                other.transactionStatus == transactionStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      processUrl,
      paymentGatewayReference,
      validTo,
      serviceType,
      details,
      message,
      status,
      transactionCode,
      transactionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceToPayReferenceModelCopyWith<_$_PlaceToPayReferenceModel>
      get copyWith => __$$_PlaceToPayReferenceModelCopyWithImpl<
          _$_PlaceToPayReferenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToPayReferenceModelToJson(
      this,
    );
  }
}

abstract class _PlaceToPayReferenceModel extends PlaceToPayReferenceModel {
  const factory _PlaceToPayReferenceModel(
          {required final String processUrl,
          required final String paymentGatewayReference,
          required final DateTime validTo,
          @JsonKey(includeFromJson: false, includeToJson: false)
          @Enumerated(EnumType.name)
              final ServiceType? serviceType,
          @JsonKey(name: 'Details')
          @ignore
              final String? details,
          @JsonKey(name: 'Message')
          @ignore
              final String? message,
          @JsonKey(name: 'Code')
          @ignore
              final StatusCodeType? status,
          final String? transactionCode,
          @ignore
              final TransactionStatusType? transactionStatus}) =
      _$_PlaceToPayReferenceModel;
  const _PlaceToPayReferenceModel._() : super._();

  factory _PlaceToPayReferenceModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceToPayReferenceModel.fromJson;

  @override
  String get processUrl;
  @override
  String get paymentGatewayReference;
  @override
  DateTime get validTo;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @Enumerated(EnumType.name)
  ServiceType? get serviceType;
  @override
  @JsonKey(name: 'Details')
  @ignore
  String? get details;
  @override
  @JsonKey(name: 'Message')
  @ignore
  String? get message;
  @override
  @JsonKey(name: 'Code')
  @ignore
  StatusCodeType? get status;
  @override
  String? get transactionCode;
  @override
  @ignore
  TransactionStatusType? get transactionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceToPayReferenceModelCopyWith<_$_PlaceToPayReferenceModel>
      get copyWith => throw _privateConstructorUsedError;
}
