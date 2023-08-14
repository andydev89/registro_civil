// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_of_services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePaymentofservicesModel _$CreatePaymentofservicesModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePaymentofservicesModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentofservicesModel {
  @FormControlAnnotation(validators: [requiredValidator])
  String get user => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  List<PaymentofservicesModel> get services =>
      throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get agency => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentofservicesModelCopyWith<CreatePaymentofservicesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentofservicesModelCopyWith<$Res> {
  factory $CreatePaymentofservicesModelCopyWith(
          CreatePaymentofservicesModel value,
          $Res Function(CreatePaymentofservicesModel) then) =
      _$CreatePaymentofservicesModelCopyWithImpl<$Res,
          CreatePaymentofservicesModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String user,
      @FormControlAnnotation(validators: [requiredValidator])
          List<PaymentofservicesModel> services,
      @FormControlAnnotation(validators: [requiredValidator])
          String agency,
      @FormControlAnnotation(validators: [requiredValidator])
          String province});
}

/// @nodoc
class _$CreatePaymentofservicesModelCopyWithImpl<$Res,
        $Val extends CreatePaymentofservicesModel>
    implements $CreatePaymentofservicesModelCopyWith<$Res> {
  _$CreatePaymentofservicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? services = null,
    Object? agency = null,
    Object? province = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<PaymentofservicesModel>,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePaymentofservicesModelCopyWith<$Res>
    implements $CreatePaymentofservicesModelCopyWith<$Res> {
  factory _$$_CreatePaymentofservicesModelCopyWith(
          _$_CreatePaymentofservicesModel value,
          $Res Function(_$_CreatePaymentofservicesModel) then) =
      __$$_CreatePaymentofservicesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator])
          String user,
      @FormControlAnnotation(validators: [requiredValidator])
          List<PaymentofservicesModel> services,
      @FormControlAnnotation(validators: [requiredValidator])
          String agency,
      @FormControlAnnotation(validators: [requiredValidator])
          String province});
}

/// @nodoc
class __$$_CreatePaymentofservicesModelCopyWithImpl<$Res>
    extends _$CreatePaymentofservicesModelCopyWithImpl<$Res,
        _$_CreatePaymentofservicesModel>
    implements _$$_CreatePaymentofservicesModelCopyWith<$Res> {
  __$$_CreatePaymentofservicesModelCopyWithImpl(
      _$_CreatePaymentofservicesModel _value,
      $Res Function(_$_CreatePaymentofservicesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? services = null,
    Object? agency = null,
    Object? province = null,
  }) {
    return _then(_$_CreatePaymentofservicesModel(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<PaymentofservicesModel>,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePaymentofservicesModel extends _CreatePaymentofservicesModel {
  const _$_CreatePaymentofservicesModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required this.user,
      @FormControlAnnotation(validators: [requiredValidator])
          required final List<PaymentofservicesModel> services,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.agency,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.province})
      : _services = services,
        super._();

  factory _$_CreatePaymentofservicesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePaymentofservicesModelFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String user;
  final List<PaymentofservicesModel> _services;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  List<PaymentofservicesModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String agency;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String province;

  @override
  String toString() {
    return 'CreatePaymentofservicesModel(user: $user, services: $services, agency: $agency, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePaymentofservicesModel &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user,
      const DeepCollectionEquality().hash(_services), agency, province);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePaymentofservicesModelCopyWith<_$_CreatePaymentofservicesModel>
      get copyWith => __$$_CreatePaymentofservicesModelCopyWithImpl<
          _$_CreatePaymentofservicesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePaymentofservicesModelToJson(
      this,
    );
  }
}

abstract class _CreatePaymentofservicesModel
    extends CreatePaymentofservicesModel {
  const factory _CreatePaymentofservicesModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required final String user,
      @FormControlAnnotation(validators: [requiredValidator])
          required final List<PaymentofservicesModel> services,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String agency,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String province}) = _$_CreatePaymentofservicesModel;
  const _CreatePaymentofservicesModel._() : super._();

  factory _CreatePaymentofservicesModel.fromJson(Map<String, dynamic> json) =
      _$_CreatePaymentofservicesModel.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get user;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  List<PaymentofservicesModel> get services;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get agency;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get province;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePaymentofservicesModelCopyWith<_$_CreatePaymentofservicesModel>
      get copyWith => throw _privateConstructorUsedError;
}
