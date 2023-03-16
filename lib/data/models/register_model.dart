import 'package:json_annotation/json_annotation.dart';
part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.identification,
    required this.email,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  final String firstName;
  final String lastName;
  final String identification;
  final String email;
}
