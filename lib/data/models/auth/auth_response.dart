import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class RegisterCitizenModel {
  RegisterCitizenModel({
    this.nui = '',
    this.firstName = '',
    this.lastName = '',
    this.fullName = '',
  });

  factory RegisterCitizenModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterCitizenModelFromJson(json);
  final String nui;
  final String firstName;
  final String lastName;
  final String fullName;

  String get otp => fullName.split(':').last.trim();

  Map<String, dynamic> toJson() => _$RegisterCitizenModelToJson(this);
}

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
class CommandModel {
  CommandModel({
    required this.id,
    required this.command,
  });

  factory CommandModel.fromJson(Map<String, dynamic> json) =>
      _$CommandModelFromJson(json);
  final String id;
  final String command;

  Map<String, dynamic> toJson() => _$CommandModelToJson(this);
}

@JsonSerializable()
class CodeModel {
  CodeModel({
    required this.code,
    required this.command,
  });

  factory CodeModel.fromJson(Map<String, dynamic> json) =>
      _$CodeModelFromJson(json);
  String code;
  String command;

  Map<String, dynamic> toJson() => _$CodeModelToJson(this);
}
