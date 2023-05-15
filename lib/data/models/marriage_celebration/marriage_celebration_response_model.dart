import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';

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

@JsonSerializable(explicitToJson: true)
class MarriageByIdModel {
  MarriageByIdModel({
    required this.id,
    required this.state,
    required this.requestOwnerType,
    required this.requestOwner,
    required this.isOutside,
    required this.outside,
    required this.firstWitness,
    required this.secondWitness,
    required this.firstPartner,
    required this.secondPartner,
  });

  factory MarriageByIdModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageByIdModelFromJson(json);

  @JsonKey(includeToJson: false)
  final String id;
  final String state;
  final String requestOwnerType;
  final RequestOwnerById requestOwner;
  final bool isOutside;
  final Outside outside;
  final Witness firstWitness;
  final Witness secondWitness;
  final Partner firstPartner;
  final Partner secondPartner;

  Map<String, dynamic> toJson() => _$MarriageByIdModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RequestOwnerById {
  RequestOwnerById({
    required this.nui,
    required this.name,
    required this.phone,
    required this.email,
    required this.identityCardPath,
    this.identityCardState,
    required this.powerOfAttorneyPath,
    this.powerOfAttorneyState,
  });

  factory RequestOwnerById.fromJson(Map<String, dynamic> json) =>
      _$RequestOwnerByIdFromJson(json);
  final String nui;
  final String name;
  final String phone;
  final String email;
  @JsonKey(includeToJson: false)
  final String identityCardPath;
  @JsonKey(includeToJson: false)
  final String? identityCardState;
  @JsonKey(includeToJson: false)
  final String powerOfAttorneyPath;
  @JsonKey(includeToJson: false)
  final String? powerOfAttorneyState;

  Map<String, dynamic> toJson() => _$RequestOwnerByIdToJson(this);
}

@JsonSerializable()
class PartnerById {
  PartnerById({
    required this.nui,
    required this.name,
    required this.maritalStatus,
    required this.hasChildren,
    this.childrenRelationship,
    required this.hasConadis,
    required this.conadisNui,
    required this.documents,
  });

  factory PartnerById.fromJson(Map<String, dynamic> json) =>
      _$PartnerByIdFromJson(json);
  final String nui;
  final String name;
  final String maritalStatus;
  final bool hasChildren;
  final dynamic childrenRelationship;
  final bool hasConadis;
  final String conadisNui;
  final List<Document> documents;


  Map<String, dynamic> toJson() => _$PartnerByIdToJson(this);
}

@JsonSerializable()
class DocumentById {
  DocumentById({
    required this.id,
    required this.referenceId,
    required this.name,
    required this.state,
    required this.comment,
    required this.documentPath,
    required this.rejectionTypeId,
  });

  factory DocumentById.fromJson(Map<String, dynamic> json) =>
      _$DocumentByIdFromJson(json);
  final String id;
  final String referenceId;
  final String name;
  final String state;
  final String comment;
  final String documentPath;
  final String rejectionTypeId;

  Map<String, dynamic> toJson() => _$DocumentByIdToJson(this);
}
