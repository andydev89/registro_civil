// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_service_val_doc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentValidationDocModel _$PaymentValidationDocModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentValidationDocModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentValidationDocModel {
  @FormControlAnnotation(validators: [requiredValidator])
  String get user => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get agency => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  String get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentValidationDocModelCopyWith<PaymentValidationDocModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentValidationDocModelCopyWith<$Res> {
  factory $PaymentValidationDocModelCopyWith(PaymentValidationDocModel value,
          $Res Function(PaymentValidationDocModel) then) =
      _$PaymentValidationDocModelCopyWithImpl<$Res, PaymentValidationDocModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator]) String user,
      @FormControlAnnotation(validators: [requiredValidator]) String agency,
      @FormControlAnnotation(validators: [requiredValidator]) String province});
}

/// @nodoc
class _$PaymentValidationDocModelCopyWithImpl<$Res,
        $Val extends PaymentValidationDocModel>
    implements $PaymentValidationDocModelCopyWith<$Res> {
  _$PaymentValidationDocModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? agency = null,
    Object? province = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PaymentValidationDocModelCopyWith<$Res>
    implements $PaymentValidationDocModelCopyWith<$Res> {
  factory _$$_PaymentValidationDocModelCopyWith(
          _$_PaymentValidationDocModel value,
          $Res Function(_$_PaymentValidationDocModel) then) =
      __$$_PaymentValidationDocModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [requiredValidator]) String user,
      @FormControlAnnotation(validators: [requiredValidator]) String agency,
      @FormControlAnnotation(validators: [requiredValidator]) String province});
}

/// @nodoc
class __$$_PaymentValidationDocModelCopyWithImpl<$Res>
    extends _$PaymentValidationDocModelCopyWithImpl<$Res,
        _$_PaymentValidationDocModel>
    implements _$$_PaymentValidationDocModelCopyWith<$Res> {
  __$$_PaymentValidationDocModelCopyWithImpl(
      _$_PaymentValidationDocModel _value,
      $Res Function(_$_PaymentValidationDocModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? agency = null,
    Object? province = null,
  }) {
    return _then(_$_PaymentValidationDocModel(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_PaymentValidationDocModel extends _PaymentValidationDocModel {
  const _$_PaymentValidationDocModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required this.user,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.agency,
      @FormControlAnnotation(validators: [requiredValidator])
          required this.province})
      : super._();

  factory _$_PaymentValidationDocModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentValidationDocModelFromJson(json);

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String user;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String agency;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final String province;

  @override
  String toString() {
    return 'PaymentValidationDocModel(user: $user, agency: $agency, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentValidationDocModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, agency, province);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentValidationDocModelCopyWith<_$_PaymentValidationDocModel>
      get copyWith => __$$_PaymentValidationDocModelCopyWithImpl<
          _$_PaymentValidationDocModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentValidationDocModelToJson(
      this,
    );
  }
}

abstract class _PaymentValidationDocModel extends PaymentValidationDocModel {
  const factory _PaymentValidationDocModel(
      {@FormControlAnnotation(validators: [requiredValidator])
          required final String user,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String agency,
      @FormControlAnnotation(validators: [requiredValidator])
          required final String province}) = _$_PaymentValidationDocModel;
  const _PaymentValidationDocModel._() : super._();

  factory _PaymentValidationDocModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentValidationDocModel.fromJson;

  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get user;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get agency;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  String get province;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentValidationDocModelCopyWith<_$_PaymentValidationDocModel>
      get copyWith => throw _privateConstructorUsedError;
}
