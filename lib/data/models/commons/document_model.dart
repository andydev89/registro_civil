import 'package:json_annotation/json_annotation.dart';

part 'document_model.g.dart';

@JsonSerializable()
class DocumentModel {
  DocumentModel({required this.document});

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);
  final String document;

  Map<String, dynamic> toJson() => _$DocumentModelToJson(this);
}
