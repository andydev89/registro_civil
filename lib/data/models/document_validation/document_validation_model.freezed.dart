// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_validation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentValidationModel {
  @FormControlAnnotation(validators: [requiredValidator, length11Validator])
  String get documentCode => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [requiredValidator])
  DateTime get issueDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentValidationModelCopyWith<DocumentValidationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentValidationModelCopyWith<$Res> {
  factory $DocumentValidationModelCopyWith(DocumentValidationModel value,
          $Res Function(DocumentValidationModel) then) =
      _$DocumentValidationModelCopyWithImpl<$Res, DocumentValidationModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        length11Validator
      ])
          String documentCode,
      @FormControlAnnotation(validators: [requiredValidator])
          DateTime issueDate});
}

/// @nodoc
class _$DocumentValidationModelCopyWithImpl<$Res,
        $Val extends DocumentValidationModel>
    implements $DocumentValidationModelCopyWith<$Res> {
  _$DocumentValidationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentCode = null,
    Object? issueDate = null,
  }) {
    return _then(_value.copyWith(
      documentCode: null == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentValidationModelCopyWith<$Res>
    implements $DocumentValidationModelCopyWith<$Res> {
  factory _$$_DocumentValidationModelCopyWith(_$_DocumentValidationModel value,
          $Res Function(_$_DocumentValidationModel) then) =
      __$$_DocumentValidationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        length11Validator
      ])
          String documentCode,
      @FormControlAnnotation(validators: [requiredValidator])
          DateTime issueDate});
}

/// @nodoc
class __$$_DocumentValidationModelCopyWithImpl<$Res>
    extends _$DocumentValidationModelCopyWithImpl<$Res,
        _$_DocumentValidationModel>
    implements _$$_DocumentValidationModelCopyWith<$Res> {
  __$$_DocumentValidationModelCopyWithImpl(_$_DocumentValidationModel _value,
      $Res Function(_$_DocumentValidationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentCode = null,
    Object? issueDate = null,
  }) {
    return _then(_$_DocumentValidationModel(
      documentCode: null == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_DocumentValidationModel extends _DocumentValidationModel {
  const _$_DocumentValidationModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        length11Validator
      ])
          this.documentCode = '',
      @FormControlAnnotation(validators: [requiredValidator])
          required this.issueDate})
      : super._();

  @override
  @JsonKey()
  @FormControlAnnotation(validators: [requiredValidator, length11Validator])
  final String documentCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  final DateTime issueDate;

  @override
  String toString() {
    return 'DocumentValidationModel(documentCode: $documentCode, issueDate: $issueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentValidationModel &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documentCode, issueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentValidationModelCopyWith<_$_DocumentValidationModel>
      get copyWith =>
          __$$_DocumentValidationModelCopyWithImpl<_$_DocumentValidationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentValidationModelToJson(
      this,
    );
  }
}

abstract class _DocumentValidationModel extends DocumentValidationModel {
  const factory _DocumentValidationModel(
      {@FormControlAnnotation(validators: [
        requiredValidator,
        length11Validator
      ])
          final String documentCode,
      @FormControlAnnotation(validators: [requiredValidator])
          required final DateTime issueDate}) = _$_DocumentValidationModel;
  const _DocumentValidationModel._() : super._();

  @override
  @FormControlAnnotation(validators: [requiredValidator, length11Validator])
  String get documentCode;
  @override
  @FormControlAnnotation(validators: [requiredValidator])
  DateTime get issueDate;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentValidationModelCopyWith<_$_DocumentValidationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentValidationResponseModel {
  String? get emisor => throw _privateConstructorUsedError;
  String? get datosAdicionales => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get codError => throw _privateConstructorUsedError;
  String? get desError => throw _privateConstructorUsedError;
  String? get numeroCertificado => throw _privateConstructorUsedError;
  String get resultado => throw _privateConstructorUsedError;
  int get numeroVerificaciones => throw _privateConstructorUsedError;
  DateTime? get fechaVigencia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentValidationResponseModelCopyWith<DocumentValidationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentValidationResponseModelCopyWith<$Res> {
  factory $DocumentValidationResponseModelCopyWith(
          DocumentValidationResponseModel value,
          $Res Function(DocumentValidationResponseModel) then) =
      _$DocumentValidationResponseModelCopyWithImpl<$Res,
          DocumentValidationResponseModel>;
  @useResult
  $Res call(
      {String? emisor,
      String? datosAdicionales,
      String? url,
      String? codError,
      String? desError,
      String? numeroCertificado,
      String resultado,
      int numeroVerificaciones,
      DateTime? fechaVigencia});
}

/// @nodoc
class _$DocumentValidationResponseModelCopyWithImpl<$Res,
        $Val extends DocumentValidationResponseModel>
    implements $DocumentValidationResponseModelCopyWith<$Res> {
  _$DocumentValidationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emisor = freezed,
    Object? datosAdicionales = freezed,
    Object? url = freezed,
    Object? codError = freezed,
    Object? desError = freezed,
    Object? numeroCertificado = freezed,
    Object? resultado = null,
    Object? numeroVerificaciones = null,
    Object? fechaVigencia = freezed,
  }) {
    return _then(_value.copyWith(
      emisor: freezed == emisor
          ? _value.emisor
          : emisor // ignore: cast_nullable_to_non_nullable
              as String?,
      datosAdicionales: freezed == datosAdicionales
          ? _value.datosAdicionales
          : datosAdicionales // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      codError: freezed == codError
          ? _value.codError
          : codError // ignore: cast_nullable_to_non_nullable
              as String?,
      desError: freezed == desError
          ? _value.desError
          : desError // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCertificado: freezed == numeroCertificado
          ? _value.numeroCertificado
          : numeroCertificado // ignore: cast_nullable_to_non_nullable
              as String?,
      resultado: null == resultado
          ? _value.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
      numeroVerificaciones: null == numeroVerificaciones
          ? _value.numeroVerificaciones
          : numeroVerificaciones // ignore: cast_nullable_to_non_nullable
              as int,
      fechaVigencia: freezed == fechaVigencia
          ? _value.fechaVigencia
          : fechaVigencia // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentValidationResponseModelCopyWith<$Res>
    implements $DocumentValidationResponseModelCopyWith<$Res> {
  factory _$$_DocumentValidationResponseModelCopyWith(
          _$_DocumentValidationResponseModel value,
          $Res Function(_$_DocumentValidationResponseModel) then) =
      __$$_DocumentValidationResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? emisor,
      String? datosAdicionales,
      String? url,
      String? codError,
      String? desError,
      String? numeroCertificado,
      String resultado,
      int numeroVerificaciones,
      DateTime? fechaVigencia});
}

/// @nodoc
class __$$_DocumentValidationResponseModelCopyWithImpl<$Res>
    extends _$DocumentValidationResponseModelCopyWithImpl<$Res,
        _$_DocumentValidationResponseModel>
    implements _$$_DocumentValidationResponseModelCopyWith<$Res> {
  __$$_DocumentValidationResponseModelCopyWithImpl(
      _$_DocumentValidationResponseModel _value,
      $Res Function(_$_DocumentValidationResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emisor = freezed,
    Object? datosAdicionales = freezed,
    Object? url = freezed,
    Object? codError = freezed,
    Object? desError = freezed,
    Object? numeroCertificado = freezed,
    Object? resultado = null,
    Object? numeroVerificaciones = null,
    Object? fechaVigencia = freezed,
  }) {
    return _then(_$_DocumentValidationResponseModel(
      emisor: freezed == emisor
          ? _value.emisor
          : emisor // ignore: cast_nullable_to_non_nullable
              as String?,
      datosAdicionales: freezed == datosAdicionales
          ? _value.datosAdicionales
          : datosAdicionales // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      codError: freezed == codError
          ? _value.codError
          : codError // ignore: cast_nullable_to_non_nullable
              as String?,
      desError: freezed == desError
          ? _value.desError
          : desError // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCertificado: freezed == numeroCertificado
          ? _value.numeroCertificado
          : numeroCertificado // ignore: cast_nullable_to_non_nullable
              as String?,
      resultado: null == resultado
          ? _value.resultado
          : resultado // ignore: cast_nullable_to_non_nullable
              as String,
      numeroVerificaciones: null == numeroVerificaciones
          ? _value.numeroVerificaciones
          : numeroVerificaciones // ignore: cast_nullable_to_non_nullable
              as int,
      fechaVigencia: freezed == fechaVigencia
          ? _value.fechaVigencia
          : fechaVigencia // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_DocumentValidationResponseModel
    extends _DocumentValidationResponseModel {
  const _$_DocumentValidationResponseModel(
      {this.emisor,
      this.datosAdicionales,
      this.url,
      this.codError,
      this.desError,
      this.numeroCertificado,
      required this.resultado,
      required this.numeroVerificaciones,
      this.fechaVigencia})
      : super._();

  @override
  final String? emisor;
  @override
  final String? datosAdicionales;
  @override
  final String? url;
  @override
  final String? codError;
  @override
  final String? desError;
  @override
  final String? numeroCertificado;
  @override
  final String resultado;
  @override
  final int numeroVerificaciones;
  @override
  final DateTime? fechaVigencia;

  @override
  String toString() {
    return 'DocumentValidationResponseModel(emisor: $emisor, datosAdicionales: $datosAdicionales, url: $url, codError: $codError, desError: $desError, numeroCertificado: $numeroCertificado, resultado: $resultado, numeroVerificaciones: $numeroVerificaciones, fechaVigencia: $fechaVigencia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentValidationResponseModel &&
            (identical(other.emisor, emisor) || other.emisor == emisor) &&
            (identical(other.datosAdicionales, datosAdicionales) ||
                other.datosAdicionales == datosAdicionales) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.codError, codError) ||
                other.codError == codError) &&
            (identical(other.desError, desError) ||
                other.desError == desError) &&
            (identical(other.numeroCertificado, numeroCertificado) ||
                other.numeroCertificado == numeroCertificado) &&
            (identical(other.resultado, resultado) ||
                other.resultado == resultado) &&
            (identical(other.numeroVerificaciones, numeroVerificaciones) ||
                other.numeroVerificaciones == numeroVerificaciones) &&
            (identical(other.fechaVigencia, fechaVigencia) ||
                other.fechaVigencia == fechaVigencia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      emisor,
      datosAdicionales,
      url,
      codError,
      desError,
      numeroCertificado,
      resultado,
      numeroVerificaciones,
      fechaVigencia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentValidationResponseModelCopyWith<
          _$_DocumentValidationResponseModel>
      get copyWith => __$$_DocumentValidationResponseModelCopyWithImpl<
          _$_DocumentValidationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentValidationResponseModelToJson(
      this,
    );
  }
}

abstract class _DocumentValidationResponseModel
    extends DocumentValidationResponseModel {
  const factory _DocumentValidationResponseModel(
      {final String? emisor,
      final String? datosAdicionales,
      final String? url,
      final String? codError,
      final String? desError,
      final String? numeroCertificado,
      required final String resultado,
      required final int numeroVerificaciones,
      final DateTime? fechaVigencia}) = _$_DocumentValidationResponseModel;
  const _DocumentValidationResponseModel._() : super._();

  @override
  String? get emisor;
  @override
  String? get datosAdicionales;
  @override
  String? get url;
  @override
  String? get codError;
  @override
  String? get desError;
  @override
  String? get numeroCertificado;
  @override
  String get resultado;
  @override
  int get numeroVerificaciones;
  @override
  DateTime? get fechaVigencia;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentValidationResponseModelCopyWith<
          _$_DocumentValidationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
