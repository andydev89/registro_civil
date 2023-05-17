// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitizenModel _$CitizenModelFromJson(Map<String, dynamic> json) {
  return _CitizenModel.fromJson(json);
}

/// @nodoc
mixin _$CitizenModel {
  String get nui => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get apellidos => throw _privateConstructorUsedError;
  String get nombres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitizenModelCopyWith<CitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitizenModelCopyWith<$Res> {
  factory $CitizenModelCopyWith(
          CitizenModel value, $Res Function(CitizenModel) then) =
      _$CitizenModelCopyWithImpl<$Res, CitizenModel>;
  @useResult
  $Res call({String nui, String nombre, String apellidos, String nombres});
}

/// @nodoc
class _$CitizenModelCopyWithImpl<$Res, $Val extends CitizenModel>
    implements $CitizenModelCopyWith<$Res> {
  _$CitizenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? nombre = null,
    Object? apellidos = null,
    Object? nombres = null,
  }) {
    return _then(_value.copyWith(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellidos: null == apellidos
          ? _value.apellidos
          : apellidos // ignore: cast_nullable_to_non_nullable
              as String,
      nombres: null == nombres
          ? _value.nombres
          : nombres // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CitizenModelCopyWith<$Res>
    implements $CitizenModelCopyWith<$Res> {
  factory _$$_CitizenModelCopyWith(
          _$_CitizenModel value, $Res Function(_$_CitizenModel) then) =
      __$$_CitizenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nui, String nombre, String apellidos, String nombres});
}

/// @nodoc
class __$$_CitizenModelCopyWithImpl<$Res>
    extends _$CitizenModelCopyWithImpl<$Res, _$_CitizenModel>
    implements _$$_CitizenModelCopyWith<$Res> {
  __$$_CitizenModelCopyWithImpl(
      _$_CitizenModel _value, $Res Function(_$_CitizenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nui = null,
    Object? nombre = null,
    Object? apellidos = null,
    Object? nombres = null,
  }) {
    return _then(_$_CitizenModel(
      nui: null == nui
          ? _value.nui
          : nui // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellidos: null == apellidos
          ? _value.apellidos
          : apellidos // ignore: cast_nullable_to_non_nullable
              as String,
      nombres: null == nombres
          ? _value.nombres
          : nombres // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitizenModel extends _CitizenModel {
  const _$_CitizenModel(
      {this.nui = '', this.nombre = '', this.apellidos = '', this.nombres = ''})
      : super._();

  factory _$_CitizenModel.fromJson(Map<String, dynamic> json) =>
      _$$_CitizenModelFromJson(json);

  @override
  @JsonKey()
  final String nui;
  @override
  @JsonKey()
  final String nombre;
  @override
  @JsonKey()
  final String apellidos;
  @override
  @JsonKey()
  final String nombres;

  @override
  String toString() {
    return 'CitizenModel(nui: $nui, nombre: $nombre, apellidos: $apellidos, nombres: $nombres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitizenModel &&
            (identical(other.nui, nui) || other.nui == nui) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellidos, apellidos) ||
                other.apellidos == apellidos) &&
            (identical(other.nombres, nombres) || other.nombres == nombres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nui, nombre, apellidos, nombres);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitizenModelCopyWith<_$_CitizenModel> get copyWith =>
      __$$_CitizenModelCopyWithImpl<_$_CitizenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitizenModelToJson(
      this,
    );
  }
}

abstract class _CitizenModel extends CitizenModel {
  const factory _CitizenModel(
      {final String nui,
      final String nombre,
      final String apellidos,
      final String nombres}) = _$_CitizenModel;
  const _CitizenModel._() : super._();

  factory _CitizenModel.fromJson(Map<String, dynamic> json) =
      _$_CitizenModel.fromJson;

  @override
  String get nui;
  @override
  String get nombre;
  @override
  String get apellidos;
  @override
  String get nombres;
  @override
  @JsonKey(ignore: true)
  _$$_CitizenModelCopyWith<_$_CitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DomicilioModel _$DomicilioModelFromJson(Map<String, dynamic> json) {
  return _DomicilioModel.fromJson(json);
}

/// @nodoc
mixin _$DomicilioModel {
  String? get codigoDomicilio => throw _privateConstructorUsedError;
  String? get domicilio => throw _privateConstructorUsedError;
  String? get calle => throw _privateConstructorUsedError;
  String? get numeroCasa => throw _privateConstructorUsedError;
  String? get codigoParroquiaDomicilio => throw _privateConstructorUsedError;
  String? get codigoCantonDomicilio => throw _privateConstructorUsedError;
  String? get codigoProvinciaDomicilio => throw _privateConstructorUsedError;
  String? get codigoPaisDomicilio => throw _privateConstructorUsedError;
  String? get parroquiaDomicilio => throw _privateConstructorUsedError;
  String? get cantonDomicilio => throw _privateConstructorUsedError;
  String? get provinciaDomicilio => throw _privateConstructorUsedError;
  String? get paisDomicilio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DomicilioModelCopyWith<DomicilioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DomicilioModelCopyWith<$Res> {
  factory $DomicilioModelCopyWith(
          DomicilioModel value, $Res Function(DomicilioModel) then) =
      _$DomicilioModelCopyWithImpl<$Res, DomicilioModel>;
  @useResult
  $Res call(
      {String? codigoDomicilio,
      String? domicilio,
      String? calle,
      String? numeroCasa,
      String? codigoParroquiaDomicilio,
      String? codigoCantonDomicilio,
      String? codigoProvinciaDomicilio,
      String? codigoPaisDomicilio,
      String? parroquiaDomicilio,
      String? cantonDomicilio,
      String? provinciaDomicilio,
      String? paisDomicilio});
}

/// @nodoc
class _$DomicilioModelCopyWithImpl<$Res, $Val extends DomicilioModel>
    implements $DomicilioModelCopyWith<$Res> {
  _$DomicilioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoDomicilio = freezed,
    Object? domicilio = freezed,
    Object? calle = freezed,
    Object? numeroCasa = freezed,
    Object? codigoParroquiaDomicilio = freezed,
    Object? codigoCantonDomicilio = freezed,
    Object? codigoProvinciaDomicilio = freezed,
    Object? codigoPaisDomicilio = freezed,
    Object? parroquiaDomicilio = freezed,
    Object? cantonDomicilio = freezed,
    Object? provinciaDomicilio = freezed,
    Object? paisDomicilio = freezed,
  }) {
    return _then(_value.copyWith(
      codigoDomicilio: freezed == codigoDomicilio
          ? _value.codigoDomicilio
          : codigoDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      domicilio: freezed == domicilio
          ? _value.domicilio
          : domicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      calle: freezed == calle
          ? _value.calle
          : calle // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCasa: freezed == numeroCasa
          ? _value.numeroCasa
          : numeroCasa // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaDomicilio: freezed == codigoParroquiaDomicilio
          ? _value.codigoParroquiaDomicilio
          : codigoParroquiaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonDomicilio: freezed == codigoCantonDomicilio
          ? _value.codigoCantonDomicilio
          : codigoCantonDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaDomicilio: freezed == codigoProvinciaDomicilio
          ? _value.codigoProvinciaDomicilio
          : codigoProvinciaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisDomicilio: freezed == codigoPaisDomicilio
          ? _value.codigoPaisDomicilio
          : codigoPaisDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaDomicilio: freezed == parroquiaDomicilio
          ? _value.parroquiaDomicilio
          : parroquiaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonDomicilio: freezed == cantonDomicilio
          ? _value.cantonDomicilio
          : cantonDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaDomicilio: freezed == provinciaDomicilio
          ? _value.provinciaDomicilio
          : provinciaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      paisDomicilio: freezed == paisDomicilio
          ? _value.paisDomicilio
          : paisDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DomicilioModelCopyWith<$Res>
    implements $DomicilioModelCopyWith<$Res> {
  factory _$$_DomicilioModelCopyWith(
          _$_DomicilioModel value, $Res Function(_$_DomicilioModel) then) =
      __$$_DomicilioModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codigoDomicilio,
      String? domicilio,
      String? calle,
      String? numeroCasa,
      String? codigoParroquiaDomicilio,
      String? codigoCantonDomicilio,
      String? codigoProvinciaDomicilio,
      String? codigoPaisDomicilio,
      String? parroquiaDomicilio,
      String? cantonDomicilio,
      String? provinciaDomicilio,
      String? paisDomicilio});
}

/// @nodoc
class __$$_DomicilioModelCopyWithImpl<$Res>
    extends _$DomicilioModelCopyWithImpl<$Res, _$_DomicilioModel>
    implements _$$_DomicilioModelCopyWith<$Res> {
  __$$_DomicilioModelCopyWithImpl(
      _$_DomicilioModel _value, $Res Function(_$_DomicilioModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoDomicilio = freezed,
    Object? domicilio = freezed,
    Object? calle = freezed,
    Object? numeroCasa = freezed,
    Object? codigoParroquiaDomicilio = freezed,
    Object? codigoCantonDomicilio = freezed,
    Object? codigoProvinciaDomicilio = freezed,
    Object? codigoPaisDomicilio = freezed,
    Object? parroquiaDomicilio = freezed,
    Object? cantonDomicilio = freezed,
    Object? provinciaDomicilio = freezed,
    Object? paisDomicilio = freezed,
  }) {
    return _then(_$_DomicilioModel(
      codigoDomicilio: freezed == codigoDomicilio
          ? _value.codigoDomicilio
          : codigoDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      domicilio: freezed == domicilio
          ? _value.domicilio
          : domicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      calle: freezed == calle
          ? _value.calle
          : calle // ignore: cast_nullable_to_non_nullable
              as String?,
      numeroCasa: freezed == numeroCasa
          ? _value.numeroCasa
          : numeroCasa // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaDomicilio: freezed == codigoParroquiaDomicilio
          ? _value.codigoParroquiaDomicilio
          : codigoParroquiaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonDomicilio: freezed == codigoCantonDomicilio
          ? _value.codigoCantonDomicilio
          : codigoCantonDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaDomicilio: freezed == codigoProvinciaDomicilio
          ? _value.codigoProvinciaDomicilio
          : codigoProvinciaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisDomicilio: freezed == codigoPaisDomicilio
          ? _value.codigoPaisDomicilio
          : codigoPaisDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaDomicilio: freezed == parroquiaDomicilio
          ? _value.parroquiaDomicilio
          : parroquiaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonDomicilio: freezed == cantonDomicilio
          ? _value.cantonDomicilio
          : cantonDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaDomicilio: freezed == provinciaDomicilio
          ? _value.provinciaDomicilio
          : provinciaDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
      paisDomicilio: freezed == paisDomicilio
          ? _value.paisDomicilio
          : paisDomicilio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DomicilioModel implements _DomicilioModel {
  const _$_DomicilioModel(
      {this.codigoDomicilio,
      this.domicilio,
      this.calle,
      this.numeroCasa,
      this.codigoParroquiaDomicilio,
      this.codigoCantonDomicilio,
      this.codigoProvinciaDomicilio,
      this.codigoPaisDomicilio,
      this.parroquiaDomicilio,
      this.cantonDomicilio,
      this.provinciaDomicilio,
      this.paisDomicilio});

  factory _$_DomicilioModel.fromJson(Map<String, dynamic> json) =>
      _$$_DomicilioModelFromJson(json);

  @override
  final String? codigoDomicilio;
  @override
  final String? domicilio;
  @override
  final String? calle;
  @override
  final String? numeroCasa;
  @override
  final String? codigoParroquiaDomicilio;
  @override
  final String? codigoCantonDomicilio;
  @override
  final String? codigoProvinciaDomicilio;
  @override
  final String? codigoPaisDomicilio;
  @override
  final String? parroquiaDomicilio;
  @override
  final String? cantonDomicilio;
  @override
  final String? provinciaDomicilio;
  @override
  final String? paisDomicilio;

  @override
  String toString() {
    return 'DomicilioModel(codigoDomicilio: $codigoDomicilio, domicilio: $domicilio, calle: $calle, numeroCasa: $numeroCasa, codigoParroquiaDomicilio: $codigoParroquiaDomicilio, codigoCantonDomicilio: $codigoCantonDomicilio, codigoProvinciaDomicilio: $codigoProvinciaDomicilio, codigoPaisDomicilio: $codigoPaisDomicilio, parroquiaDomicilio: $parroquiaDomicilio, cantonDomicilio: $cantonDomicilio, provinciaDomicilio: $provinciaDomicilio, paisDomicilio: $paisDomicilio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DomicilioModel &&
            (identical(other.codigoDomicilio, codigoDomicilio) ||
                other.codigoDomicilio == codigoDomicilio) &&
            (identical(other.domicilio, domicilio) ||
                other.domicilio == domicilio) &&
            (identical(other.calle, calle) || other.calle == calle) &&
            (identical(other.numeroCasa, numeroCasa) ||
                other.numeroCasa == numeroCasa) &&
            (identical(
                    other.codigoParroquiaDomicilio, codigoParroquiaDomicilio) ||
                other.codigoParroquiaDomicilio == codigoParroquiaDomicilio) &&
            (identical(other.codigoCantonDomicilio, codigoCantonDomicilio) ||
                other.codigoCantonDomicilio == codigoCantonDomicilio) &&
            (identical(
                    other.codigoProvinciaDomicilio, codigoProvinciaDomicilio) ||
                other.codigoProvinciaDomicilio == codigoProvinciaDomicilio) &&
            (identical(other.codigoPaisDomicilio, codigoPaisDomicilio) ||
                other.codigoPaisDomicilio == codigoPaisDomicilio) &&
            (identical(other.parroquiaDomicilio, parroquiaDomicilio) ||
                other.parroquiaDomicilio == parroquiaDomicilio) &&
            (identical(other.cantonDomicilio, cantonDomicilio) ||
                other.cantonDomicilio == cantonDomicilio) &&
            (identical(other.provinciaDomicilio, provinciaDomicilio) ||
                other.provinciaDomicilio == provinciaDomicilio) &&
            (identical(other.paisDomicilio, paisDomicilio) ||
                other.paisDomicilio == paisDomicilio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codigoDomicilio,
      domicilio,
      calle,
      numeroCasa,
      codigoParroquiaDomicilio,
      codigoCantonDomicilio,
      codigoProvinciaDomicilio,
      codigoPaisDomicilio,
      parroquiaDomicilio,
      cantonDomicilio,
      provinciaDomicilio,
      paisDomicilio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DomicilioModelCopyWith<_$_DomicilioModel> get copyWith =>
      __$$_DomicilioModelCopyWithImpl<_$_DomicilioModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DomicilioModelToJson(
      this,
    );
  }
}

abstract class _DomicilioModel implements DomicilioModel {
  const factory _DomicilioModel(
      {final String? codigoDomicilio,
      final String? domicilio,
      final String? calle,
      final String? numeroCasa,
      final String? codigoParroquiaDomicilio,
      final String? codigoCantonDomicilio,
      final String? codigoProvinciaDomicilio,
      final String? codigoPaisDomicilio,
      final String? parroquiaDomicilio,
      final String? cantonDomicilio,
      final String? provinciaDomicilio,
      final String? paisDomicilio}) = _$_DomicilioModel;

  factory _DomicilioModel.fromJson(Map<String, dynamic> json) =
      _$_DomicilioModel.fromJson;

  @override
  String? get codigoDomicilio;
  @override
  String? get domicilio;
  @override
  String? get calle;
  @override
  String? get numeroCasa;
  @override
  String? get codigoParroquiaDomicilio;
  @override
  String? get codigoCantonDomicilio;
  @override
  String? get codigoProvinciaDomicilio;
  @override
  String? get codigoPaisDomicilio;
  @override
  String? get parroquiaDomicilio;
  @override
  String? get cantonDomicilio;
  @override
  String? get provinciaDomicilio;
  @override
  String? get paisDomicilio;
  @override
  @JsonKey(ignore: true)
  _$$_DomicilioModelCopyWith<_$_DomicilioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NacimientoModel _$NacimientoModelFromJson(Map<String, dynamic> json) {
  return _NacimientoModel.fromJson(json);
}

/// @nodoc
mixin _$NacimientoModel {
  String? get codigoLugarNacimiento => throw _privateConstructorUsedError;
  String get lugarNacimiento => throw _privateConstructorUsedError;
  String? get tomo => throw _privateConstructorUsedError;
  String? get clase => throw _privateConstructorUsedError;
  String? get pagina => throw _privateConstructorUsedError;
  String? get acta => throw _privateConstructorUsedError;
  String? get codigoParroquiaNacimiento => throw _privateConstructorUsedError;
  String? get codigoCantonNacimiento => throw _privateConstructorUsedError;
  String? get codigoProvinciaNacimiento => throw _privateConstructorUsedError;
  String? get codigoPaisNacimiento => throw _privateConstructorUsedError;
  String? get parroquiaNacimiento => throw _privateConstructorUsedError;
  String? get cantonNacimiento => throw _privateConstructorUsedError;
  String? get provinciaNacimiento => throw _privateConstructorUsedError;
  String? get paisNacimiento => throw _privateConstructorUsedError;
  String? get codigoLugarInscripcion => throw _privateConstructorUsedError;
  String? get lugarInscripcion => throw _privateConstructorUsedError;
  String? get anioInscripcion => throw _privateConstructorUsedError;
  String? get codigoParroquiaInscripcion => throw _privateConstructorUsedError;
  String? get codigoCantonInscripcion => throw _privateConstructorUsedError;
  String? get codigoProvinciaInscripcion => throw _privateConstructorUsedError;
  String? get codigoPaisInscripcion => throw _privateConstructorUsedError;
  String? get parroquiaInscripcion => throw _privateConstructorUsedError;
  String? get cantonInscripcion => throw _privateConstructorUsedError;
  String? get provinciaInscripcion => throw _privateConstructorUsedError;
  String? get paisInscripcion => throw _privateConstructorUsedError;
  String? get fechaInscripcionNacimiento => throw _privateConstructorUsedError;
  String? get anioInscripcionNacimiento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NacimientoModelCopyWith<NacimientoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NacimientoModelCopyWith<$Res> {
  factory $NacimientoModelCopyWith(
          NacimientoModel value, $Res Function(NacimientoModel) then) =
      _$NacimientoModelCopyWithImpl<$Res, NacimientoModel>;
  @useResult
  $Res call(
      {String? codigoLugarNacimiento,
      String lugarNacimiento,
      String? tomo,
      String? clase,
      String? pagina,
      String? acta,
      String? codigoParroquiaNacimiento,
      String? codigoCantonNacimiento,
      String? codigoProvinciaNacimiento,
      String? codigoPaisNacimiento,
      String? parroquiaNacimiento,
      String? cantonNacimiento,
      String? provinciaNacimiento,
      String? paisNacimiento,
      String? codigoLugarInscripcion,
      String? lugarInscripcion,
      String? anioInscripcion,
      String? codigoParroquiaInscripcion,
      String? codigoCantonInscripcion,
      String? codigoProvinciaInscripcion,
      String? codigoPaisInscripcion,
      String? parroquiaInscripcion,
      String? cantonInscripcion,
      String? provinciaInscripcion,
      String? paisInscripcion,
      String? fechaInscripcionNacimiento,
      String? anioInscripcionNacimiento});
}

/// @nodoc
class _$NacimientoModelCopyWithImpl<$Res, $Val extends NacimientoModel>
    implements $NacimientoModelCopyWith<$Res> {
  _$NacimientoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoLugarNacimiento = freezed,
    Object? lugarNacimiento = null,
    Object? tomo = freezed,
    Object? clase = freezed,
    Object? pagina = freezed,
    Object? acta = freezed,
    Object? codigoParroquiaNacimiento = freezed,
    Object? codigoCantonNacimiento = freezed,
    Object? codigoProvinciaNacimiento = freezed,
    Object? codigoPaisNacimiento = freezed,
    Object? parroquiaNacimiento = freezed,
    Object? cantonNacimiento = freezed,
    Object? provinciaNacimiento = freezed,
    Object? paisNacimiento = freezed,
    Object? codigoLugarInscripcion = freezed,
    Object? lugarInscripcion = freezed,
    Object? anioInscripcion = freezed,
    Object? codigoParroquiaInscripcion = freezed,
    Object? codigoCantonInscripcion = freezed,
    Object? codigoProvinciaInscripcion = freezed,
    Object? codigoPaisInscripcion = freezed,
    Object? parroquiaInscripcion = freezed,
    Object? cantonInscripcion = freezed,
    Object? provinciaInscripcion = freezed,
    Object? paisInscripcion = freezed,
    Object? fechaInscripcionNacimiento = freezed,
    Object? anioInscripcionNacimiento = freezed,
  }) {
    return _then(_value.copyWith(
      codigoLugarNacimiento: freezed == codigoLugarNacimiento
          ? _value.codigoLugarNacimiento
          : codigoLugarNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarNacimiento: null == lugarNacimiento
          ? _value.lugarNacimiento
          : lugarNacimiento // ignore: cast_nullable_to_non_nullable
              as String,
      tomo: freezed == tomo
          ? _value.tomo
          : tomo // ignore: cast_nullable_to_non_nullable
              as String?,
      clase: freezed == clase
          ? _value.clase
          : clase // ignore: cast_nullable_to_non_nullable
              as String?,
      pagina: freezed == pagina
          ? _value.pagina
          : pagina // ignore: cast_nullable_to_non_nullable
              as String?,
      acta: freezed == acta
          ? _value.acta
          : acta // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaNacimiento: freezed == codigoParroquiaNacimiento
          ? _value.codigoParroquiaNacimiento
          : codigoParroquiaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonNacimiento: freezed == codigoCantonNacimiento
          ? _value.codigoCantonNacimiento
          : codigoCantonNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaNacimiento: freezed == codigoProvinciaNacimiento
          ? _value.codigoProvinciaNacimiento
          : codigoProvinciaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisNacimiento: freezed == codigoPaisNacimiento
          ? _value.codigoPaisNacimiento
          : codigoPaisNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaNacimiento: freezed == parroquiaNacimiento
          ? _value.parroquiaNacimiento
          : parroquiaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonNacimiento: freezed == cantonNacimiento
          ? _value.cantonNacimiento
          : cantonNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaNacimiento: freezed == provinciaNacimiento
          ? _value.provinciaNacimiento
          : provinciaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      paisNacimiento: freezed == paisNacimiento
          ? _value.paisNacimiento
          : paisNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarInscripcion: freezed == codigoLugarInscripcion
          ? _value.codigoLugarInscripcion
          : codigoLugarInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarInscripcion: freezed == lugarInscripcion
          ? _value.lugarInscripcion
          : lugarInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      anioInscripcion: freezed == anioInscripcion
          ? _value.anioInscripcion
          : anioInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcion: freezed == codigoParroquiaInscripcion
          ? _value.codigoParroquiaInscripcion
          : codigoParroquiaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcion: freezed == codigoCantonInscripcion
          ? _value.codigoCantonInscripcion
          : codigoCantonInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcion: freezed == codigoProvinciaInscripcion
          ? _value.codigoProvinciaInscripcion
          : codigoProvinciaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcion: freezed == codigoPaisInscripcion
          ? _value.codigoPaisInscripcion
          : codigoPaisInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcion: freezed == parroquiaInscripcion
          ? _value.parroquiaInscripcion
          : parroquiaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcion: freezed == cantonInscripcion
          ? _value.cantonInscripcion
          : cantonInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcion: freezed == provinciaInscripcion
          ? _value.provinciaInscripcion
          : provinciaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcion: freezed == paisInscripcion
          ? _value.paisInscripcion
          : paisInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionNacimiento: freezed == fechaInscripcionNacimiento
          ? _value.fechaInscripcionNacimiento
          : fechaInscripcionNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      anioInscripcionNacimiento: freezed == anioInscripcionNacimiento
          ? _value.anioInscripcionNacimiento
          : anioInscripcionNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NacimientoModelCopyWith<$Res>
    implements $NacimientoModelCopyWith<$Res> {
  factory _$$_NacimientoModelCopyWith(
          _$_NacimientoModel value, $Res Function(_$_NacimientoModel) then) =
      __$$_NacimientoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codigoLugarNacimiento,
      String lugarNacimiento,
      String? tomo,
      String? clase,
      String? pagina,
      String? acta,
      String? codigoParroquiaNacimiento,
      String? codigoCantonNacimiento,
      String? codigoProvinciaNacimiento,
      String? codigoPaisNacimiento,
      String? parroquiaNacimiento,
      String? cantonNacimiento,
      String? provinciaNacimiento,
      String? paisNacimiento,
      String? codigoLugarInscripcion,
      String? lugarInscripcion,
      String? anioInscripcion,
      String? codigoParroquiaInscripcion,
      String? codigoCantonInscripcion,
      String? codigoProvinciaInscripcion,
      String? codigoPaisInscripcion,
      String? parroquiaInscripcion,
      String? cantonInscripcion,
      String? provinciaInscripcion,
      String? paisInscripcion,
      String? fechaInscripcionNacimiento,
      String? anioInscripcionNacimiento});
}

/// @nodoc
class __$$_NacimientoModelCopyWithImpl<$Res>
    extends _$NacimientoModelCopyWithImpl<$Res, _$_NacimientoModel>
    implements _$$_NacimientoModelCopyWith<$Res> {
  __$$_NacimientoModelCopyWithImpl(
      _$_NacimientoModel _value, $Res Function(_$_NacimientoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoLugarNacimiento = freezed,
    Object? lugarNacimiento = null,
    Object? tomo = freezed,
    Object? clase = freezed,
    Object? pagina = freezed,
    Object? acta = freezed,
    Object? codigoParroquiaNacimiento = freezed,
    Object? codigoCantonNacimiento = freezed,
    Object? codigoProvinciaNacimiento = freezed,
    Object? codigoPaisNacimiento = freezed,
    Object? parroquiaNacimiento = freezed,
    Object? cantonNacimiento = freezed,
    Object? provinciaNacimiento = freezed,
    Object? paisNacimiento = freezed,
    Object? codigoLugarInscripcion = freezed,
    Object? lugarInscripcion = freezed,
    Object? anioInscripcion = freezed,
    Object? codigoParroquiaInscripcion = freezed,
    Object? codigoCantonInscripcion = freezed,
    Object? codigoProvinciaInscripcion = freezed,
    Object? codigoPaisInscripcion = freezed,
    Object? parroquiaInscripcion = freezed,
    Object? cantonInscripcion = freezed,
    Object? provinciaInscripcion = freezed,
    Object? paisInscripcion = freezed,
    Object? fechaInscripcionNacimiento = freezed,
    Object? anioInscripcionNacimiento = freezed,
  }) {
    return _then(_$_NacimientoModel(
      codigoLugarNacimiento: freezed == codigoLugarNacimiento
          ? _value.codigoLugarNacimiento
          : codigoLugarNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarNacimiento: null == lugarNacimiento
          ? _value.lugarNacimiento
          : lugarNacimiento // ignore: cast_nullable_to_non_nullable
              as String,
      tomo: freezed == tomo
          ? _value.tomo
          : tomo // ignore: cast_nullable_to_non_nullable
              as String?,
      clase: freezed == clase
          ? _value.clase
          : clase // ignore: cast_nullable_to_non_nullable
              as String?,
      pagina: freezed == pagina
          ? _value.pagina
          : pagina // ignore: cast_nullable_to_non_nullable
              as String?,
      acta: freezed == acta
          ? _value.acta
          : acta // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaNacimiento: freezed == codigoParroquiaNacimiento
          ? _value.codigoParroquiaNacimiento
          : codigoParroquiaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonNacimiento: freezed == codigoCantonNacimiento
          ? _value.codigoCantonNacimiento
          : codigoCantonNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaNacimiento: freezed == codigoProvinciaNacimiento
          ? _value.codigoProvinciaNacimiento
          : codigoProvinciaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisNacimiento: freezed == codigoPaisNacimiento
          ? _value.codigoPaisNacimiento
          : codigoPaisNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaNacimiento: freezed == parroquiaNacimiento
          ? _value.parroquiaNacimiento
          : parroquiaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonNacimiento: freezed == cantonNacimiento
          ? _value.cantonNacimiento
          : cantonNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaNacimiento: freezed == provinciaNacimiento
          ? _value.provinciaNacimiento
          : provinciaNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      paisNacimiento: freezed == paisNacimiento
          ? _value.paisNacimiento
          : paisNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarInscripcion: freezed == codigoLugarInscripcion
          ? _value.codigoLugarInscripcion
          : codigoLugarInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarInscripcion: freezed == lugarInscripcion
          ? _value.lugarInscripcion
          : lugarInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      anioInscripcion: freezed == anioInscripcion
          ? _value.anioInscripcion
          : anioInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcion: freezed == codigoParroquiaInscripcion
          ? _value.codigoParroquiaInscripcion
          : codigoParroquiaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcion: freezed == codigoCantonInscripcion
          ? _value.codigoCantonInscripcion
          : codigoCantonInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcion: freezed == codigoProvinciaInscripcion
          ? _value.codigoProvinciaInscripcion
          : codigoProvinciaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcion: freezed == codigoPaisInscripcion
          ? _value.codigoPaisInscripcion
          : codigoPaisInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcion: freezed == parroquiaInscripcion
          ? _value.parroquiaInscripcion
          : parroquiaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcion: freezed == cantonInscripcion
          ? _value.cantonInscripcion
          : cantonInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcion: freezed == provinciaInscripcion
          ? _value.provinciaInscripcion
          : provinciaInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcion: freezed == paisInscripcion
          ? _value.paisInscripcion
          : paisInscripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionNacimiento: freezed == fechaInscripcionNacimiento
          ? _value.fechaInscripcionNacimiento
          : fechaInscripcionNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      anioInscripcionNacimiento: freezed == anioInscripcionNacimiento
          ? _value.anioInscripcionNacimiento
          : anioInscripcionNacimiento // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NacimientoModel implements _NacimientoModel {
  const _$_NacimientoModel(
      {this.codigoLugarNacimiento,
      this.lugarNacimiento = '',
      this.tomo,
      this.clase,
      this.pagina,
      this.acta,
      this.codigoParroquiaNacimiento,
      this.codigoCantonNacimiento,
      this.codigoProvinciaNacimiento,
      this.codigoPaisNacimiento,
      this.parroquiaNacimiento,
      this.cantonNacimiento,
      this.provinciaNacimiento,
      this.paisNacimiento,
      this.codigoLugarInscripcion,
      this.lugarInscripcion,
      this.anioInscripcion,
      this.codigoParroquiaInscripcion,
      this.codigoCantonInscripcion,
      this.codigoProvinciaInscripcion,
      this.codigoPaisInscripcion,
      this.parroquiaInscripcion,
      this.cantonInscripcion,
      this.provinciaInscripcion,
      this.paisInscripcion,
      this.fechaInscripcionNacimiento,
      this.anioInscripcionNacimiento});

  factory _$_NacimientoModel.fromJson(Map<String, dynamic> json) =>
      _$$_NacimientoModelFromJson(json);

  @override
  final String? codigoLugarNacimiento;
  @override
  @JsonKey()
  final String lugarNacimiento;
  @override
  final String? tomo;
  @override
  final String? clase;
  @override
  final String? pagina;
  @override
  final String? acta;
  @override
  final String? codigoParroquiaNacimiento;
  @override
  final String? codigoCantonNacimiento;
  @override
  final String? codigoProvinciaNacimiento;
  @override
  final String? codigoPaisNacimiento;
  @override
  final String? parroquiaNacimiento;
  @override
  final String? cantonNacimiento;
  @override
  final String? provinciaNacimiento;
  @override
  final String? paisNacimiento;
  @override
  final String? codigoLugarInscripcion;
  @override
  final String? lugarInscripcion;
  @override
  final String? anioInscripcion;
  @override
  final String? codigoParroquiaInscripcion;
  @override
  final String? codigoCantonInscripcion;
  @override
  final String? codigoProvinciaInscripcion;
  @override
  final String? codigoPaisInscripcion;
  @override
  final String? parroquiaInscripcion;
  @override
  final String? cantonInscripcion;
  @override
  final String? provinciaInscripcion;
  @override
  final String? paisInscripcion;
  @override
  final String? fechaInscripcionNacimiento;
  @override
  final String? anioInscripcionNacimiento;

  @override
  String toString() {
    return 'NacimientoModel(codigoLugarNacimiento: $codigoLugarNacimiento, lugarNacimiento: $lugarNacimiento, tomo: $tomo, clase: $clase, pagina: $pagina, acta: $acta, codigoParroquiaNacimiento: $codigoParroquiaNacimiento, codigoCantonNacimiento: $codigoCantonNacimiento, codigoProvinciaNacimiento: $codigoProvinciaNacimiento, codigoPaisNacimiento: $codigoPaisNacimiento, parroquiaNacimiento: $parroquiaNacimiento, cantonNacimiento: $cantonNacimiento, provinciaNacimiento: $provinciaNacimiento, paisNacimiento: $paisNacimiento, codigoLugarInscripcion: $codigoLugarInscripcion, lugarInscripcion: $lugarInscripcion, anioInscripcion: $anioInscripcion, codigoParroquiaInscripcion: $codigoParroquiaInscripcion, codigoCantonInscripcion: $codigoCantonInscripcion, codigoProvinciaInscripcion: $codigoProvinciaInscripcion, codigoPaisInscripcion: $codigoPaisInscripcion, parroquiaInscripcion: $parroquiaInscripcion, cantonInscripcion: $cantonInscripcion, provinciaInscripcion: $provinciaInscripcion, paisInscripcion: $paisInscripcion, fechaInscripcionNacimiento: $fechaInscripcionNacimiento, anioInscripcionNacimiento: $anioInscripcionNacimiento)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NacimientoModel &&
            (identical(other.codigoLugarNacimiento, codigoLugarNacimiento) ||
                other.codigoLugarNacimiento == codigoLugarNacimiento) &&
            (identical(other.lugarNacimiento, lugarNacimiento) ||
                other.lugarNacimiento == lugarNacimiento) &&
            (identical(other.tomo, tomo) || other.tomo == tomo) &&
            (identical(other.clase, clase) || other.clase == clase) &&
            (identical(other.pagina, pagina) || other.pagina == pagina) &&
            (identical(other.acta, acta) || other.acta == acta) &&
            (identical(other.codigoParroquiaNacimiento, codigoParroquiaNacimiento) ||
                other.codigoParroquiaNacimiento == codigoParroquiaNacimiento) &&
            (identical(other.codigoCantonNacimiento, codigoCantonNacimiento) ||
                other.codigoCantonNacimiento == codigoCantonNacimiento) &&
            (identical(other.codigoProvinciaNacimiento, codigoProvinciaNacimiento) ||
                other.codigoProvinciaNacimiento == codigoProvinciaNacimiento) &&
            (identical(other.codigoPaisNacimiento, codigoPaisNacimiento) ||
                other.codigoPaisNacimiento == codigoPaisNacimiento) &&
            (identical(other.parroquiaNacimiento, parroquiaNacimiento) ||
                other.parroquiaNacimiento == parroquiaNacimiento) &&
            (identical(other.cantonNacimiento, cantonNacimiento) ||
                other.cantonNacimiento == cantonNacimiento) &&
            (identical(other.provinciaNacimiento, provinciaNacimiento) ||
                other.provinciaNacimiento == provinciaNacimiento) &&
            (identical(other.paisNacimiento, paisNacimiento) ||
                other.paisNacimiento == paisNacimiento) &&
            (identical(other.codigoLugarInscripcion, codigoLugarInscripcion) ||
                other.codigoLugarInscripcion == codigoLugarInscripcion) &&
            (identical(other.lugarInscripcion, lugarInscripcion) ||
                other.lugarInscripcion == lugarInscripcion) &&
            (identical(other.anioInscripcion, anioInscripcion) ||
                other.anioInscripcion == anioInscripcion) &&
            (identical(other.codigoParroquiaInscripcion, codigoParroquiaInscripcion) ||
                other.codigoParroquiaInscripcion ==
                    codigoParroquiaInscripcion) &&
            (identical(other.codigoCantonInscripcion, codigoCantonInscripcion) ||
                other.codigoCantonInscripcion == codigoCantonInscripcion) &&
            (identical(other.codigoProvinciaInscripcion, codigoProvinciaInscripcion) ||
                other.codigoProvinciaInscripcion ==
                    codigoProvinciaInscripcion) &&
            (identical(other.codigoPaisInscripcion, codigoPaisInscripcion) ||
                other.codigoPaisInscripcion == codigoPaisInscripcion) &&
            (identical(other.parroquiaInscripcion, parroquiaInscripcion) ||
                other.parroquiaInscripcion == parroquiaInscripcion) &&
            (identical(other.cantonInscripcion, cantonInscripcion) ||
                other.cantonInscripcion == cantonInscripcion) &&
            (identical(other.provinciaInscripcion, provinciaInscripcion) ||
                other.provinciaInscripcion == provinciaInscripcion) &&
            (identical(other.paisInscripcion, paisInscripcion) ||
                other.paisInscripcion == paisInscripcion) &&
            (identical(other.fechaInscripcionNacimiento, fechaInscripcionNacimiento) ||
                other.fechaInscripcionNacimiento ==
                    fechaInscripcionNacimiento) &&
            (identical(
                    other.anioInscripcionNacimiento, anioInscripcionNacimiento) ||
                other.anioInscripcionNacimiento == anioInscripcionNacimiento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        codigoLugarNacimiento,
        lugarNacimiento,
        tomo,
        clase,
        pagina,
        acta,
        codigoParroquiaNacimiento,
        codigoCantonNacimiento,
        codigoProvinciaNacimiento,
        codigoPaisNacimiento,
        parroquiaNacimiento,
        cantonNacimiento,
        provinciaNacimiento,
        paisNacimiento,
        codigoLugarInscripcion,
        lugarInscripcion,
        anioInscripcion,
        codigoParroquiaInscripcion,
        codigoCantonInscripcion,
        codigoProvinciaInscripcion,
        codigoPaisInscripcion,
        parroquiaInscripcion,
        cantonInscripcion,
        provinciaInscripcion,
        paisInscripcion,
        fechaInscripcionNacimiento,
        anioInscripcionNacimiento
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NacimientoModelCopyWith<_$_NacimientoModel> get copyWith =>
      __$$_NacimientoModelCopyWithImpl<_$_NacimientoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NacimientoModelToJson(
      this,
    );
  }
}

abstract class _NacimientoModel implements NacimientoModel {
  const factory _NacimientoModel(
      {final String? codigoLugarNacimiento,
      final String lugarNacimiento,
      final String? tomo,
      final String? clase,
      final String? pagina,
      final String? acta,
      final String? codigoParroquiaNacimiento,
      final String? codigoCantonNacimiento,
      final String? codigoProvinciaNacimiento,
      final String? codigoPaisNacimiento,
      final String? parroquiaNacimiento,
      final String? cantonNacimiento,
      final String? provinciaNacimiento,
      final String? paisNacimiento,
      final String? codigoLugarInscripcion,
      final String? lugarInscripcion,
      final String? anioInscripcion,
      final String? codigoParroquiaInscripcion,
      final String? codigoCantonInscripcion,
      final String? codigoProvinciaInscripcion,
      final String? codigoPaisInscripcion,
      final String? parroquiaInscripcion,
      final String? cantonInscripcion,
      final String? provinciaInscripcion,
      final String? paisInscripcion,
      final String? fechaInscripcionNacimiento,
      final String? anioInscripcionNacimiento}) = _$_NacimientoModel;

  factory _NacimientoModel.fromJson(Map<String, dynamic> json) =
      _$_NacimientoModel.fromJson;

  @override
  String? get codigoLugarNacimiento;
  @override
  String get lugarNacimiento;
  @override
  String? get tomo;
  @override
  String? get clase;
  @override
  String? get pagina;
  @override
  String? get acta;
  @override
  String? get codigoParroquiaNacimiento;
  @override
  String? get codigoCantonNacimiento;
  @override
  String? get codigoProvinciaNacimiento;
  @override
  String? get codigoPaisNacimiento;
  @override
  String? get parroquiaNacimiento;
  @override
  String? get cantonNacimiento;
  @override
  String? get provinciaNacimiento;
  @override
  String? get paisNacimiento;
  @override
  String? get codigoLugarInscripcion;
  @override
  String? get lugarInscripcion;
  @override
  String? get anioInscripcion;
  @override
  String? get codigoParroquiaInscripcion;
  @override
  String? get codigoCantonInscripcion;
  @override
  String? get codigoProvinciaInscripcion;
  @override
  String? get codigoPaisInscripcion;
  @override
  String? get parroquiaInscripcion;
  @override
  String? get cantonInscripcion;
  @override
  String? get provinciaInscripcion;
  @override
  String? get paisInscripcion;
  @override
  String? get fechaInscripcionNacimiento;
  @override
  String? get anioInscripcionNacimiento;
  @override
  @JsonKey(ignore: true)
  _$$_NacimientoModelCopyWith<_$_NacimientoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConyugeModel _$ConyugeModelFromJson(Map<String, dynamic> json) {
  return _ConyugeModel.fromJson(json);
}

/// @nodoc
mixin _$ConyugeModel {
  String get nuiConyuge => throw _privateConstructorUsedError;
  String get conyuge => throw _privateConstructorUsedError;
  String get fechaMatrimonio => throw _privateConstructorUsedError;
  String? get tomoMatrimonio => throw _privateConstructorUsedError;
  String? get claseMatrimonio => throw _privateConstructorUsedError;
  String? get paginaMatrimonio => throw _privateConstructorUsedError;
  String? get actaMatrimonio => throw _privateConstructorUsedError;
  String? get codigoLugarMatrimonio => throw _privateConstructorUsedError;
  String? get lugarMatrimonio => throw _privateConstructorUsedError;
  String? get codigoParroquiaMatrimonio => throw _privateConstructorUsedError;
  String? get codigoCantonMatrimonio => throw _privateConstructorUsedError;
  String? get codigoProvinciaMatrimonio => throw _privateConstructorUsedError;
  String? get codigoPaisMatrimonio => throw _privateConstructorUsedError;
  String? get parroquiaMatrimonio => throw _privateConstructorUsedError;
  String? get cantonMatrimonio => throw _privateConstructorUsedError;
  String? get provinciaMatrimonio => throw _privateConstructorUsedError;
  String? get paisMatrimonio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConyugeModelCopyWith<ConyugeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConyugeModelCopyWith<$Res> {
  factory $ConyugeModelCopyWith(
          ConyugeModel value, $Res Function(ConyugeModel) then) =
      _$ConyugeModelCopyWithImpl<$Res, ConyugeModel>;
  @useResult
  $Res call(
      {String nuiConyuge,
      String conyuge,
      String fechaMatrimonio,
      String? tomoMatrimonio,
      String? claseMatrimonio,
      String? paginaMatrimonio,
      String? actaMatrimonio,
      String? codigoLugarMatrimonio,
      String? lugarMatrimonio,
      String? codigoParroquiaMatrimonio,
      String? codigoCantonMatrimonio,
      String? codigoProvinciaMatrimonio,
      String? codigoPaisMatrimonio,
      String? parroquiaMatrimonio,
      String? cantonMatrimonio,
      String? provinciaMatrimonio,
      String? paisMatrimonio});
}

/// @nodoc
class _$ConyugeModelCopyWithImpl<$Res, $Val extends ConyugeModel>
    implements $ConyugeModelCopyWith<$Res> {
  _$ConyugeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nuiConyuge = null,
    Object? conyuge = null,
    Object? fechaMatrimonio = null,
    Object? tomoMatrimonio = freezed,
    Object? claseMatrimonio = freezed,
    Object? paginaMatrimonio = freezed,
    Object? actaMatrimonio = freezed,
    Object? codigoLugarMatrimonio = freezed,
    Object? lugarMatrimonio = freezed,
    Object? codigoParroquiaMatrimonio = freezed,
    Object? codigoCantonMatrimonio = freezed,
    Object? codigoProvinciaMatrimonio = freezed,
    Object? codigoPaisMatrimonio = freezed,
    Object? parroquiaMatrimonio = freezed,
    Object? cantonMatrimonio = freezed,
    Object? provinciaMatrimonio = freezed,
    Object? paisMatrimonio = freezed,
  }) {
    return _then(_value.copyWith(
      nuiConyuge: null == nuiConyuge
          ? _value.nuiConyuge
          : nuiConyuge // ignore: cast_nullable_to_non_nullable
              as String,
      conyuge: null == conyuge
          ? _value.conyuge
          : conyuge // ignore: cast_nullable_to_non_nullable
              as String,
      fechaMatrimonio: null == fechaMatrimonio
          ? _value.fechaMatrimonio
          : fechaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String,
      tomoMatrimonio: freezed == tomoMatrimonio
          ? _value.tomoMatrimonio
          : tomoMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      claseMatrimonio: freezed == claseMatrimonio
          ? _value.claseMatrimonio
          : claseMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      paginaMatrimonio: freezed == paginaMatrimonio
          ? _value.paginaMatrimonio
          : paginaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      actaMatrimonio: freezed == actaMatrimonio
          ? _value.actaMatrimonio
          : actaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarMatrimonio: freezed == codigoLugarMatrimonio
          ? _value.codigoLugarMatrimonio
          : codigoLugarMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarMatrimonio: freezed == lugarMatrimonio
          ? _value.lugarMatrimonio
          : lugarMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaMatrimonio: freezed == codigoParroquiaMatrimonio
          ? _value.codigoParroquiaMatrimonio
          : codigoParroquiaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonMatrimonio: freezed == codigoCantonMatrimonio
          ? _value.codigoCantonMatrimonio
          : codigoCantonMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaMatrimonio: freezed == codigoProvinciaMatrimonio
          ? _value.codigoProvinciaMatrimonio
          : codigoProvinciaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisMatrimonio: freezed == codigoPaisMatrimonio
          ? _value.codigoPaisMatrimonio
          : codigoPaisMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaMatrimonio: freezed == parroquiaMatrimonio
          ? _value.parroquiaMatrimonio
          : parroquiaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonMatrimonio: freezed == cantonMatrimonio
          ? _value.cantonMatrimonio
          : cantonMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaMatrimonio: freezed == provinciaMatrimonio
          ? _value.provinciaMatrimonio
          : provinciaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      paisMatrimonio: freezed == paisMatrimonio
          ? _value.paisMatrimonio
          : paisMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConyugeModelCopyWith<$Res>
    implements $ConyugeModelCopyWith<$Res> {
  factory _$$_ConyugeModelCopyWith(
          _$_ConyugeModel value, $Res Function(_$_ConyugeModel) then) =
      __$$_ConyugeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nuiConyuge,
      String conyuge,
      String fechaMatrimonio,
      String? tomoMatrimonio,
      String? claseMatrimonio,
      String? paginaMatrimonio,
      String? actaMatrimonio,
      String? codigoLugarMatrimonio,
      String? lugarMatrimonio,
      String? codigoParroquiaMatrimonio,
      String? codigoCantonMatrimonio,
      String? codigoProvinciaMatrimonio,
      String? codigoPaisMatrimonio,
      String? parroquiaMatrimonio,
      String? cantonMatrimonio,
      String? provinciaMatrimonio,
      String? paisMatrimonio});
}

/// @nodoc
class __$$_ConyugeModelCopyWithImpl<$Res>
    extends _$ConyugeModelCopyWithImpl<$Res, _$_ConyugeModel>
    implements _$$_ConyugeModelCopyWith<$Res> {
  __$$_ConyugeModelCopyWithImpl(
      _$_ConyugeModel _value, $Res Function(_$_ConyugeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nuiConyuge = null,
    Object? conyuge = null,
    Object? fechaMatrimonio = null,
    Object? tomoMatrimonio = freezed,
    Object? claseMatrimonio = freezed,
    Object? paginaMatrimonio = freezed,
    Object? actaMatrimonio = freezed,
    Object? codigoLugarMatrimonio = freezed,
    Object? lugarMatrimonio = freezed,
    Object? codigoParroquiaMatrimonio = freezed,
    Object? codigoCantonMatrimonio = freezed,
    Object? codigoProvinciaMatrimonio = freezed,
    Object? codigoPaisMatrimonio = freezed,
    Object? parroquiaMatrimonio = freezed,
    Object? cantonMatrimonio = freezed,
    Object? provinciaMatrimonio = freezed,
    Object? paisMatrimonio = freezed,
  }) {
    return _then(_$_ConyugeModel(
      nuiConyuge: null == nuiConyuge
          ? _value.nuiConyuge
          : nuiConyuge // ignore: cast_nullable_to_non_nullable
              as String,
      conyuge: null == conyuge
          ? _value.conyuge
          : conyuge // ignore: cast_nullable_to_non_nullable
              as String,
      fechaMatrimonio: null == fechaMatrimonio
          ? _value.fechaMatrimonio
          : fechaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String,
      tomoMatrimonio: freezed == tomoMatrimonio
          ? _value.tomoMatrimonio
          : tomoMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      claseMatrimonio: freezed == claseMatrimonio
          ? _value.claseMatrimonio
          : claseMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      paginaMatrimonio: freezed == paginaMatrimonio
          ? _value.paginaMatrimonio
          : paginaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      actaMatrimonio: freezed == actaMatrimonio
          ? _value.actaMatrimonio
          : actaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarMatrimonio: freezed == codigoLugarMatrimonio
          ? _value.codigoLugarMatrimonio
          : codigoLugarMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarMatrimonio: freezed == lugarMatrimonio
          ? _value.lugarMatrimonio
          : lugarMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaMatrimonio: freezed == codigoParroquiaMatrimonio
          ? _value.codigoParroquiaMatrimonio
          : codigoParroquiaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonMatrimonio: freezed == codigoCantonMatrimonio
          ? _value.codigoCantonMatrimonio
          : codigoCantonMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaMatrimonio: freezed == codigoProvinciaMatrimonio
          ? _value.codigoProvinciaMatrimonio
          : codigoProvinciaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisMatrimonio: freezed == codigoPaisMatrimonio
          ? _value.codigoPaisMatrimonio
          : codigoPaisMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaMatrimonio: freezed == parroquiaMatrimonio
          ? _value.parroquiaMatrimonio
          : parroquiaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonMatrimonio: freezed == cantonMatrimonio
          ? _value.cantonMatrimonio
          : cantonMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaMatrimonio: freezed == provinciaMatrimonio
          ? _value.provinciaMatrimonio
          : provinciaMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
      paisMatrimonio: freezed == paisMatrimonio
          ? _value.paisMatrimonio
          : paisMatrimonio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConyugeModel implements _ConyugeModel {
  const _$_ConyugeModel(
      {this.nuiConyuge = '',
      this.conyuge = '',
      this.fechaMatrimonio = '',
      this.tomoMatrimonio,
      this.claseMatrimonio,
      this.paginaMatrimonio,
      this.actaMatrimonio,
      this.codigoLugarMatrimonio,
      this.lugarMatrimonio,
      this.codigoParroquiaMatrimonio,
      this.codigoCantonMatrimonio,
      this.codigoProvinciaMatrimonio,
      this.codigoPaisMatrimonio,
      this.parroquiaMatrimonio,
      this.cantonMatrimonio,
      this.provinciaMatrimonio,
      this.paisMatrimonio});

  factory _$_ConyugeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConyugeModelFromJson(json);

  @override
  @JsonKey()
  final String nuiConyuge;
  @override
  @JsonKey()
  final String conyuge;
  @override
  @JsonKey()
  final String fechaMatrimonio;
  @override
  final String? tomoMatrimonio;
  @override
  final String? claseMatrimonio;
  @override
  final String? paginaMatrimonio;
  @override
  final String? actaMatrimonio;
  @override
  final String? codigoLugarMatrimonio;
  @override
  final String? lugarMatrimonio;
  @override
  final String? codigoParroquiaMatrimonio;
  @override
  final String? codigoCantonMatrimonio;
  @override
  final String? codigoProvinciaMatrimonio;
  @override
  final String? codigoPaisMatrimonio;
  @override
  final String? parroquiaMatrimonio;
  @override
  final String? cantonMatrimonio;
  @override
  final String? provinciaMatrimonio;
  @override
  final String? paisMatrimonio;

  @override
  String toString() {
    return 'ConyugeModel(nuiConyuge: $nuiConyuge, conyuge: $conyuge, fechaMatrimonio: $fechaMatrimonio, tomoMatrimonio: $tomoMatrimonio, claseMatrimonio: $claseMatrimonio, paginaMatrimonio: $paginaMatrimonio, actaMatrimonio: $actaMatrimonio, codigoLugarMatrimonio: $codigoLugarMatrimonio, lugarMatrimonio: $lugarMatrimonio, codigoParroquiaMatrimonio: $codigoParroquiaMatrimonio, codigoCantonMatrimonio: $codigoCantonMatrimonio, codigoProvinciaMatrimonio: $codigoProvinciaMatrimonio, codigoPaisMatrimonio: $codigoPaisMatrimonio, parroquiaMatrimonio: $parroquiaMatrimonio, cantonMatrimonio: $cantonMatrimonio, provinciaMatrimonio: $provinciaMatrimonio, paisMatrimonio: $paisMatrimonio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConyugeModel &&
            (identical(other.nuiConyuge, nuiConyuge) ||
                other.nuiConyuge == nuiConyuge) &&
            (identical(other.conyuge, conyuge) || other.conyuge == conyuge) &&
            (identical(other.fechaMatrimonio, fechaMatrimonio) ||
                other.fechaMatrimonio == fechaMatrimonio) &&
            (identical(other.tomoMatrimonio, tomoMatrimonio) ||
                other.tomoMatrimonio == tomoMatrimonio) &&
            (identical(other.claseMatrimonio, claseMatrimonio) ||
                other.claseMatrimonio == claseMatrimonio) &&
            (identical(other.paginaMatrimonio, paginaMatrimonio) ||
                other.paginaMatrimonio == paginaMatrimonio) &&
            (identical(other.actaMatrimonio, actaMatrimonio) ||
                other.actaMatrimonio == actaMatrimonio) &&
            (identical(other.codigoLugarMatrimonio, codigoLugarMatrimonio) ||
                other.codigoLugarMatrimonio == codigoLugarMatrimonio) &&
            (identical(other.lugarMatrimonio, lugarMatrimonio) ||
                other.lugarMatrimonio == lugarMatrimonio) &&
            (identical(other.codigoParroquiaMatrimonio,
                    codigoParroquiaMatrimonio) ||
                other.codigoParroquiaMatrimonio == codigoParroquiaMatrimonio) &&
            (identical(other.codigoCantonMatrimonio, codigoCantonMatrimonio) ||
                other.codigoCantonMatrimonio == codigoCantonMatrimonio) &&
            (identical(other.codigoProvinciaMatrimonio,
                    codigoProvinciaMatrimonio) ||
                other.codigoProvinciaMatrimonio == codigoProvinciaMatrimonio) &&
            (identical(other.codigoPaisMatrimonio, codigoPaisMatrimonio) ||
                other.codigoPaisMatrimonio == codigoPaisMatrimonio) &&
            (identical(other.parroquiaMatrimonio, parroquiaMatrimonio) ||
                other.parroquiaMatrimonio == parroquiaMatrimonio) &&
            (identical(other.cantonMatrimonio, cantonMatrimonio) ||
                other.cantonMatrimonio == cantonMatrimonio) &&
            (identical(other.provinciaMatrimonio, provinciaMatrimonio) ||
                other.provinciaMatrimonio == provinciaMatrimonio) &&
            (identical(other.paisMatrimonio, paisMatrimonio) ||
                other.paisMatrimonio == paisMatrimonio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nuiConyuge,
      conyuge,
      fechaMatrimonio,
      tomoMatrimonio,
      claseMatrimonio,
      paginaMatrimonio,
      actaMatrimonio,
      codigoLugarMatrimonio,
      lugarMatrimonio,
      codigoParroquiaMatrimonio,
      codigoCantonMatrimonio,
      codigoProvinciaMatrimonio,
      codigoPaisMatrimonio,
      parroquiaMatrimonio,
      cantonMatrimonio,
      provinciaMatrimonio,
      paisMatrimonio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConyugeModelCopyWith<_$_ConyugeModel> get copyWith =>
      __$$_ConyugeModelCopyWithImpl<_$_ConyugeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConyugeModelToJson(
      this,
    );
  }
}

abstract class _ConyugeModel implements ConyugeModel {
  const factory _ConyugeModel(
      {final String nuiConyuge,
      final String conyuge,
      final String fechaMatrimonio,
      final String? tomoMatrimonio,
      final String? claseMatrimonio,
      final String? paginaMatrimonio,
      final String? actaMatrimonio,
      final String? codigoLugarMatrimonio,
      final String? lugarMatrimonio,
      final String? codigoParroquiaMatrimonio,
      final String? codigoCantonMatrimonio,
      final String? codigoProvinciaMatrimonio,
      final String? codigoPaisMatrimonio,
      final String? parroquiaMatrimonio,
      final String? cantonMatrimonio,
      final String? provinciaMatrimonio,
      final String? paisMatrimonio}) = _$_ConyugeModel;

  factory _ConyugeModel.fromJson(Map<String, dynamic> json) =
      _$_ConyugeModel.fromJson;

  @override
  String get nuiConyuge;
  @override
  String get conyuge;
  @override
  String get fechaMatrimonio;
  @override
  String? get tomoMatrimonio;
  @override
  String? get claseMatrimonio;
  @override
  String? get paginaMatrimonio;
  @override
  String? get actaMatrimonio;
  @override
  String? get codigoLugarMatrimonio;
  @override
  String? get lugarMatrimonio;
  @override
  String? get codigoParroquiaMatrimonio;
  @override
  String? get codigoCantonMatrimonio;
  @override
  String? get codigoProvinciaMatrimonio;
  @override
  String? get codigoPaisMatrimonio;
  @override
  String? get parroquiaMatrimonio;
  @override
  String? get cantonMatrimonio;
  @override
  String? get provinciaMatrimonio;
  @override
  String? get paisMatrimonio;
  @override
  @JsonKey(ignore: true)
  _$$_ConyugeModelCopyWith<_$_ConyugeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneroModel _$GeneroModelFromJson(Map<String, dynamic> json) {
  return _GeneroModel.fromJson(json);
}

/// @nodoc
mixin _$GeneroModel {
  String? get codigoGenero => throw _privateConstructorUsedError;
  String? get genero => throw _privateConstructorUsedError;
  String? get fechaInscripcionGenero => throw _privateConstructorUsedError;
  String? get codigoLugarInscripcionGenero =>
      throw _privateConstructorUsedError;
  String? get lugarInscripcionGenero => throw _privateConstructorUsedError;
  String? get codigoParroquiaInscripcionGenero =>
      throw _privateConstructorUsedError;
  String? get codigoCantonInscripcionGenero =>
      throw _privateConstructorUsedError;
  String? get codigoProvinciaInscripcionGenero =>
      throw _privateConstructorUsedError;
  String? get codigoPaisInscripcionGenero => throw _privateConstructorUsedError;
  String? get parroquiaInscripcionGenero => throw _privateConstructorUsedError;
  String? get cantonInscripcionGenero => throw _privateConstructorUsedError;
  String? get provinciaInscripcionGenero => throw _privateConstructorUsedError;
  String? get paisInscripcionGenero => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneroModelCopyWith<GeneroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneroModelCopyWith<$Res> {
  factory $GeneroModelCopyWith(
          GeneroModel value, $Res Function(GeneroModel) then) =
      _$GeneroModelCopyWithImpl<$Res, GeneroModel>;
  @useResult
  $Res call(
      {String? codigoGenero,
      String? genero,
      String? fechaInscripcionGenero,
      String? codigoLugarInscripcionGenero,
      String? lugarInscripcionGenero,
      String? codigoParroquiaInscripcionGenero,
      String? codigoCantonInscripcionGenero,
      String? codigoProvinciaInscripcionGenero,
      String? codigoPaisInscripcionGenero,
      String? parroquiaInscripcionGenero,
      String? cantonInscripcionGenero,
      String? provinciaInscripcionGenero,
      String? paisInscripcionGenero});
}

/// @nodoc
class _$GeneroModelCopyWithImpl<$Res, $Val extends GeneroModel>
    implements $GeneroModelCopyWith<$Res> {
  _$GeneroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoGenero = freezed,
    Object? genero = freezed,
    Object? fechaInscripcionGenero = freezed,
    Object? codigoLugarInscripcionGenero = freezed,
    Object? lugarInscripcionGenero = freezed,
    Object? codigoParroquiaInscripcionGenero = freezed,
    Object? codigoCantonInscripcionGenero = freezed,
    Object? codigoProvinciaInscripcionGenero = freezed,
    Object? codigoPaisInscripcionGenero = freezed,
    Object? parroquiaInscripcionGenero = freezed,
    Object? cantonInscripcionGenero = freezed,
    Object? provinciaInscripcionGenero = freezed,
    Object? paisInscripcionGenero = freezed,
  }) {
    return _then(_value.copyWith(
      codigoGenero: freezed == codigoGenero
          ? _value.codigoGenero
          : codigoGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionGenero: freezed == fechaInscripcionGenero
          ? _value.fechaInscripcionGenero
          : fechaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarInscripcionGenero: freezed == codigoLugarInscripcionGenero
          ? _value.codigoLugarInscripcionGenero
          : codigoLugarInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarInscripcionGenero: freezed == lugarInscripcionGenero
          ? _value.lugarInscripcionGenero
          : lugarInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcionGenero: freezed ==
              codigoParroquiaInscripcionGenero
          ? _value.codigoParroquiaInscripcionGenero
          : codigoParroquiaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcionGenero: freezed == codigoCantonInscripcionGenero
          ? _value.codigoCantonInscripcionGenero
          : codigoCantonInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcionGenero: freezed ==
              codigoProvinciaInscripcionGenero
          ? _value.codigoProvinciaInscripcionGenero
          : codigoProvinciaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcionGenero: freezed == codigoPaisInscripcionGenero
          ? _value.codigoPaisInscripcionGenero
          : codigoPaisInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcionGenero: freezed == parroquiaInscripcionGenero
          ? _value.parroquiaInscripcionGenero
          : parroquiaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcionGenero: freezed == cantonInscripcionGenero
          ? _value.cantonInscripcionGenero
          : cantonInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcionGenero: freezed == provinciaInscripcionGenero
          ? _value.provinciaInscripcionGenero
          : provinciaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcionGenero: freezed == paisInscripcionGenero
          ? _value.paisInscripcionGenero
          : paisInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeneroModelCopyWith<$Res>
    implements $GeneroModelCopyWith<$Res> {
  factory _$$_GeneroModelCopyWith(
          _$_GeneroModel value, $Res Function(_$_GeneroModel) then) =
      __$$_GeneroModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codigoGenero,
      String? genero,
      String? fechaInscripcionGenero,
      String? codigoLugarInscripcionGenero,
      String? lugarInscripcionGenero,
      String? codigoParroquiaInscripcionGenero,
      String? codigoCantonInscripcionGenero,
      String? codigoProvinciaInscripcionGenero,
      String? codigoPaisInscripcionGenero,
      String? parroquiaInscripcionGenero,
      String? cantonInscripcionGenero,
      String? provinciaInscripcionGenero,
      String? paisInscripcionGenero});
}

/// @nodoc
class __$$_GeneroModelCopyWithImpl<$Res>
    extends _$GeneroModelCopyWithImpl<$Res, _$_GeneroModel>
    implements _$$_GeneroModelCopyWith<$Res> {
  __$$_GeneroModelCopyWithImpl(
      _$_GeneroModel _value, $Res Function(_$_GeneroModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoGenero = freezed,
    Object? genero = freezed,
    Object? fechaInscripcionGenero = freezed,
    Object? codigoLugarInscripcionGenero = freezed,
    Object? lugarInscripcionGenero = freezed,
    Object? codigoParroquiaInscripcionGenero = freezed,
    Object? codigoCantonInscripcionGenero = freezed,
    Object? codigoProvinciaInscripcionGenero = freezed,
    Object? codigoPaisInscripcionGenero = freezed,
    Object? parroquiaInscripcionGenero = freezed,
    Object? cantonInscripcionGenero = freezed,
    Object? provinciaInscripcionGenero = freezed,
    Object? paisInscripcionGenero = freezed,
  }) {
    return _then(_$_GeneroModel(
      codigoGenero: freezed == codigoGenero
          ? _value.codigoGenero
          : codigoGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      genero: freezed == genero
          ? _value.genero
          : genero // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionGenero: freezed == fechaInscripcionGenero
          ? _value.fechaInscripcionGenero
          : fechaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarInscripcionGenero: freezed == codigoLugarInscripcionGenero
          ? _value.codigoLugarInscripcionGenero
          : codigoLugarInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarInscripcionGenero: freezed == lugarInscripcionGenero
          ? _value.lugarInscripcionGenero
          : lugarInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcionGenero: freezed ==
              codigoParroquiaInscripcionGenero
          ? _value.codigoParroquiaInscripcionGenero
          : codigoParroquiaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcionGenero: freezed == codigoCantonInscripcionGenero
          ? _value.codigoCantonInscripcionGenero
          : codigoCantonInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcionGenero: freezed ==
              codigoProvinciaInscripcionGenero
          ? _value.codigoProvinciaInscripcionGenero
          : codigoProvinciaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcionGenero: freezed == codigoPaisInscripcionGenero
          ? _value.codigoPaisInscripcionGenero
          : codigoPaisInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcionGenero: freezed == parroquiaInscripcionGenero
          ? _value.parroquiaInscripcionGenero
          : parroquiaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcionGenero: freezed == cantonInscripcionGenero
          ? _value.cantonInscripcionGenero
          : cantonInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcionGenero: freezed == provinciaInscripcionGenero
          ? _value.provinciaInscripcionGenero
          : provinciaInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcionGenero: freezed == paisInscripcionGenero
          ? _value.paisInscripcionGenero
          : paisInscripcionGenero // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneroModel implements _GeneroModel {
  const _$_GeneroModel(
      {this.codigoGenero,
      this.genero,
      this.fechaInscripcionGenero,
      this.codigoLugarInscripcionGenero,
      this.lugarInscripcionGenero,
      this.codigoParroquiaInscripcionGenero,
      this.codigoCantonInscripcionGenero,
      this.codigoProvinciaInscripcionGenero,
      this.codigoPaisInscripcionGenero,
      this.parroquiaInscripcionGenero,
      this.cantonInscripcionGenero,
      this.provinciaInscripcionGenero,
      this.paisInscripcionGenero});

  factory _$_GeneroModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeneroModelFromJson(json);

  @override
  final String? codigoGenero;
  @override
  final String? genero;
  @override
  final String? fechaInscripcionGenero;
  @override
  final String? codigoLugarInscripcionGenero;
  @override
  final String? lugarInscripcionGenero;
  @override
  final String? codigoParroquiaInscripcionGenero;
  @override
  final String? codigoCantonInscripcionGenero;
  @override
  final String? codigoProvinciaInscripcionGenero;
  @override
  final String? codigoPaisInscripcionGenero;
  @override
  final String? parroquiaInscripcionGenero;
  @override
  final String? cantonInscripcionGenero;
  @override
  final String? provinciaInscripcionGenero;
  @override
  final String? paisInscripcionGenero;

  @override
  String toString() {
    return 'GeneroModel(codigoGenero: $codigoGenero, genero: $genero, fechaInscripcionGenero: $fechaInscripcionGenero, codigoLugarInscripcionGenero: $codigoLugarInscripcionGenero, lugarInscripcionGenero: $lugarInscripcionGenero, codigoParroquiaInscripcionGenero: $codigoParroquiaInscripcionGenero, codigoCantonInscripcionGenero: $codigoCantonInscripcionGenero, codigoProvinciaInscripcionGenero: $codigoProvinciaInscripcionGenero, codigoPaisInscripcionGenero: $codigoPaisInscripcionGenero, parroquiaInscripcionGenero: $parroquiaInscripcionGenero, cantonInscripcionGenero: $cantonInscripcionGenero, provinciaInscripcionGenero: $provinciaInscripcionGenero, paisInscripcionGenero: $paisInscripcionGenero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneroModel &&
            (identical(other.codigoGenero, codigoGenero) ||
                other.codigoGenero == codigoGenero) &&
            (identical(other.genero, genero) || other.genero == genero) &&
            (identical(other.fechaInscripcionGenero, fechaInscripcionGenero) ||
                other.fechaInscripcionGenero == fechaInscripcionGenero) &&
            (identical(other.codigoLugarInscripcionGenero, codigoLugarInscripcionGenero) ||
                other.codigoLugarInscripcionGenero ==
                    codigoLugarInscripcionGenero) &&
            (identical(other.lugarInscripcionGenero, lugarInscripcionGenero) ||
                other.lugarInscripcionGenero == lugarInscripcionGenero) &&
            (identical(other.codigoParroquiaInscripcionGenero,
                    codigoParroquiaInscripcionGenero) ||
                other.codigoParroquiaInscripcionGenero ==
                    codigoParroquiaInscripcionGenero) &&
            (identical(other.codigoCantonInscripcionGenero, codigoCantonInscripcionGenero) ||
                other.codigoCantonInscripcionGenero ==
                    codigoCantonInscripcionGenero) &&
            (identical(other.codigoProvinciaInscripcionGenero,
                    codigoProvinciaInscripcionGenero) ||
                other.codigoProvinciaInscripcionGenero ==
                    codigoProvinciaInscripcionGenero) &&
            (identical(other.codigoPaisInscripcionGenero, codigoPaisInscripcionGenero) ||
                other.codigoPaisInscripcionGenero ==
                    codigoPaisInscripcionGenero) &&
            (identical(other.parroquiaInscripcionGenero, parroquiaInscripcionGenero) ||
                other.parroquiaInscripcionGenero ==
                    parroquiaInscripcionGenero) &&
            (identical(other.cantonInscripcionGenero, cantonInscripcionGenero) ||
                other.cantonInscripcionGenero == cantonInscripcionGenero) &&
            (identical(other.provinciaInscripcionGenero, provinciaInscripcionGenero) ||
                other.provinciaInscripcionGenero ==
                    provinciaInscripcionGenero) &&
            (identical(other.paisInscripcionGenero, paisInscripcionGenero) ||
                other.paisInscripcionGenero == paisInscripcionGenero));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codigoGenero,
      genero,
      fechaInscripcionGenero,
      codigoLugarInscripcionGenero,
      lugarInscripcionGenero,
      codigoParroquiaInscripcionGenero,
      codigoCantonInscripcionGenero,
      codigoProvinciaInscripcionGenero,
      codigoPaisInscripcionGenero,
      parroquiaInscripcionGenero,
      cantonInscripcionGenero,
      provinciaInscripcionGenero,
      paisInscripcionGenero);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeneroModelCopyWith<_$_GeneroModel> get copyWith =>
      __$$_GeneroModelCopyWithImpl<_$_GeneroModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneroModelToJson(
      this,
    );
  }
}

abstract class _GeneroModel implements GeneroModel {
  const factory _GeneroModel(
      {final String? codigoGenero,
      final String? genero,
      final String? fechaInscripcionGenero,
      final String? codigoLugarInscripcionGenero,
      final String? lugarInscripcionGenero,
      final String? codigoParroquiaInscripcionGenero,
      final String? codigoCantonInscripcionGenero,
      final String? codigoProvinciaInscripcionGenero,
      final String? codigoPaisInscripcionGenero,
      final String? parroquiaInscripcionGenero,
      final String? cantonInscripcionGenero,
      final String? provinciaInscripcionGenero,
      final String? paisInscripcionGenero}) = _$_GeneroModel;

  factory _GeneroModel.fromJson(Map<String, dynamic> json) =
      _$_GeneroModel.fromJson;

  @override
  String? get codigoGenero;
  @override
  String? get genero;
  @override
  String? get fechaInscripcionGenero;
  @override
  String? get codigoLugarInscripcionGenero;
  @override
  String? get lugarInscripcionGenero;
  @override
  String? get codigoParroquiaInscripcionGenero;
  @override
  String? get codigoCantonInscripcionGenero;
  @override
  String? get codigoProvinciaInscripcionGenero;
  @override
  String? get codigoPaisInscripcionGenero;
  @override
  String? get parroquiaInscripcionGenero;
  @override
  String? get cantonInscripcionGenero;
  @override
  String? get provinciaInscripcionGenero;
  @override
  String? get paisInscripcionGenero;
  @override
  @JsonKey(ignore: true)
  _$$_GeneroModelCopyWith<_$_GeneroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DefuncionModel _$DefuncionModelFromJson(Map<String, dynamic> json) {
  return _DefuncionModel.fromJson(json);
}

/// @nodoc
mixin _$DefuncionModel {
  String? get codigoLugarDefuncion => throw _privateConstructorUsedError;
  String? get lugarDefuncion => throw _privateConstructorUsedError;
  String? get fechaInscripcionDefuncion => throw _privateConstructorUsedError;
  String? get tomoDefuncion => throw _privateConstructorUsedError;
  String? get claseDefuncion => throw _privateConstructorUsedError;
  String? get paginaDefuncion => throw _privateConstructorUsedError;
  String? get actaDefuncion => throw _privateConstructorUsedError;
  String? get codigoParroquiaInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get codigoCantonInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get codigoProvinciaInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get codigoPaisInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get parroquiaInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get cantonInscripcionDefuncion => throw _privateConstructorUsedError;
  String? get provinciaInscripcionDefuncion =>
      throw _privateConstructorUsedError;
  String? get paisInscripcionDefuncion => throw _privateConstructorUsedError;
  String? get codigoLugarFallecimiento => throw _privateConstructorUsedError;
  String? get lugarFallecimiento => throw _privateConstructorUsedError;
  String? get fechaFallecimiento => throw _privateConstructorUsedError;
  String? get codigoParroquiaFallecimiento =>
      throw _privateConstructorUsedError;
  String? get codigoCantonFallecimiento => throw _privateConstructorUsedError;
  String? get codigoProvinciaFallecimiento =>
      throw _privateConstructorUsedError;
  String? get codigoPaisFallecimiento => throw _privateConstructorUsedError;
  String? get parroquiaFallecimiento => throw _privateConstructorUsedError;
  String? get cantonFallecimiento => throw _privateConstructorUsedError;
  String? get provinciaFallecimiento => throw _privateConstructorUsedError;
  String? get paisFallecimiento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefuncionModelCopyWith<DefuncionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefuncionModelCopyWith<$Res> {
  factory $DefuncionModelCopyWith(
          DefuncionModel value, $Res Function(DefuncionModel) then) =
      _$DefuncionModelCopyWithImpl<$Res, DefuncionModel>;
  @useResult
  $Res call(
      {String? codigoLugarDefuncion,
      String? lugarDefuncion,
      String? fechaInscripcionDefuncion,
      String? tomoDefuncion,
      String? claseDefuncion,
      String? paginaDefuncion,
      String? actaDefuncion,
      String? codigoParroquiaInscripcionDefuncion,
      String? codigoCantonInscripcionDefuncion,
      String? codigoProvinciaInscripcionDefuncion,
      String? codigoPaisInscripcionDefuncion,
      String? parroquiaInscripcionDefuncion,
      String? cantonInscripcionDefuncion,
      String? provinciaInscripcionDefuncion,
      String? paisInscripcionDefuncion,
      String? codigoLugarFallecimiento,
      String? lugarFallecimiento,
      String? fechaFallecimiento,
      String? codigoParroquiaFallecimiento,
      String? codigoCantonFallecimiento,
      String? codigoProvinciaFallecimiento,
      String? codigoPaisFallecimiento,
      String? parroquiaFallecimiento,
      String? cantonFallecimiento,
      String? provinciaFallecimiento,
      String? paisFallecimiento});
}

/// @nodoc
class _$DefuncionModelCopyWithImpl<$Res, $Val extends DefuncionModel>
    implements $DefuncionModelCopyWith<$Res> {
  _$DefuncionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoLugarDefuncion = freezed,
    Object? lugarDefuncion = freezed,
    Object? fechaInscripcionDefuncion = freezed,
    Object? tomoDefuncion = freezed,
    Object? claseDefuncion = freezed,
    Object? paginaDefuncion = freezed,
    Object? actaDefuncion = freezed,
    Object? codigoParroquiaInscripcionDefuncion = freezed,
    Object? codigoCantonInscripcionDefuncion = freezed,
    Object? codigoProvinciaInscripcionDefuncion = freezed,
    Object? codigoPaisInscripcionDefuncion = freezed,
    Object? parroquiaInscripcionDefuncion = freezed,
    Object? cantonInscripcionDefuncion = freezed,
    Object? provinciaInscripcionDefuncion = freezed,
    Object? paisInscripcionDefuncion = freezed,
    Object? codigoLugarFallecimiento = freezed,
    Object? lugarFallecimiento = freezed,
    Object? fechaFallecimiento = freezed,
    Object? codigoParroquiaFallecimiento = freezed,
    Object? codigoCantonFallecimiento = freezed,
    Object? codigoProvinciaFallecimiento = freezed,
    Object? codigoPaisFallecimiento = freezed,
    Object? parroquiaFallecimiento = freezed,
    Object? cantonFallecimiento = freezed,
    Object? provinciaFallecimiento = freezed,
    Object? paisFallecimiento = freezed,
  }) {
    return _then(_value.copyWith(
      codigoLugarDefuncion: freezed == codigoLugarDefuncion
          ? _value.codigoLugarDefuncion
          : codigoLugarDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarDefuncion: freezed == lugarDefuncion
          ? _value.lugarDefuncion
          : lugarDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionDefuncion: freezed == fechaInscripcionDefuncion
          ? _value.fechaInscripcionDefuncion
          : fechaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      tomoDefuncion: freezed == tomoDefuncion
          ? _value.tomoDefuncion
          : tomoDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      claseDefuncion: freezed == claseDefuncion
          ? _value.claseDefuncion
          : claseDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      paginaDefuncion: freezed == paginaDefuncion
          ? _value.paginaDefuncion
          : paginaDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      actaDefuncion: freezed == actaDefuncion
          ? _value.actaDefuncion
          : actaDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcionDefuncion: freezed ==
              codigoParroquiaInscripcionDefuncion
          ? _value.codigoParroquiaInscripcionDefuncion
          : codigoParroquiaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcionDefuncion: freezed ==
              codigoCantonInscripcionDefuncion
          ? _value.codigoCantonInscripcionDefuncion
          : codigoCantonInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcionDefuncion: freezed ==
              codigoProvinciaInscripcionDefuncion
          ? _value.codigoProvinciaInscripcionDefuncion
          : codigoProvinciaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcionDefuncion: freezed == codigoPaisInscripcionDefuncion
          ? _value.codigoPaisInscripcionDefuncion
          : codigoPaisInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcionDefuncion: freezed == parroquiaInscripcionDefuncion
          ? _value.parroquiaInscripcionDefuncion
          : parroquiaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcionDefuncion: freezed == cantonInscripcionDefuncion
          ? _value.cantonInscripcionDefuncion
          : cantonInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcionDefuncion: freezed == provinciaInscripcionDefuncion
          ? _value.provinciaInscripcionDefuncion
          : provinciaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcionDefuncion: freezed == paisInscripcionDefuncion
          ? _value.paisInscripcionDefuncion
          : paisInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarFallecimiento: freezed == codigoLugarFallecimiento
          ? _value.codigoLugarFallecimiento
          : codigoLugarFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarFallecimiento: freezed == lugarFallecimiento
          ? _value.lugarFallecimiento
          : lugarFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFallecimiento: freezed == fechaFallecimiento
          ? _value.fechaFallecimiento
          : fechaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaFallecimiento: freezed == codigoParroquiaFallecimiento
          ? _value.codigoParroquiaFallecimiento
          : codigoParroquiaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonFallecimiento: freezed == codigoCantonFallecimiento
          ? _value.codigoCantonFallecimiento
          : codigoCantonFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaFallecimiento: freezed == codigoProvinciaFallecimiento
          ? _value.codigoProvinciaFallecimiento
          : codigoProvinciaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisFallecimiento: freezed == codigoPaisFallecimiento
          ? _value.codigoPaisFallecimiento
          : codigoPaisFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaFallecimiento: freezed == parroquiaFallecimiento
          ? _value.parroquiaFallecimiento
          : parroquiaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonFallecimiento: freezed == cantonFallecimiento
          ? _value.cantonFallecimiento
          : cantonFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFallecimiento: freezed == provinciaFallecimiento
          ? _value.provinciaFallecimiento
          : provinciaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFallecimiento: freezed == paisFallecimiento
          ? _value.paisFallecimiento
          : paisFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefuncionModelCopyWith<$Res>
    implements $DefuncionModelCopyWith<$Res> {
  factory _$$_DefuncionModelCopyWith(
          _$_DefuncionModel value, $Res Function(_$_DefuncionModel) then) =
      __$$_DefuncionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codigoLugarDefuncion,
      String? lugarDefuncion,
      String? fechaInscripcionDefuncion,
      String? tomoDefuncion,
      String? claseDefuncion,
      String? paginaDefuncion,
      String? actaDefuncion,
      String? codigoParroquiaInscripcionDefuncion,
      String? codigoCantonInscripcionDefuncion,
      String? codigoProvinciaInscripcionDefuncion,
      String? codigoPaisInscripcionDefuncion,
      String? parroquiaInscripcionDefuncion,
      String? cantonInscripcionDefuncion,
      String? provinciaInscripcionDefuncion,
      String? paisInscripcionDefuncion,
      String? codigoLugarFallecimiento,
      String? lugarFallecimiento,
      String? fechaFallecimiento,
      String? codigoParroquiaFallecimiento,
      String? codigoCantonFallecimiento,
      String? codigoProvinciaFallecimiento,
      String? codigoPaisFallecimiento,
      String? parroquiaFallecimiento,
      String? cantonFallecimiento,
      String? provinciaFallecimiento,
      String? paisFallecimiento});
}

/// @nodoc
class __$$_DefuncionModelCopyWithImpl<$Res>
    extends _$DefuncionModelCopyWithImpl<$Res, _$_DefuncionModel>
    implements _$$_DefuncionModelCopyWith<$Res> {
  __$$_DefuncionModelCopyWithImpl(
      _$_DefuncionModel _value, $Res Function(_$_DefuncionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codigoLugarDefuncion = freezed,
    Object? lugarDefuncion = freezed,
    Object? fechaInscripcionDefuncion = freezed,
    Object? tomoDefuncion = freezed,
    Object? claseDefuncion = freezed,
    Object? paginaDefuncion = freezed,
    Object? actaDefuncion = freezed,
    Object? codigoParroquiaInscripcionDefuncion = freezed,
    Object? codigoCantonInscripcionDefuncion = freezed,
    Object? codigoProvinciaInscripcionDefuncion = freezed,
    Object? codigoPaisInscripcionDefuncion = freezed,
    Object? parroquiaInscripcionDefuncion = freezed,
    Object? cantonInscripcionDefuncion = freezed,
    Object? provinciaInscripcionDefuncion = freezed,
    Object? paisInscripcionDefuncion = freezed,
    Object? codigoLugarFallecimiento = freezed,
    Object? lugarFallecimiento = freezed,
    Object? fechaFallecimiento = freezed,
    Object? codigoParroquiaFallecimiento = freezed,
    Object? codigoCantonFallecimiento = freezed,
    Object? codigoProvinciaFallecimiento = freezed,
    Object? codigoPaisFallecimiento = freezed,
    Object? parroquiaFallecimiento = freezed,
    Object? cantonFallecimiento = freezed,
    Object? provinciaFallecimiento = freezed,
    Object? paisFallecimiento = freezed,
  }) {
    return _then(_$_DefuncionModel(
      codigoLugarDefuncion: freezed == codigoLugarDefuncion
          ? _value.codigoLugarDefuncion
          : codigoLugarDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarDefuncion: freezed == lugarDefuncion
          ? _value.lugarDefuncion
          : lugarDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaInscripcionDefuncion: freezed == fechaInscripcionDefuncion
          ? _value.fechaInscripcionDefuncion
          : fechaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      tomoDefuncion: freezed == tomoDefuncion
          ? _value.tomoDefuncion
          : tomoDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      claseDefuncion: freezed == claseDefuncion
          ? _value.claseDefuncion
          : claseDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      paginaDefuncion: freezed == paginaDefuncion
          ? _value.paginaDefuncion
          : paginaDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      actaDefuncion: freezed == actaDefuncion
          ? _value.actaDefuncion
          : actaDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaInscripcionDefuncion: freezed ==
              codigoParroquiaInscripcionDefuncion
          ? _value.codigoParroquiaInscripcionDefuncion
          : codigoParroquiaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonInscripcionDefuncion: freezed ==
              codigoCantonInscripcionDefuncion
          ? _value.codigoCantonInscripcionDefuncion
          : codigoCantonInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaInscripcionDefuncion: freezed ==
              codigoProvinciaInscripcionDefuncion
          ? _value.codigoProvinciaInscripcionDefuncion
          : codigoProvinciaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisInscripcionDefuncion: freezed == codigoPaisInscripcionDefuncion
          ? _value.codigoPaisInscripcionDefuncion
          : codigoPaisInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaInscripcionDefuncion: freezed == parroquiaInscripcionDefuncion
          ? _value.parroquiaInscripcionDefuncion
          : parroquiaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonInscripcionDefuncion: freezed == cantonInscripcionDefuncion
          ? _value.cantonInscripcionDefuncion
          : cantonInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaInscripcionDefuncion: freezed == provinciaInscripcionDefuncion
          ? _value.provinciaInscripcionDefuncion
          : provinciaInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      paisInscripcionDefuncion: freezed == paisInscripcionDefuncion
          ? _value.paisInscripcionDefuncion
          : paisInscripcionDefuncion // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoLugarFallecimiento: freezed == codigoLugarFallecimiento
          ? _value.codigoLugarFallecimiento
          : codigoLugarFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      lugarFallecimiento: freezed == lugarFallecimiento
          ? _value.lugarFallecimiento
          : lugarFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFallecimiento: freezed == fechaFallecimiento
          ? _value.fechaFallecimiento
          : fechaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoParroquiaFallecimiento: freezed == codigoParroquiaFallecimiento
          ? _value.codigoParroquiaFallecimiento
          : codigoParroquiaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoCantonFallecimiento: freezed == codigoCantonFallecimiento
          ? _value.codigoCantonFallecimiento
          : codigoCantonFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoProvinciaFallecimiento: freezed == codigoProvinciaFallecimiento
          ? _value.codigoProvinciaFallecimiento
          : codigoProvinciaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPaisFallecimiento: freezed == codigoPaisFallecimiento
          ? _value.codigoPaisFallecimiento
          : codigoPaisFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      parroquiaFallecimiento: freezed == parroquiaFallecimiento
          ? _value.parroquiaFallecimiento
          : parroquiaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      cantonFallecimiento: freezed == cantonFallecimiento
          ? _value.cantonFallecimiento
          : cantonFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFallecimiento: freezed == provinciaFallecimiento
          ? _value.provinciaFallecimiento
          : provinciaFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFallecimiento: freezed == paisFallecimiento
          ? _value.paisFallecimiento
          : paisFallecimiento // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefuncionModel implements _DefuncionModel {
  const _$_DefuncionModel(
      {this.codigoLugarDefuncion,
      this.lugarDefuncion,
      this.fechaInscripcionDefuncion,
      this.tomoDefuncion,
      this.claseDefuncion,
      this.paginaDefuncion,
      this.actaDefuncion,
      this.codigoParroquiaInscripcionDefuncion,
      this.codigoCantonInscripcionDefuncion,
      this.codigoProvinciaInscripcionDefuncion,
      this.codigoPaisInscripcionDefuncion,
      this.parroquiaInscripcionDefuncion,
      this.cantonInscripcionDefuncion,
      this.provinciaInscripcionDefuncion,
      this.paisInscripcionDefuncion,
      this.codigoLugarFallecimiento,
      this.lugarFallecimiento,
      this.fechaFallecimiento,
      this.codigoParroquiaFallecimiento,
      this.codigoCantonFallecimiento,
      this.codigoProvinciaFallecimiento,
      this.codigoPaisFallecimiento,
      this.parroquiaFallecimiento,
      this.cantonFallecimiento,
      this.provinciaFallecimiento,
      this.paisFallecimiento});

  factory _$_DefuncionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DefuncionModelFromJson(json);

  @override
  final String? codigoLugarDefuncion;
  @override
  final String? lugarDefuncion;
  @override
  final String? fechaInscripcionDefuncion;
  @override
  final String? tomoDefuncion;
  @override
  final String? claseDefuncion;
  @override
  final String? paginaDefuncion;
  @override
  final String? actaDefuncion;
  @override
  final String? codigoParroquiaInscripcionDefuncion;
  @override
  final String? codigoCantonInscripcionDefuncion;
  @override
  final String? codigoProvinciaInscripcionDefuncion;
  @override
  final String? codigoPaisInscripcionDefuncion;
  @override
  final String? parroquiaInscripcionDefuncion;
  @override
  final String? cantonInscripcionDefuncion;
  @override
  final String? provinciaInscripcionDefuncion;
  @override
  final String? paisInscripcionDefuncion;
  @override
  final String? codigoLugarFallecimiento;
  @override
  final String? lugarFallecimiento;
  @override
  final String? fechaFallecimiento;
  @override
  final String? codigoParroquiaFallecimiento;
  @override
  final String? codigoCantonFallecimiento;
  @override
  final String? codigoProvinciaFallecimiento;
  @override
  final String? codigoPaisFallecimiento;
  @override
  final String? parroquiaFallecimiento;
  @override
  final String? cantonFallecimiento;
  @override
  final String? provinciaFallecimiento;
  @override
  final String? paisFallecimiento;

  @override
  String toString() {
    return 'DefuncionModel(codigoLugarDefuncion: $codigoLugarDefuncion, lugarDefuncion: $lugarDefuncion, fechaInscripcionDefuncion: $fechaInscripcionDefuncion, tomoDefuncion: $tomoDefuncion, claseDefuncion: $claseDefuncion, paginaDefuncion: $paginaDefuncion, actaDefuncion: $actaDefuncion, codigoParroquiaInscripcionDefuncion: $codigoParroquiaInscripcionDefuncion, codigoCantonInscripcionDefuncion: $codigoCantonInscripcionDefuncion, codigoProvinciaInscripcionDefuncion: $codigoProvinciaInscripcionDefuncion, codigoPaisInscripcionDefuncion: $codigoPaisInscripcionDefuncion, parroquiaInscripcionDefuncion: $parroquiaInscripcionDefuncion, cantonInscripcionDefuncion: $cantonInscripcionDefuncion, provinciaInscripcionDefuncion: $provinciaInscripcionDefuncion, paisInscripcionDefuncion: $paisInscripcionDefuncion, codigoLugarFallecimiento: $codigoLugarFallecimiento, lugarFallecimiento: $lugarFallecimiento, fechaFallecimiento: $fechaFallecimiento, codigoParroquiaFallecimiento: $codigoParroquiaFallecimiento, codigoCantonFallecimiento: $codigoCantonFallecimiento, codigoProvinciaFallecimiento: $codigoProvinciaFallecimiento, codigoPaisFallecimiento: $codigoPaisFallecimiento, parroquiaFallecimiento: $parroquiaFallecimiento, cantonFallecimiento: $cantonFallecimiento, provinciaFallecimiento: $provinciaFallecimiento, paisFallecimiento: $paisFallecimiento)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefuncionModel &&
            (identical(other.codigoLugarDefuncion, codigoLugarDefuncion) ||
                other.codigoLugarDefuncion == codigoLugarDefuncion) &&
            (identical(other.lugarDefuncion, lugarDefuncion) ||
                other.lugarDefuncion == lugarDefuncion) &&
            (identical(other.fechaInscripcionDefuncion, fechaInscripcionDefuncion) ||
                other.fechaInscripcionDefuncion == fechaInscripcionDefuncion) &&
            (identical(other.tomoDefuncion, tomoDefuncion) ||
                other.tomoDefuncion == tomoDefuncion) &&
            (identical(other.claseDefuncion, claseDefuncion) ||
                other.claseDefuncion == claseDefuncion) &&
            (identical(other.paginaDefuncion, paginaDefuncion) ||
                other.paginaDefuncion == paginaDefuncion) &&
            (identical(other.actaDefuncion, actaDefuncion) ||
                other.actaDefuncion == actaDefuncion) &&
            (identical(other.codigoParroquiaInscripcionDefuncion, codigoParroquiaInscripcionDefuncion) ||
                other.codigoParroquiaInscripcionDefuncion ==
                    codigoParroquiaInscripcionDefuncion) &&
            (identical(other.codigoCantonInscripcionDefuncion, codigoCantonInscripcionDefuncion) ||
                other.codigoCantonInscripcionDefuncion ==
                    codigoCantonInscripcionDefuncion) &&
            (identical(other.codigoProvinciaInscripcionDefuncion, codigoProvinciaInscripcionDefuncion) ||
                other.codigoProvinciaInscripcionDefuncion ==
                    codigoProvinciaInscripcionDefuncion) &&
            (identical(other.codigoPaisInscripcionDefuncion, codigoPaisInscripcionDefuncion) ||
                other.codigoPaisInscripcionDefuncion ==
                    codigoPaisInscripcionDefuncion) &&
            (identical(other.parroquiaInscripcionDefuncion, parroquiaInscripcionDefuncion) ||
                other.parroquiaInscripcionDefuncion ==
                    parroquiaInscripcionDefuncion) &&
            (identical(other.cantonInscripcionDefuncion, cantonInscripcionDefuncion) ||
                other.cantonInscripcionDefuncion ==
                    cantonInscripcionDefuncion) &&
            (identical(other.provinciaInscripcionDefuncion, provinciaInscripcionDefuncion) ||
                other.provinciaInscripcionDefuncion ==
                    provinciaInscripcionDefuncion) &&
            (identical(other.paisInscripcionDefuncion, paisInscripcionDefuncion) ||
                other.paisInscripcionDefuncion == paisInscripcionDefuncion) &&
            (identical(other.codigoLugarFallecimiento, codigoLugarFallecimiento) ||
                other.codigoLugarFallecimiento == codigoLugarFallecimiento) &&
            (identical(other.lugarFallecimiento, lugarFallecimiento) ||
                other.lugarFallecimiento == lugarFallecimiento) &&
            (identical(other.fechaFallecimiento, fechaFallecimiento) ||
                other.fechaFallecimiento == fechaFallecimiento) &&
            (identical(other.codigoParroquiaFallecimiento, codigoParroquiaFallecimiento) ||
                other.codigoParroquiaFallecimiento == codigoParroquiaFallecimiento) &&
            (identical(other.codigoCantonFallecimiento, codigoCantonFallecimiento) || other.codigoCantonFallecimiento == codigoCantonFallecimiento) &&
            (identical(other.codigoProvinciaFallecimiento, codigoProvinciaFallecimiento) || other.codigoProvinciaFallecimiento == codigoProvinciaFallecimiento) &&
            (identical(other.codigoPaisFallecimiento, codigoPaisFallecimiento) || other.codigoPaisFallecimiento == codigoPaisFallecimiento) &&
            (identical(other.parroquiaFallecimiento, parroquiaFallecimiento) || other.parroquiaFallecimiento == parroquiaFallecimiento) &&
            (identical(other.cantonFallecimiento, cantonFallecimiento) || other.cantonFallecimiento == cantonFallecimiento) &&
            (identical(other.provinciaFallecimiento, provinciaFallecimiento) || other.provinciaFallecimiento == provinciaFallecimiento) &&
            (identical(other.paisFallecimiento, paisFallecimiento) || other.paisFallecimiento == paisFallecimiento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        codigoLugarDefuncion,
        lugarDefuncion,
        fechaInscripcionDefuncion,
        tomoDefuncion,
        claseDefuncion,
        paginaDefuncion,
        actaDefuncion,
        codigoParroquiaInscripcionDefuncion,
        codigoCantonInscripcionDefuncion,
        codigoProvinciaInscripcionDefuncion,
        codigoPaisInscripcionDefuncion,
        parroquiaInscripcionDefuncion,
        cantonInscripcionDefuncion,
        provinciaInscripcionDefuncion,
        paisInscripcionDefuncion,
        codigoLugarFallecimiento,
        lugarFallecimiento,
        fechaFallecimiento,
        codigoParroquiaFallecimiento,
        codigoCantonFallecimiento,
        codigoProvinciaFallecimiento,
        codigoPaisFallecimiento,
        parroquiaFallecimiento,
        cantonFallecimiento,
        provinciaFallecimiento,
        paisFallecimiento
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefuncionModelCopyWith<_$_DefuncionModel> get copyWith =>
      __$$_DefuncionModelCopyWithImpl<_$_DefuncionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefuncionModelToJson(
      this,
    );
  }
}

abstract class _DefuncionModel implements DefuncionModel {
  const factory _DefuncionModel(
      {final String? codigoLugarDefuncion,
      final String? lugarDefuncion,
      final String? fechaInscripcionDefuncion,
      final String? tomoDefuncion,
      final String? claseDefuncion,
      final String? paginaDefuncion,
      final String? actaDefuncion,
      final String? codigoParroquiaInscripcionDefuncion,
      final String? codigoCantonInscripcionDefuncion,
      final String? codigoProvinciaInscripcionDefuncion,
      final String? codigoPaisInscripcionDefuncion,
      final String? parroquiaInscripcionDefuncion,
      final String? cantonInscripcionDefuncion,
      final String? provinciaInscripcionDefuncion,
      final String? paisInscripcionDefuncion,
      final String? codigoLugarFallecimiento,
      final String? lugarFallecimiento,
      final String? fechaFallecimiento,
      final String? codigoParroquiaFallecimiento,
      final String? codigoCantonFallecimiento,
      final String? codigoProvinciaFallecimiento,
      final String? codigoPaisFallecimiento,
      final String? parroquiaFallecimiento,
      final String? cantonFallecimiento,
      final String? provinciaFallecimiento,
      final String? paisFallecimiento}) = _$_DefuncionModel;

  factory _DefuncionModel.fromJson(Map<String, dynamic> json) =
      _$_DefuncionModel.fromJson;

  @override
  String? get codigoLugarDefuncion;
  @override
  String? get lugarDefuncion;
  @override
  String? get fechaInscripcionDefuncion;
  @override
  String? get tomoDefuncion;
  @override
  String? get claseDefuncion;
  @override
  String? get paginaDefuncion;
  @override
  String? get actaDefuncion;
  @override
  String? get codigoParroquiaInscripcionDefuncion;
  @override
  String? get codigoCantonInscripcionDefuncion;
  @override
  String? get codigoProvinciaInscripcionDefuncion;
  @override
  String? get codigoPaisInscripcionDefuncion;
  @override
  String? get parroquiaInscripcionDefuncion;
  @override
  String? get cantonInscripcionDefuncion;
  @override
  String? get provinciaInscripcionDefuncion;
  @override
  String? get paisInscripcionDefuncion;
  @override
  String? get codigoLugarFallecimiento;
  @override
  String? get lugarFallecimiento;
  @override
  String? get fechaFallecimiento;
  @override
  String? get codigoParroquiaFallecimiento;
  @override
  String? get codigoCantonFallecimiento;
  @override
  String? get codigoProvinciaFallecimiento;
  @override
  String? get codigoPaisFallecimiento;
  @override
  String? get parroquiaFallecimiento;
  @override
  String? get cantonFallecimiento;
  @override
  String? get provinciaFallecimiento;
  @override
  String? get paisFallecimiento;
  @override
  @JsonKey(ignore: true)
  _$$_DefuncionModelCopyWith<_$_DefuncionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterCitizenModel _$RegisterCitizenModelFromJson(Map<String, dynamic> json) {
  return _RegisterCitizenModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterCitizenModel {
  CitizenModel get citizen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterCitizenModelCopyWith<RegisterCitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCitizenModelCopyWith<$Res> {
  factory $RegisterCitizenModelCopyWith(RegisterCitizenModel value,
          $Res Function(RegisterCitizenModel) then) =
      _$RegisterCitizenModelCopyWithImpl<$Res, RegisterCitizenModel>;
  @useResult
  $Res call({CitizenModel citizen});

  $CitizenModelCopyWith<$Res> get citizen;
}

/// @nodoc
class _$RegisterCitizenModelCopyWithImpl<$Res,
        $Val extends RegisterCitizenModel>
    implements $RegisterCitizenModelCopyWith<$Res> {
  _$RegisterCitizenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizen = null,
  }) {
    return _then(_value.copyWith(
      citizen: null == citizen
          ? _value.citizen
          : citizen // ignore: cast_nullable_to_non_nullable
              as CitizenModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CitizenModelCopyWith<$Res> get citizen {
    return $CitizenModelCopyWith<$Res>(_value.citizen, (value) {
      return _then(_value.copyWith(citizen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterCitizenModelCopyWith<$Res>
    implements $RegisterCitizenModelCopyWith<$Res> {
  factory _$$_RegisterCitizenModelCopyWith(_$_RegisterCitizenModel value,
          $Res Function(_$_RegisterCitizenModel) then) =
      __$$_RegisterCitizenModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CitizenModel citizen});

  @override
  $CitizenModelCopyWith<$Res> get citizen;
}

/// @nodoc
class __$$_RegisterCitizenModelCopyWithImpl<$Res>
    extends _$RegisterCitizenModelCopyWithImpl<$Res, _$_RegisterCitizenModel>
    implements _$$_RegisterCitizenModelCopyWith<$Res> {
  __$$_RegisterCitizenModelCopyWithImpl(_$_RegisterCitizenModel _value,
      $Res Function(_$_RegisterCitizenModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizen = null,
  }) {
    return _then(_$_RegisterCitizenModel(
      citizen: null == citizen
          ? _value.citizen
          : citizen // ignore: cast_nullable_to_non_nullable
              as CitizenModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterCitizenModel extends _RegisterCitizenModel {
  const _$_RegisterCitizenModel({required this.citizen}) : super._();

  factory _$_RegisterCitizenModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterCitizenModelFromJson(json);

  @override
  final CitizenModel citizen;

  @override
  String toString() {
    return 'RegisterCitizenModel(citizen: $citizen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterCitizenModel &&
            (identical(other.citizen, citizen) || other.citizen == citizen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, citizen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCitizenModelCopyWith<_$_RegisterCitizenModel> get copyWith =>
      __$$_RegisterCitizenModelCopyWithImpl<_$_RegisterCitizenModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterCitizenModelToJson(
      this,
    );
  }
}

abstract class _RegisterCitizenModel extends RegisterCitizenModel {
  const factory _RegisterCitizenModel({required final CitizenModel citizen}) =
      _$_RegisterCitizenModel;
  const _RegisterCitizenModel._() : super._();

  factory _RegisterCitizenModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterCitizenModel.fromJson;

  @override
  CitizenModel get citizen;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCitizenModelCopyWith<_$_RegisterCitizenModel> get copyWith =>
      throw _privateConstructorUsedError;
}
