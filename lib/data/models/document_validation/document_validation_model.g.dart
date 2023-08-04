// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_validation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentValidationModel _$DocumentValidationModelFromJson(
        Map<String, dynamic> json) =>
    DocumentValidationModel(
      documentCode: json['documentCode'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
    );

Map<String, dynamic> _$DocumentValidationModelToJson(
        DocumentValidationModel instance) =>
    <String, dynamic>{
      'documentCode': instance.documentCode,
      'issueDate': instance.issueDate.toIso8601String(),
    };

DocumentValidationResponseModel _$DocumentValidationResponseModelFromJson(
        Map<String, dynamic> json) =>
    DocumentValidationResponseModel(
      emisor: json['emisor'] as String?,
      datosAdicionales: json['datosAdicionales'] as String?,
      url: json['url'] as String?,
      codError: json['codError'] as String?,
      desError: json['desError'] as String?,
      numeroCertificado: json['numeroCertificado'] as String?,
      resultado: json['resultado'] as String,
      numeroVerificaciones: json['numeroVerificaciones'] as int,
      fechaVigencia: json['fechaVigencia'] == null
          ? null
          : DateTime.parse(json['fechaVigencia'] as String),
    );

Map<String, dynamic> _$DocumentValidationResponseModelToJson(
        DocumentValidationResponseModel instance) =>
    <String, dynamic>{
      'emisor': instance.emisor,
      'datosAdicionales': instance.datosAdicionales,
      'url': instance.url,
      'codError': instance.codError,
      'desError': instance.desError,
      'numeroCertificado': instance.numeroCertificado,
      'resultado': instance.resultado,
      'numeroVerificaciones': instance.numeroVerificaciones,
      'fechaVigencia': instance.fechaVigencia?.toIso8601String(),
    };

Map<String, dynamic> _$$_DocumentValidationModelToJson(
        _$_DocumentValidationModel instance) =>
    <String, dynamic>{
      'documentCode': instance.documentCode,
      'issueDate': instance.issueDate.toIso8601String(),
    };

Map<String, dynamic> _$$_DocumentValidationResponseModelToJson(
        _$_DocumentValidationResponseModel instance) =>
    <String, dynamic>{
      'emisor': instance.emisor,
      'datosAdicionales': instance.datosAdicionales,
      'url': instance.url,
      'codError': instance.codError,
      'desError': instance.desError,
      'numeroCertificado': instance.numeroCertificado,
      'resultado': instance.resultado,
      'numeroVerificaciones': instance.numeroVerificaciones,
      'fechaVigencia': instance.fechaVigencia?.toIso8601String(),
    };
