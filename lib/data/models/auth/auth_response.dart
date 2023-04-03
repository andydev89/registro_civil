import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  RegisterResponseModel({required this.id, required this.command});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);

  String command;
  String id;

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
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
