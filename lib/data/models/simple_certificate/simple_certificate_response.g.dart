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
      document:
          (json['document'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SimpleCertificateResponseToJson(
        SimpleCertificateResponse instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'command': instance.command,
      'document': instance.document,
    };
