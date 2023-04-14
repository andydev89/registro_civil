import 'package:json_annotation/json_annotation.dart';

part 'simple_certificate_response.g.dart';

@JsonSerializable()
class SimpleCertificateResponse {
  SimpleCertificateResponse({
    required this.serviceId,
    required this.command,
    required this.document,
  });

  factory SimpleCertificateResponse.fromJson(Map<String, dynamic> json) =>
      _$SimpleCertificateResponseFromJson(json);

  final int serviceId;
  final String command;
  final String document;

  Map<String, dynamic> toJson() => _$SimpleCertificateResponseToJson(this);
}

@JsonSerializable()
class ProcessResponse {
  ProcessResponse({
    required this.idMap,
    required this.command,
  });

  factory ProcessResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessResponseFromJson(json);
  @JsonKey(name: 'id')
  final Map<String, int> idMap;
  final String command;

  Map<String, dynamic> toJson() => _$ProcessResponseToJson(this);
}
