// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponseModel _$RegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    RegisterResponseModel(
      id: json['id'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$RegisterResponseModelToJson(
        RegisterResponseModel instance) =>
    <String, dynamic>{
      'command': instance.command,
      'id': instance.id,
    };

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
