// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentResponse _$DocumentResponseFromJson(Map<String, dynamic> json) =>
    DocumentResponse(
      id: json['id'] as String,
      documentName: json['documentName'] as String,
      documentNote: json['documentNote'] as String,
      required: json['required'] as bool,
    );

Map<String, dynamic> _$DocumentResponseToJson(DocumentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentName': instance.documentName,
      'documentNote': instance.documentNote,
      'required': instance.required,
    };
