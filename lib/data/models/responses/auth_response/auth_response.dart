import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  RegisterResponseModel({required this.id, required this.command});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
  String id;
  String command;

  Map<String, dynamic> toJson() => _$RegisterResponseModelToJson(this);
}

@JsonSerializable()
class LoginResponseModel {
  LoginResponseModel({required this.jwtToken});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  final String jwtToken;

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
