import 'package:json_annotation/json_annotation.dart';

part 'marriage_celebration_response_model.g.dart';

@JsonSerializable()
class DocumentResponse {
  DocumentResponse({
    required this.id,
    required this.documentName,
    required this.documentNote,
    required this.required,
  });

  factory DocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentResponseFromJson(json);
  final String id;
  final String documentName;
  final String documentNote;
  final bool required;


  Map<String, dynamic> toJson() => _$DocumentResponseToJson(this);
}
