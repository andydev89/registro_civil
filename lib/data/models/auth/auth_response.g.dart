// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCitizenModel _$RegisterCitizenModelFromJson(
        Map<String, dynamic> json) =>
    RegisterCitizenModel(
      nui: json['nui'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
    );

Map<String, dynamic> _$RegisterCitizenModelToJson(
        RegisterCitizenModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
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

CommandModel _$CommandModelFromJson(Map<String, dynamic> json) => CommandModel(
      id: json['id'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$CommandModelToJson(CommandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
    };

CodeModel _$CodeModelFromJson(Map<String, dynamic> json) => CodeModel(
      code: json['code'] as String,
      command: json['command'] as String,
    );

Map<String, dynamic> _$CodeModelToJson(CodeModel instance) => <String, dynamic>{
      'code': instance.code,
      'command': instance.command,
    };
