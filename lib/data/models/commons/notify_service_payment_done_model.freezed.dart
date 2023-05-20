// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notify_service_payment_done_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotifyServicePaymentDoneModel _$NotifyServicePaymentDoneModelFromJson(
    Map<String, dynamic> json) {
  return _NotifyServicePaymentDoneModel.fromJson(json);
}

/// @nodoc
mixin _$NotifyServicePaymentDoneModel {
  String get transactionCode => throw _privateConstructorUsedError;
  PaymentMethodType get paymentType => throw _privateConstructorUsedError;

  ///Se utiliza para cuando es pago corresponsal, en place to pay es la referencia
  String get paymentCode => throw _privateConstructorUsedError;

  ///En pago corresponsal es null
  String? get civilRegistrationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifyServicePaymentDoneModelCopyWith<NotifyServicePaymentDoneModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifyServicePaymentDoneModelCopyWith<$Res> {
  factory $NotifyServicePaymentDoneModelCopyWith(
          NotifyServicePaymentDoneModel value,
          $Res Function(NotifyServicePaymentDoneModel) then) =
      _$NotifyServicePaymentDoneModelCopyWithImpl<$Res,
          NotifyServicePaymentDoneModel>;
  @useResult
  $Res call(
      {String transactionCode,
      PaymentMethodType paymentType,
      String paymentCode,
      String? civilRegistrationId});
}

/// @nodoc
class _$NotifyServicePaymentDoneModelCopyWithImpl<$Res,
        $Val extends NotifyServicePaymentDoneModel>
    implements $NotifyServicePaymentDoneModelCopyWith<$Res> {
  _$NotifyServicePaymentDoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionCode = null,
    Object? paymentType = null,
    Object? paymentCode = null,
    Object? civilRegistrationId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      civilRegistrationId: freezed == civilRegistrationId
          ? _value.civilRegistrationId
          : civilRegistrationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotifyServicePaymentDoneModelCopyWith<$Res>
    implements $NotifyServicePaymentDoneModelCopyWith<$Res> {
  factory _$$_NotifyServicePaymentDoneModelCopyWith(
          _$_NotifyServicePaymentDoneModel value,
          $Res Function(_$_NotifyServicePaymentDoneModel) then) =
      __$$_NotifyServicePaymentDoneModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionCode,
      PaymentMethodType paymentType,
      String paymentCode,
      String? civilRegistrationId});
}

/// @nodoc
class __$$_NotifyServicePaymentDoneModelCopyWithImpl<$Res>
    extends _$NotifyServicePaymentDoneModelCopyWithImpl<$Res,
        _$_NotifyServicePaymentDoneModel>
    implements _$$_NotifyServicePaymentDoneModelCopyWith<$Res> {
  __$$_NotifyServicePaymentDoneModelCopyWithImpl(
      _$_NotifyServicePaymentDoneModel _value,
      $Res Function(_$_NotifyServicePaymentDoneModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionCode = null,
    Object? paymentType = null,
    Object? paymentCode = null,
    Object? civilRegistrationId = freezed,
  }) {
    return _then(_$_NotifyServicePaymentDoneModel(
      transactionCode: null == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      civilRegistrationId: freezed == civilRegistrationId
          ? _value.civilRegistrationId
          : civilRegistrationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotifyServicePaymentDoneModel
    implements _NotifyServicePaymentDoneModel {
  const _$_NotifyServicePaymentDoneModel(
      {required this.transactionCode,
      required this.paymentType,
      required this.paymentCode,
      required this.civilRegistrationId});

  factory _$_NotifyServicePaymentDoneModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_NotifyServicePaymentDoneModelFromJson(json);

  @override
  final String transactionCode;
  @override
  final PaymentMethodType paymentType;

  ///Se utiliza para cuando es pago corresponsal, en place to pay es la referencia
  @override
  final String paymentCode;

  ///En pago corresponsal es null
  @override
  final String? civilRegistrationId;

  @override
  String toString() {
    return 'NotifyServicePaymentDoneModel(transactionCode: $transactionCode, paymentType: $paymentType, paymentCode: $paymentCode, civilRegistrationId: $civilRegistrationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotifyServicePaymentDoneModel &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.civilRegistrationId, civilRegistrationId) ||
                other.civilRegistrationId == civilRegistrationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionCode, paymentType,
      paymentCode, civilRegistrationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotifyServicePaymentDoneModelCopyWith<_$_NotifyServicePaymentDoneModel>
      get copyWith => __$$_NotifyServicePaymentDoneModelCopyWithImpl<
          _$_NotifyServicePaymentDoneModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotifyServicePaymentDoneModelToJson(
      this,
    );
  }
}

abstract class _NotifyServicePaymentDoneModel
    implements NotifyServicePaymentDoneModel {
  const factory _NotifyServicePaymentDoneModel(
          {required final String transactionCode,
          required final PaymentMethodType paymentType,
          required final String paymentCode,
          required final String? civilRegistrationId}) =
      _$_NotifyServicePaymentDoneModel;

  factory _NotifyServicePaymentDoneModel.fromJson(Map<String, dynamic> json) =
      _$_NotifyServicePaymentDoneModel.fromJson;

  @override
  String get transactionCode;
  @override
  PaymentMethodType get paymentType;
  @override

  ///Se utiliza para cuando es pago corresponsal, en place to pay es la referencia
  String get paymentCode;
  @override

  ///En pago corresponsal es null
  String? get civilRegistrationId;
  @override
  @JsonKey(ignore: true)
  _$$_NotifyServicePaymentDoneModelCopyWith<_$_NotifyServicePaymentDoneModel>
      get copyWith => throw _privateConstructorUsedError;
}
