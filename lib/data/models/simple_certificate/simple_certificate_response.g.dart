// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_certificate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCertificateResponse _$SimpleCertificateResponseFromJson(
        Map<String, dynamic> json) =>
    SimpleCertificateResponse(
      serviceId: json['serviceId'] as int,
      command: json['command'] as String,
      document: json['document'] as String,
    );

Map<String, dynamic> _$SimpleCertificateResponseToJson(
        SimpleCertificateResponse instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'command': instance.command,
      'document': instance.document,
    };

ProcessResponse _$ProcessResponseFromJson(Map<String, dynamic> json) =>
    ProcessResponse(
      idMap: Map<String, int>.from(json['id'] as Map),
      command: json['command'] as String,
    );

Map<String, dynamic> _$ProcessResponseToJson(ProcessResponse instance) =>
    <String, dynamic>{
      'id': instance.idMap,
      'command': instance.command,
    };
