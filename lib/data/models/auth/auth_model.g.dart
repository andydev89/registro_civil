// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      jwtToken: json['jwtToken'] as String,
      usefulLifeInMillis: json['usefulLifeInMillis'] as int?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'jwtToken': instance.jwtToken,
      'usefulLifeInMillis': instance.usefulLifeInMillis,
    };

TelephoneOperatorModel _$TelephoneOperatorModelFromJson(
        Map<String, dynamic> json) =>
    TelephoneOperatorModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$TelephoneOperatorModelToJson(
        TelephoneOperatorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

AuthCodeModel _$AuthCodeModelFromJson(Map<String, dynamic> json) =>
    AuthCodeModel(
      code: json['code'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$AuthCodeModelToJson(AuthCodeModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'command': instance.command,
    };

_$_CitizenModel _$$_CitizenModelFromJson(Map<String, dynamic> json) =>
    _$_CitizenModel(
      nui: json['nui'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      apellidos: json['apellidos'] as String? ?? '',
      nombres: json['nombres'] as String? ?? '',
    );

Map<String, dynamic> _$$_CitizenModelToJson(_$_CitizenModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'nombre': instance.nombre,
      'apellidos': instance.apellidos,
      'nombres': instance.nombres,
    };

_$_DomicilioModel _$$_DomicilioModelFromJson(Map<String, dynamic> json) =>
    _$_DomicilioModel(
      codigoDomicilio: json['codigoDomicilio'] as String?,
      domicilio: json['domicilio'] as String?,
      calle: json['calle'] as String?,
      numeroCasa: json['numeroCasa'] as String?,
      codigoParroquiaDomicilio: json['codigoParroquiaDomicilio'] as String?,
      codigoCantonDomicilio: json['codigoCantonDomicilio'] as String?,
      codigoProvinciaDomicilio: json['codigoProvinciaDomicilio'] as String?,
      codigoPaisDomicilio: json['codigoPaisDomicilio'] as String?,
      parroquiaDomicilio: json['parroquiaDomicilio'] as String?,
      cantonDomicilio: json['cantonDomicilio'] as String?,
      provinciaDomicilio: json['provinciaDomicilio'] as String?,
      paisDomicilio: json['paisDomicilio'] as String?,
    );

Map<String, dynamic> _$$_DomicilioModelToJson(_$_DomicilioModel instance) =>
    <String, dynamic>{
      'codigoDomicilio': instance.codigoDomicilio,
      'domicilio': instance.domicilio,
      'calle': instance.calle,
      'numeroCasa': instance.numeroCasa,
      'codigoParroquiaDomicilio': instance.codigoParroquiaDomicilio,
      'codigoCantonDomicilio': instance.codigoCantonDomicilio,
      'codigoProvinciaDomicilio': instance.codigoProvinciaDomicilio,
      'codigoPaisDomicilio': instance.codigoPaisDomicilio,
      'parroquiaDomicilio': instance.parroquiaDomicilio,
      'cantonDomicilio': instance.cantonDomicilio,
      'provinciaDomicilio': instance.provinciaDomicilio,
      'paisDomicilio': instance.paisDomicilio,
    };

_$_NacimientoModel _$$_NacimientoModelFromJson(Map<String, dynamic> json) =>
    _$_NacimientoModel(
      codigoLugarNacimiento: json['codigoLugarNacimiento'] as String?,
      lugarNacimiento: json['lugarNacimiento'] as String? ?? '',
      tomo: json['tomo'] as String?,
      clase: json['clase'] as String?,
      pagina: json['pagina'] as String?,
      acta: json['acta'] as String?,
      codigoParroquiaNacimiento: json['codigoParroquiaNacimiento'] as String?,
      codigoCantonNacimiento: json['codigoCantonNacimiento'] as String?,
      codigoProvinciaNacimiento: json['codigoProvinciaNacimiento'] as String?,
      codigoPaisNacimiento: json['codigoPaisNacimiento'] as String?,
      parroquiaNacimiento: json['parroquiaNacimiento'] as String?,
      cantonNacimiento: json['cantonNacimiento'] as String?,
      provinciaNacimiento: json['provinciaNacimiento'] as String?,
      paisNacimiento: json['paisNacimiento'] as String?,
      codigoLugarInscripcion: json['codigoLugarInscripcion'] as String?,
      lugarInscripcion: json['lugarInscripcion'] as String?,
      anioInscripcion: json['anioInscripcion'] as String?,
      codigoParroquiaInscripcion: json['codigoParroquiaInscripcion'] as String?,
      codigoCantonInscripcion: json['codigoCantonInscripcion'] as String?,
      codigoProvinciaInscripcion: json['codigoProvinciaInscripcion'] as String?,
      codigoPaisInscripcion: json['codigoPaisInscripcion'] as String?,
      parroquiaInscripcion: json['parroquiaInscripcion'] as String?,
      cantonInscripcion: json['cantonInscripcion'] as String?,
      provinciaInscripcion: json['provinciaInscripcion'] as String?,
      paisInscripcion: json['paisInscripcion'] as String?,
      fechaInscripcionNacimiento: json['fechaInscripcionNacimiento'] as String?,
      anioInscripcionNacimiento: json['anioInscripcionNacimiento'] as String?,
    );

Map<String, dynamic> _$$_NacimientoModelToJson(_$_NacimientoModel instance) =>
    <String, dynamic>{
      'codigoLugarNacimiento': instance.codigoLugarNacimiento,
      'lugarNacimiento': instance.lugarNacimiento,
      'tomo': instance.tomo,
      'clase': instance.clase,
      'pagina': instance.pagina,
      'acta': instance.acta,
      'codigoParroquiaNacimiento': instance.codigoParroquiaNacimiento,
      'codigoCantonNacimiento': instance.codigoCantonNacimiento,
      'codigoProvinciaNacimiento': instance.codigoProvinciaNacimiento,
      'codigoPaisNacimiento': instance.codigoPaisNacimiento,
      'parroquiaNacimiento': instance.parroquiaNacimiento,
      'cantonNacimiento': instance.cantonNacimiento,
      'provinciaNacimiento': instance.provinciaNacimiento,
      'paisNacimiento': instance.paisNacimiento,
      'codigoLugarInscripcion': instance.codigoLugarInscripcion,
      'lugarInscripcion': instance.lugarInscripcion,
      'anioInscripcion': instance.anioInscripcion,
      'codigoParroquiaInscripcion': instance.codigoParroquiaInscripcion,
      'codigoCantonInscripcion': instance.codigoCantonInscripcion,
      'codigoProvinciaInscripcion': instance.codigoProvinciaInscripcion,
      'codigoPaisInscripcion': instance.codigoPaisInscripcion,
      'parroquiaInscripcion': instance.parroquiaInscripcion,
      'cantonInscripcion': instance.cantonInscripcion,
      'provinciaInscripcion': instance.provinciaInscripcion,
      'paisInscripcion': instance.paisInscripcion,
      'fechaInscripcionNacimiento': instance.fechaInscripcionNacimiento,
      'anioInscripcionNacimiento': instance.anioInscripcionNacimiento,
    };

_$_ConyugeModel _$$_ConyugeModelFromJson(Map<String, dynamic> json) =>
    _$_ConyugeModel(
      nuiConyuge: json['nuiConyuge'] as String? ?? '',
      conyuge: json['conyuge'] as String? ?? '',
      fechaMatrimonio: json['fechaMatrimonio'] as String? ?? '',
      tomoMatrimonio: json['tomoMatrimonio'] as String?,
      claseMatrimonio: json['claseMatrimonio'] as String?,
      paginaMatrimonio: json['paginaMatrimonio'] as String?,
      actaMatrimonio: json['actaMatrimonio'] as String?,
      codigoLugarMatrimonio: json['codigoLugarMatrimonio'] as String?,
      lugarMatrimonio: json['lugarMatrimonio'] as String?,
      codigoParroquiaMatrimonio: json['codigoParroquiaMatrimonio'] as String?,
      codigoCantonMatrimonio: json['codigoCantonMatrimonio'] as String?,
      codigoProvinciaMatrimonio: json['codigoProvinciaMatrimonio'] as String?,
      codigoPaisMatrimonio: json['codigoPaisMatrimonio'] as String?,
      parroquiaMatrimonio: json['parroquiaMatrimonio'] as String?,
      cantonMatrimonio: json['cantonMatrimonio'] as String?,
      provinciaMatrimonio: json['provinciaMatrimonio'] as String?,
      paisMatrimonio: json['paisMatrimonio'] as String?,
    );

Map<String, dynamic> _$$_ConyugeModelToJson(_$_ConyugeModel instance) =>
    <String, dynamic>{
      'nuiConyuge': instance.nuiConyuge,
      'conyuge': instance.conyuge,
      'fechaMatrimonio': instance.fechaMatrimonio,
      'tomoMatrimonio': instance.tomoMatrimonio,
      'claseMatrimonio': instance.claseMatrimonio,
      'paginaMatrimonio': instance.paginaMatrimonio,
      'actaMatrimonio': instance.actaMatrimonio,
      'codigoLugarMatrimonio': instance.codigoLugarMatrimonio,
      'lugarMatrimonio': instance.lugarMatrimonio,
      'codigoParroquiaMatrimonio': instance.codigoParroquiaMatrimonio,
      'codigoCantonMatrimonio': instance.codigoCantonMatrimonio,
      'codigoProvinciaMatrimonio': instance.codigoProvinciaMatrimonio,
      'codigoPaisMatrimonio': instance.codigoPaisMatrimonio,
      'parroquiaMatrimonio': instance.parroquiaMatrimonio,
      'cantonMatrimonio': instance.cantonMatrimonio,
      'provinciaMatrimonio': instance.provinciaMatrimonio,
      'paisMatrimonio': instance.paisMatrimonio,
    };

_$_GeneroModel _$$_GeneroModelFromJson(Map<String, dynamic> json) =>
    _$_GeneroModel(
      codigoGenero: json['codigoGenero'] as String?,
      genero: json['genero'] as String?,
      fechaInscripcionGenero: json['fechaInscripcionGenero'] as String?,
      codigoLugarInscripcionGenero:
          json['codigoLugarInscripcionGenero'] as String?,
      lugarInscripcionGenero: json['lugarInscripcionGenero'] as String?,
      codigoParroquiaInscripcionGenero:
          json['codigoParroquiaInscripcionGenero'] as String?,
      codigoCantonInscripcionGenero:
          json['codigoCantonInscripcionGenero'] as String?,
      codigoProvinciaInscripcionGenero:
          json['codigoProvinciaInscripcionGenero'] as String?,
      codigoPaisInscripcionGenero:
          json['codigoPaisInscripcionGenero'] as String?,
      parroquiaInscripcionGenero: json['parroquiaInscripcionGenero'] as String?,
      cantonInscripcionGenero: json['cantonInscripcionGenero'] as String?,
      provinciaInscripcionGenero: json['provinciaInscripcionGenero'] as String?,
      paisInscripcionGenero: json['paisInscripcionGenero'] as String?,
    );

Map<String, dynamic> _$$_GeneroModelToJson(_$_GeneroModel instance) =>
    <String, dynamic>{
      'codigoGenero': instance.codigoGenero,
      'genero': instance.genero,
      'fechaInscripcionGenero': instance.fechaInscripcionGenero,
      'codigoLugarInscripcionGenero': instance.codigoLugarInscripcionGenero,
      'lugarInscripcionGenero': instance.lugarInscripcionGenero,
      'codigoParroquiaInscripcionGenero':
          instance.codigoParroquiaInscripcionGenero,
      'codigoCantonInscripcionGenero': instance.codigoCantonInscripcionGenero,
      'codigoProvinciaInscripcionGenero':
          instance.codigoProvinciaInscripcionGenero,
      'codigoPaisInscripcionGenero': instance.codigoPaisInscripcionGenero,
      'parroquiaInscripcionGenero': instance.parroquiaInscripcionGenero,
      'cantonInscripcionGenero': instance.cantonInscripcionGenero,
      'provinciaInscripcionGenero': instance.provinciaInscripcionGenero,
      'paisInscripcionGenero': instance.paisInscripcionGenero,
    };

_$_DefuncionModel _$$_DefuncionModelFromJson(Map<String, dynamic> json) =>
    _$_DefuncionModel(
      codigoLugarDefuncion: json['codigoLugarDefuncion'] as String?,
      lugarDefuncion: json['lugarDefuncion'] as String?,
      fechaInscripcionDefuncion: json['fechaInscripcionDefuncion'] as String?,
      tomoDefuncion: json['tomoDefuncion'] as String?,
      claseDefuncion: json['claseDefuncion'] as String?,
      paginaDefuncion: json['paginaDefuncion'] as String?,
      actaDefuncion: json['actaDefuncion'] as String?,
      codigoParroquiaInscripcionDefuncion:
          json['codigoParroquiaInscripcionDefuncion'] as String?,
      codigoCantonInscripcionDefuncion:
          json['codigoCantonInscripcionDefuncion'] as String?,
      codigoProvinciaInscripcionDefuncion:
          json['codigoProvinciaInscripcionDefuncion'] as String?,
      codigoPaisInscripcionDefuncion:
          json['codigoPaisInscripcionDefuncion'] as String?,
      parroquiaInscripcionDefuncion:
          json['parroquiaInscripcionDefuncion'] as String?,
      cantonInscripcionDefuncion: json['cantonInscripcionDefuncion'] as String?,
      provinciaInscripcionDefuncion:
          json['provinciaInscripcionDefuncion'] as String?,
      paisInscripcionDefuncion: json['paisInscripcionDefuncion'] as String?,
      codigoLugarFallecimiento: json['codigoLugarFallecimiento'] as String?,
      lugarFallecimiento: json['lugarFallecimiento'] as String?,
      fechaFallecimiento: json['fechaFallecimiento'] as String?,
      codigoParroquiaFallecimiento:
          json['codigoParroquiaFallecimiento'] as String?,
      codigoCantonFallecimiento: json['codigoCantonFallecimiento'] as String?,
      codigoProvinciaFallecimiento:
          json['codigoProvinciaFallecimiento'] as String?,
      codigoPaisFallecimiento: json['codigoPaisFallecimiento'] as String?,
      parroquiaFallecimiento: json['parroquiaFallecimiento'] as String?,
      cantonFallecimiento: json['cantonFallecimiento'] as String?,
      provinciaFallecimiento: json['provinciaFallecimiento'] as String?,
      paisFallecimiento: json['paisFallecimiento'] as String?,
    );

Map<String, dynamic> _$$_DefuncionModelToJson(_$_DefuncionModel instance) =>
    <String, dynamic>{
      'codigoLugarDefuncion': instance.codigoLugarDefuncion,
      'lugarDefuncion': instance.lugarDefuncion,
      'fechaInscripcionDefuncion': instance.fechaInscripcionDefuncion,
      'tomoDefuncion': instance.tomoDefuncion,
      'claseDefuncion': instance.claseDefuncion,
      'paginaDefuncion': instance.paginaDefuncion,
      'actaDefuncion': instance.actaDefuncion,
      'codigoParroquiaInscripcionDefuncion':
          instance.codigoParroquiaInscripcionDefuncion,
      'codigoCantonInscripcionDefuncion':
          instance.codigoCantonInscripcionDefuncion,
      'codigoProvinciaInscripcionDefuncion':
          instance.codigoProvinciaInscripcionDefuncion,
      'codigoPaisInscripcionDefuncion': instance.codigoPaisInscripcionDefuncion,
      'parroquiaInscripcionDefuncion': instance.parroquiaInscripcionDefuncion,
      'cantonInscripcionDefuncion': instance.cantonInscripcionDefuncion,
      'provinciaInscripcionDefuncion': instance.provinciaInscripcionDefuncion,
      'paisInscripcionDefuncion': instance.paisInscripcionDefuncion,
      'codigoLugarFallecimiento': instance.codigoLugarFallecimiento,
      'lugarFallecimiento': instance.lugarFallecimiento,
      'fechaFallecimiento': instance.fechaFallecimiento,
      'codigoParroquiaFallecimiento': instance.codigoParroquiaFallecimiento,
      'codigoCantonFallecimiento': instance.codigoCantonFallecimiento,
      'codigoProvinciaFallecimiento': instance.codigoProvinciaFallecimiento,
      'codigoPaisFallecimiento': instance.codigoPaisFallecimiento,
      'parroquiaFallecimiento': instance.parroquiaFallecimiento,
      'cantonFallecimiento': instance.cantonFallecimiento,
      'provinciaFallecimiento': instance.provinciaFallecimiento,
      'paisFallecimiento': instance.paisFallecimiento,
    };

_$_RegisterCitizenModel _$$_RegisterCitizenModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterCitizenModel(
      citizen: CitizenModel.fromJson(json['citizen'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterCitizenModelToJson(
        _$_RegisterCitizenModel instance) =>
    <String, dynamic>{
      'citizen': instance.citizen,
    };
