// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_of_name_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeOfNamePaymentModel _$ChangeOfNamePaymentModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeOfNamePaymentModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeOfNamePaymentModel {
  String get id => throw _privateConstructorUsedError;
  String get transactionCode => throw _privateConstructorUsedError;
  PaymentMethodType get paymentType => throw _privateConstructorUsedError;
  String get paymentCode => throw _privateConstructorUsedError;
  String get civilRegistrationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeOfNamePaymentModelCopyWith<ChangeOfNamePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeOfNamePaymentModelCopyWith<$Res> {
  factory $ChangeOfNamePaymentModelCopyWith(ChangeOfNamePaymentModel value,
          $Res Function(ChangeOfNamePaymentModel) then) =
      _$ChangeOfNamePaymentModelCopyWithImpl<$Res, ChangeOfNamePaymentModel>;
  @useResult
  $Res call(
      {String id,
      String transactionCode,
      PaymentMethodType paymentType,
      String paymentCode,
      String civilRegistrationId});
}

/// @nodoc
class _$ChangeOfNamePaymentModelCopyWithImpl<$Res,
        $Val extends ChangeOfNamePaymentModel>
    implements $ChangeOfNamePaymentModelCopyWith<$Res> {
  _$ChangeOfNamePaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? paymentType = null,
    Object? paymentCode = null,
    Object? civilRegistrationId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      civilRegistrationId: null == civilRegistrationId
          ? _value.civilRegistrationId
          : civilRegistrationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeOfNamePaymentModelCopyWith<$Res>
    implements $ChangeOfNamePaymentModelCopyWith<$Res> {
  factory _$$_ChangeOfNamePaymentModelCopyWith(
          _$_ChangeOfNamePaymentModel value,
          $Res Function(_$_ChangeOfNamePaymentModel) then) =
      __$$_ChangeOfNamePaymentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String transactionCode,
      PaymentMethodType paymentType,
      String paymentCode,
      String civilRegistrationId});
}

/// @nodoc
class __$$_ChangeOfNamePaymentModelCopyWithImpl<$Res>
    extends _$ChangeOfNamePaymentModelCopyWithImpl<$Res,
        _$_ChangeOfNamePaymentModel>
    implements _$$_ChangeOfNamePaymentModelCopyWith<$Res> {
  __$$_ChangeOfNamePaymentModelCopyWithImpl(_$_ChangeOfNamePaymentModel _value,
      $Res Function(_$_ChangeOfNamePaymentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? paymentType = null,
    Object? paymentCode = null,
    Object? civilRegistrationId = null,
  }) {
    return _then(_$_ChangeOfNamePaymentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      civilRegistrationId: null == civilRegistrationId
          ? _value.civilRegistrationId
          : civilRegistrationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeOfNamePaymentModel implements _ChangeOfNamePaymentModel {
  const _$_ChangeOfNamePaymentModel(
      {required this.id,
      required this.transactionCode,
      required this.paymentType,
      required this.paymentCode,
      required this.civilRegistrationId});

  factory _$_ChangeOfNamePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeOfNamePaymentModelFromJson(json);

  @override
  final String id;
  @override
  final String transactionCode;
  @override
  final PaymentMethodType paymentType;
  @override
  final String paymentCode;
  @override
  final String civilRegistrationId;

  @override
  String toString() {
    return 'ChangeOfNamePaymentModel(id: $id, transactionCode: $transactionCode, paymentType: $paymentType, paymentCode: $paymentCode, civilRegistrationId: $civilRegistrationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeOfNamePaymentModel &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, transactionCode, paymentType,
      paymentCode, civilRegistrationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeOfNamePaymentModelCopyWith<_$_ChangeOfNamePaymentModel>
      get copyWith => __$$_ChangeOfNamePaymentModelCopyWithImpl<
          _$_ChangeOfNamePaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeOfNamePaymentModelToJson(
      this,
    );
  }
}

abstract class _ChangeOfNamePaymentModel implements ChangeOfNamePaymentModel {
  const factory _ChangeOfNamePaymentModel(
      {required final String id,
      required final String transactionCode,
      required final PaymentMethodType paymentType,
      required final String paymentCode,
      required final String civilRegistrationId}) = _$_ChangeOfNamePaymentModel;

  factory _ChangeOfNamePaymentModel.fromJson(Map<String, dynamic> json) =
      _$_ChangeOfNamePaymentModel.fromJson;

  @override
  String get id;
  @override
  String get transactionCode;
  @override
  PaymentMethodType get paymentType;
  @override
  String get paymentCode;
  @override
  String get civilRegistrationId;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeOfNamePaymentModelCopyWith<_$_ChangeOfNamePaymentModel>
      get copyWith => throw _privateConstructorUsedError;
}
