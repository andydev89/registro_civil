// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

const _$StateDocumentEnumMap = {
  StateDocument.pending: 'PENDING',
  StateDocument.approved: 'APPROVED',
  StateDocument.rejected: 'REJECTED',
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

_$_MarriageCelebrationModel _$$_MarriageCelebrationModelFromJson(
        Map<String, dynamic> json) =>
    _$_MarriageCelebrationModel(
      requestOwnerType: $enumDecodeNullable(
              _$MarriageCelebrationTypeEnumMap, json['requestOwnerType']) ??
          MarriageCelebrationType.attorney,
      province: json['province'] == null
          ? null
          : LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      agency: json['agency'] == null
          ? null
          : LocationModel.fromJson(json['agency'] as Map<String, dynamic>),
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
      state: $enumDecodeNullable(_$StateMarriageTypeEnumMap, json['state']),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_MarriageCelebrationModelToJson(
        _$_MarriageCelebrationModel instance) =>
    <String, dynamic>{
      'requestOwnerType':
          _$MarriageCelebrationTypeEnumMap[instance.requestOwnerType]!,
      'agencyID': AgencyModel.agencyToJson(instance.agencyID),
      'firstWitness': instance.firstWitness,
      'secondWitness': instance.secondWitness,
      'firstPartner': instance.firstPartner,
      'secondPartner': instance.secondPartner,
      'requestOwner': instance.requestOwner,
      'isOutside': instance.isOutside,
      'outside': instance.outside,
    };

const _$MarriageCelebrationTypeEnumMap = {
  MarriageCelebrationType.attorney: 'REPRESENTATIVE',
  MarriageCelebrationType.contractingParty: 'FIRST_PARTNER',
};

const _$StateMarriageTypeEnumMap = {
  StateMarriageType.pending: 'PENDING',
  StateMarriageType.inProgress: 'IN_PROGRESS',
  StateMarriageType.approved: 'APPROVED',
  StateMarriageType.rejected: 'REJECTED',
  StateMarriageType.finalized: 'FINALIZED',
};

_$_RequestOwner _$$_RequestOwnerFromJson(Map<String, dynamic> json) =>
    _$_RequestOwner(
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

Map<String, dynamic> _$$_RequestOwnerToJson(_$_RequestOwner instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'identityCard': instance.identityCard,
      'powerOfAttorney': instance.powerOfAttorney,
    };

_$_Outside _$$_OutsideFromJson(Map<String, dynamic> json) => _$_Outside(
      latitude: json['latitude'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      principalStreet: json['principalStreet'] as String? ?? '',
      secondaryStreet: json['secondaryStreet'] as String? ?? '',
    );

Map<String, dynamic> _$$_OutsideToJson(_$_Outside instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'principalStreet': instance.principalStreet,
      'secondaryStreet': instance.secondaryStreet,
    };

_$_Witness _$$_WitnessFromJson(Map<String, dynamic> json) => _$_Witness(
      nui: json['nui'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_WitnessToJson(_$_Witness instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
    };

_$_Partner _$$_PartnerFromJson(Map<String, dynamic> json) => _$_Partner(
      nui: json['nui'] as String? ?? '',
      name: json['name'] as String? ?? '',
      maritalStatus:
          $enumDecode(_$MaritalStatusTypeEnumMap, json['maritalStatus']),
      hasChildren: Binary.fromJson(json['hasChildren'] as bool),
      childrenRelationship: $enumDecodeNullable(
          _$ChildrenRelationShipTypeEnumMap, json['childrenRelationship']),
      conadis: json['hasConadis'] as bool? ?? false,
      conadisNumber: json['conadisNui'] as String? ?? '',
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PartnerToJson(_$_Partner instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'maritalStatus': _$MaritalStatusTypeEnumMap[instance.maritalStatus]!,
      'hasChildren': Binary.toJson(instance.hasChildren),
      'childrenRelationship':
          _$ChildrenRelationShipTypeEnumMap[instance.childrenRelationship],
      'hasConadis': instance.conadis,
      'conadisNui': instance.conadisNumber,
      'documents': instance.documents,
    };

const _$MaritalStatusTypeEnumMap = {
  MaritalStatusType.single: 'SINGLE',
  MaritalStatusType.divorced: 'DIVORCED',
  MaritalStatusType.widower: 'WIDOWER',
  MaritalStatusType.commonLawMarriage: 'COMMON_LAW_MARRIAGE',
  MaritalStatusType.nonResidentPartner: 'NON_RESIDENT_PARTNER',
};

const _$ChildrenRelationShipTypeEnumMap = {
  ChildrenRelationShipType.anotherMarriage: 'ANOTHER_MARRIAGE',
  ChildrenRelationShipType.inCommon: 'IN_COMMON',
  ChildrenRelationShipType.inCommonToBeRecognized: 'IN_COMMON_TO_BE_RECOGNIZED',
  ChildrenRelationShipType.foreignersWithoutDigercicRegistration:
      'FOREIGNERS_WITHOUT_DIGERCIC_REGISTRATION',
  ChildrenRelationShipType.adults: 'ADULTS',
  ChildrenRelationShipType.ecuadoriansInCommon: 'ECUADORIANS_IN_COMMON',
  ChildrenRelationShipType.ecuadoriansInCommonToBeRecognized:
      'ECUADORIANS_IN_COMMON_TO_BE_RECOGNIZED',
};
