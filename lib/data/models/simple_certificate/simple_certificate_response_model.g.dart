// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_certificate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCertificateResponseModel _$SimpleCertificateResponseModelFromJson(
        Map<String, dynamic> json) =>
    SimpleCertificateResponseModel(
      serviceId: json['serviceId'] as String,
      command: json['command'] as String,
      document: json['document'] as String,
    );

Map<String, dynamic> _$SimpleCertificateResponseModelToJson(
        SimpleCertificateResponseModel instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'command': instance.command,
      'document': instance.document,
    };

ProcessResponseModel _$ProcessResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProcessResponseModel(
      id: json['id'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$ProcessResponseModelToJson(
        ProcessResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
    };
