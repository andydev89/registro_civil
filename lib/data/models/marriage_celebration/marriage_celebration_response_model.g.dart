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

ResponseMarriageModel _$ResponseMarriageModelFromJson(
        Map<String, dynamic> json) =>
    ResponseMarriageModel(
      id: json['id'] as String,
      requestOwnerNui: json['requestOwnerNui'] as String,
      requestOwnerName: json['requestOwnerName'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      operatorName: json['operatorName'] as String?,
      interviewDate: json['interviewDate'] as String?,
      lastUpdateDate: json['lastUpdateDate'] as String,
      amountOfDays: json['amountOfDays'] as int,
      zoneName: json['zoneName'] as String?,
      provinceName: json['provinceName'] as String,
      cantonName: json['cantonName'] as String,
      agencyName: json['agencyName'] as String,
      state: $enumDecode(_$StateMarriageTypeEnumMap, json['state']),
    );

Map<String, dynamic> _$ResponseMarriageModelToJson(
        ResponseMarriageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestOwnerNui': instance.requestOwnerNui,
      'requestOwnerName': instance.requestOwnerName,
      'creationDate': instance.creationDate.toIso8601String(),
      'operatorName': instance.operatorName,
      'interviewDate': instance.interviewDate,
      'lastUpdateDate': instance.lastUpdateDate,
      'amountOfDays': instance.amountOfDays,
      'zoneName': instance.zoneName,
      'provinceName': instance.provinceName,
      'cantonName': instance.cantonName,
      'agencyName': instance.agencyName,
      'state': _$StateMarriageTypeEnumMap[instance.state]!,
    };

const _$StateMarriageTypeEnumMap = {
  StateMarriageType.pending: 'PENDING',
  StateMarriageType.inProgress: 'IN_PROGRESS',
  StateMarriageType.approved: 'APPROVED',
  StateMarriageType.rejected: 'REJECTED',
  StateMarriageType.finalized: 'FINALIZED',
};

MarriageByIdModel _$MarriageByIdModelFromJson(Map<String, dynamic> json) =>
    MarriageByIdModel(
      id: json['id'] as String,
      state: json['state'] as String,
      requestOwnerType: json['requestOwnerType'] as String,
      requestOwner: RequestOwnerById.fromJson(
          json['requestOwner'] as Map<String, dynamic>),
      isOutside: json['isOutside'] as bool,
      outside: Outside.fromJson(json['outside'] as Map<String, dynamic>),
      firstWitness:
          Witness.fromJson(json['firstWitness'] as Map<String, dynamic>),
      secondWitness:
          Witness.fromJson(json['secondWitness'] as Map<String, dynamic>),
      firstPartner:
          Partner.fromJson(json['firstPartner'] as Map<String, dynamic>),
      secondPartner:
          Partner.fromJson(json['secondPartner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarriageByIdModelToJson(MarriageByIdModel instance) =>
    <String, dynamic>{
      'state': instance.state,
      'requestOwnerType': instance.requestOwnerType,
      'requestOwner': instance.requestOwner.toJson(),
      'isOutside': instance.isOutside,
      'outside': instance.outside.toJson(),
      'firstWitness': instance.firstWitness.toJson(),
      'secondWitness': instance.secondWitness.toJson(),
      'firstPartner': instance.firstPartner.toJson(),
      'secondPartner': instance.secondPartner.toJson(),
    };

RequestOwnerById _$RequestOwnerByIdFromJson(Map<String, dynamic> json) =>
    RequestOwnerById(
      nui: json['nui'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      identityCardPath: json['identityCardPath'] as String,
      identityCardState: json['identityCardState'] as String?,
      powerOfAttorneyPath: json['powerOfAttorneyPath'] as String,
      powerOfAttorneyState: json['powerOfAttorneyState'] as String?,
    );

Map<String, dynamic> _$RequestOwnerByIdToJson(RequestOwnerById instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
    };

PartnerById _$PartnerByIdFromJson(Map<String, dynamic> json) => PartnerById(
      nui: json['nui'] as String,
      name: json['name'] as String,
      maritalStatus: json['maritalStatus'] as String,
      hasChildren: json['hasChildren'] as bool,
      childrenRelationship: json['childrenRelationship'],
      hasConadis: json['hasConadis'] as bool,
      conadisNui: json['conadisNui'] as String,
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnerByIdToJson(PartnerById instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'maritalStatus': instance.maritalStatus,
      'hasChildren': instance.hasChildren,
      'childrenRelationship': instance.childrenRelationship,
      'hasConadis': instance.hasConadis,
      'conadisNui': instance.conadisNui,
      'documents': instance.documents,
    };

DocumentById _$DocumentByIdFromJson(Map<String, dynamic> json) => DocumentById(
      id: json['id'] as String,
      referenceId: json['referenceId'] as String,
      name: json['name'] as String,
      state: json['state'] as String,
      comment: json['comment'] as String,
      documentPath: json['documentPath'] as String,
      rejectionTypeId: json['rejectionTypeId'] as String,
    );

Map<String, dynamic> _$DocumentByIdToJson(DocumentById instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'name': instance.name,
      'state': instance.state,
      'comment': instance.comment,
      'documentPath': instance.documentPath,
      'rejectionTypeId': instance.rejectionTypeId,
    };
