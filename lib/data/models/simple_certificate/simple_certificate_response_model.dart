import 'package:json_annotation/json_annotation.dart';

part 'simple_certificate_response_model.g.dart';

@JsonSerializable()
class SimpleCertificateResponseModel {
  SimpleCertificateResponseModel({
    required this.serviceId,
    required this.command,
    required this.document,
  });

  factory SimpleCertificateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleCertificateResponseModelFromJson(json);

  final String serviceId;
  final String command;
  final String document;

  Map<String, dynamic> toJson() => _$SimpleCertificateResponseModelToJson(this);
}

@JsonSerializable()
class ProcessResponseModel {
  ProcessResponseModel({
    required this.id,
    required this.command,
  });

  factory ProcessResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProcessResponseModelFromJson(json);
  final String id;
  final String command;

  Map<String, dynamic> toJson() => _$ProcessResponseModelToJson(this);
}
