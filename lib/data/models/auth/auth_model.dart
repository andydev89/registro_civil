import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';

part 'auth_model.g.dart';
part 'auth_model.freezed.dart';

@JsonSerializable()
class LoginResponseModel {
  LoginResponseModel({
    required this.jwtToken,
    this.usefulLifeInMillis,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  final String jwtToken;
  final int? usefulLifeInMillis;

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class TelephoneOperatorModel implements Translatable {
  TelephoneOperatorModel({
    this.id = '',
    this.name = '',
  });

  factory TelephoneOperatorModel.fromJson(Map<String, dynamic> json) =>
      _$TelephoneOperatorModelFromJson(json);
  final String id;
  final String name;

  @override
  String toString() => id;

  Map<String, dynamic> toJson() => _$TelephoneOperatorModelToJson(this);

  @override
  String translate(BuildContext context) => name;
}

@JsonSerializable()
class AuthCodeModel {
  AuthCodeModel({
    required this.code,
    required this.command,
  });

  factory AuthCodeModel.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeModelFromJson(json);
  String code;
  String command;

  Map<String, dynamic> toJson() => _$AuthCodeModelToJson(this);
}

@freezed
class CitizenModel with _$CitizenModel {
  const factory CitizenModel({
    @Default('') String nui,
    @Default('') String nombre,
    @Default('') String apellidos,
    @Default('') String nombres,
    // String? codigoSexo,
    // @Default('') String sexo,
    // @Default('') String fechaNacimiento,
    // @Default('') String fechaCedulacion,
    // @Default('') String fechaActualizacion,
    // String? codigoInstruccion,
    // @Default('') String instruccion,
    // String? codigoProfesion,
    // @Default('') String profesion,
    // String? codigoNacionalidad,
    // @Default('') String nacionalidad,
    // @Default('') String codigoCondicionCedulado,
    // @Default('') String condicionCedulado,
    // @Default('') String codigoEstadoCivil,
    // @Default('') String estadoCivil,
    // String? codigoGrupoEtnico,
    // String? grupoEtnico,
    // @Default('') String codigoTipoCedula,
    // String? tipoCedula,
    // String? codigoCondicionDonante,
    // String? condicionDonante,
    // @Default('') String individualDactilar,
    // String? observacion,
    // String? firmaElectronica,
    // String? fotografia,
    // String? firma,
    // @Default('') String nuiPadre,
    // @Default('') String nombrePadre,
    // String? codigoNacionalidadPadre,
    // String? nacionalidadPadre,
    // @Default('') String nuiMadre,
    // @Default('') String nombreMadre,
    // String? codigoNacionalidadMadre,
    // String? nacionalidadMadre,
    // DomicilioModel? domicilio,
    // NacimientoModel? nacimiento,
    // ConyugeModel? conyuge,
    // GeneroModel? genero,
    // DefuncionModel? defuncion,
    // @Default('') String organos,
    // @Default('') String fechaOrganos,
  }) = _CitizenModel;

  const CitizenModel._();

  factory CitizenModel.fromJson(Map<String, dynamic> json) =>
      _$CitizenModelFromJson(json);

  CitizenModel copyWithFromModel(CitizenModel model) => copyWith(
        nui: model.nui,
        nombre: model.nombre,
        apellidos: model.apellidos,
        nombres: model.nombres,
      );
}

@freezed
class DomicilioModel with _$DomicilioModel {
  const factory DomicilioModel({
    String? codigoDomicilio,
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
    String? paisDomicilio,
  }) = _DomicilioModel;

  factory DomicilioModel.fromJson(Map<String, dynamic> json) =>
      _$DomicilioModelFromJson(json);
}

@freezed
class NacimientoModel with _$NacimientoModel {
  const factory NacimientoModel({
    String? codigoLugarNacimiento,
    @Default('') String lugarNacimiento,
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
    String? anioInscripcionNacimiento,
  }) = _NacimientoModel;

  factory NacimientoModel.fromJson(Map<String, dynamic> json) =>
      _$NacimientoModelFromJson(json);
}

@freezed
class ConyugeModel with _$ConyugeModel {
  const factory ConyugeModel({
    @Default('') String nuiConyuge,
    @Default('') String conyuge,
    @Default('') String fechaMatrimonio,
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
    String? paisMatrimonio,
  }) = _ConyugeModel;

  factory ConyugeModel.fromJson(Map<String, dynamic> json) =>
      _$ConyugeModelFromJson(json);
}

@freezed
class GeneroModel with _$GeneroModel {
  const factory GeneroModel({
    String? codigoGenero,
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
    String? paisInscripcionGenero,
  }) = _GeneroModel;

  factory GeneroModel.fromJson(Map<String, dynamic> json) =>
      _$GeneroModelFromJson(json);
}

@freezed
class DefuncionModel with _$DefuncionModel {
  const factory DefuncionModel({
    String? codigoLugarDefuncion,
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
    String? paisFallecimiento,
  }) = _DefuncionModel;

  factory DefuncionModel.fromJson(Map<String, dynamic> json) =>
      _$DefuncionModelFromJson(json);
}

@freezed
class RegisterCitizenModel with _$RegisterCitizenModel {
  const factory RegisterCitizenModel({
    required CitizenModel citizen,
  }) = _RegisterCitizenModel;

  const RegisterCitizenModel._();

  factory RegisterCitizenModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterCitizenModelFromJson(json);
}
