import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage.dart';

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

@JsonSerializable(explicitToJson: true)
class ResponseMarriageModel {
  ResponseMarriageModel({
    required this.id,
    required this.requestOwnerNui,
    required this.requestOwnerName,
    required this.creationDate,
    this.operatorName,
    this.interviewDate,
    required this.lastUpdateDate,
    required this.amountOfDays,
    this.zoneName,
    required this.provinceName,
    required this.cantonName,
    required this.agencyName,
    required this.state,
  });

  factory ResponseMarriageModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseMarriageModelFromJson(json);

  final String id;
  final String requestOwnerNui;
  final String requestOwnerName;
  final DateTime creationDate;
  final String? operatorName;
  final String? interviewDate;
  final String lastUpdateDate;
  final int amountOfDays;
  final String? zoneName;
  final String provinceName;
  final String cantonName;
  final String agencyName;
  final StateMarriage state;

  Map<String, dynamic> toJson() => _$ResponseMarriageModelToJson(this);
}
