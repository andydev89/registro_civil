// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarriageCelebrationModel _$MarriageCelebrationModelFromJson(
        Map<String, dynamic> json) =>
    MarriageCelebrationModel(
      agency: json['agencyId'] == null
          ? null
          : AgencyModel.fromJson(json['agencyId'] as Map<String, dynamic>),
      firstWitness: json['firstWitness'] == null
          ? null
          : Witness.fromJson(json['firstWitness'] as Map<String, dynamic>),
      secondWitness: json['secondWitness'] == null
          ? null
          : Witness.fromJson(json['secondWitness'] as Map<String, dynamic>),
      firstPartner: json['firstPartner'] == null
          ? null
          : Partner.fromJson(json['firstPartner'] as Map<String, dynamic>),
      secondPartner: json['secondPartner'] == null
          ? null
          : Partner.fromJson(json['secondPartner'] as Map<String, dynamic>),
      requestOwner: json['requestOwner'] == null
          ? null
          : RequestOwner.fromJson(json['requestOwner'] as Map<String, dynamic>),
      isOutside: json['isOutside'] as bool? ?? false,
      outside: json['outside'] == null
          ? null
          : Outside.fromJson(json['outside'] as Map<String, dynamic>),
      state: $enumDecodeNullable(_$StateMarriageEnumMap, json['state']),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$MarriageCelebrationModelToJson(
        MarriageCelebrationModel instance) =>
    <String, dynamic>{
      'agencyId': MarriageCelebrationModel._agencyToJson(instance.agency),
      'firstPartner': instance.firstPartner?.toJson(),
      'firstWitness': instance.firstWitness?.toJson(),
      'isOutside': instance.isOutside,
      'outside': instance.outside?.toJson(),
      'requestOwner': instance.requestOwner?.toJson(),
      'requestOwnerType':
          _$MarriageCelebrationTypeEnumMap[instance.requestOwnerType]!,
      'secondPartner': instance.secondPartner?.toJson(),
      'secondWitness': instance.secondWitness?.toJson(),
    };

const _$StateMarriageEnumMap = {
  StateMarriage.pending: 'PENDING',
  StateMarriage.inProgress: 'IN_PROGRESS',
  StateMarriage.approved: 'APPROVED',
  StateMarriage.rejected: 'REJECTED',
  StateMarriage.finalized: 'FINALIZED',
};

const _$MarriageCelebrationTypeEnumMap = {
  MarriageCelebrationType.attorney: 'REPRESENTATIVE',
  MarriageCelebrationType.contractingParty: 'FIRST_PARTNER',
};

RequestOwner _$RequestOwnerFromJson(Map<String, dynamic> json) => RequestOwner(
      nui: json['nui'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      identityCard: json['identityCard'] as String?,
      powerOfAttorney: json['powerOfAttorney'] as String?,
      identityCardSate: $enumDecodeNullable(
          _$StateDocumentEnumMap, json['identityCardSate'],
          unknownValue: StateDocument.pending),
      powerOfAttorneyState: $enumDecodeNullable(
          _$StateDocumentEnumMap, json['powerOfAttorneyState'],
          unknownValue: StateDocument.pending),
    );

Map<String, dynamic> _$RequestOwnerToJson(RequestOwner instance) =>
    <String, dynamic>{
      'email': instance.email,
      'identityCard': instance.identityCard,
      'name': instance.name,
      'nui': instance.nui,
      'phone': instance.phone,
      'powerOfAttorney': instance.powerOfAttorney,
    };

const _$StateDocumentEnumMap = {
  StateDocument.pending: 'PENDING',
  StateDocument.approved: 'APPROVED',
  StateDocument.rejected: 'REJECTED',
};

Outside _$OutsideFromJson(Map<String, dynamic> json) => Outside(
      latitude: json['latitude'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      principalStreet: json['principalStreet'] as String? ?? '',
      secondaryStreet: json['secondaryStreet'] as String? ?? '',
    );

Map<String, dynamic> _$OutsideToJson(Outside instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'principalStreet': instance.principalStreet,
      'secondaryStreet': instance.secondaryStreet,
    };

Witness _$WitnessFromJson(Map<String, dynamic> json) => Witness(
      nui: json['nui'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$WitnessToJson(Witness instance) => <String, dynamic>{
      'name': instance.name,
      'nui': instance.nui,
    };

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      nui: json['nui'] as String? ?? '',
      name: json['name'] as String? ?? '',
      maritalStatus:
          $enumDecodeNullable(_$MaritalStatusEnumMap, json['maritalStatus']),
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      'childrenRelationship':
          ChildrenRelationShip.toJson(instance.childrenRelationship),
      'hasConadis': instance.conadis,
      'conadisNui': instance.conadisNumber,
      'documents': instance.documents.map((e) => e.toJson()).toList(),
      'hasChildren': Binary.toJson(instance.hasChildren),
      'maritalStatus': MaritalStatus.toJson(instance.maritalStatus),
      'name': instance.name,
      'nui': instance.nui,
    };

const _$MaritalStatusEnumMap = {
  MaritalStatus.single: 'SINGLE',
  MaritalStatus.divorced: 'DIVORCED',
  MaritalStatus.widower: 'WIDOWER',
  MaritalStatus.commonLawMarriage: 'COMMON_LAW_MARRIAGE',
  MaritalStatus.nonResidentPartner: 'NON_RESIDENT_PARTNER',
};

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      referenceId: json['referenceId'] as String,
      id: json['id'] as String?,
      name: json['name'] as String?,
      state: $enumDecodeNullable(_$StateDocumentEnumMap, json['state']),
      comment: json['comment'] as String?,
      documentPath: json['documentPath'] as String?,
      rejectionTypeId: json['rejectionTypeId'] as String?,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'file': instance.file,
      'referenceId': instance.referenceId,
    };

DocumentsRejection _$DocumentsRejectionFromJson(Map<String, dynamic> json) =>
    DocumentsRejection(
      id: json['id'] as String?,
      identityCard: json['identityCard'] as String?,
      powerOfAttorney: json['powerOfAttorney'] as String?,
      firstPartnerDocuments: (json['firstPartnerDocuments'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      secondPartnerDocuments: (json['secondPartnerDocuments'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DocumentsRejectionToJson(DocumentsRejection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identityCard': instance.identityCard,
      'powerOfAttorney': instance.powerOfAttorney,
      'firstPartnerDocuments': instance.firstPartnerDocuments,
      'secondPartnerDocuments': instance.secondPartnerDocuments,
    };
