// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarriageCelebrationModel _$MarriageCelebrationModelFromJson(
        Map<String, dynamic> json) =>
    MarriageCelebrationModel(
      requestOwnerType: $enumDecodeNullable(
          _$MarriageCelebrationTypeEnumMap, json['requestOwnerType']),
      agency: json['agencyId'] == null
          ? null
          : Agency.fromJson(json['agencyId'] as Map<String, dynamic>),
      requestOwner: json['requestOwner'] == null
          ? null
          : RequestOwner.fromJson(json['requestOwner'] as Map<String, dynamic>),
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
      isOutside: json['isOutside'] as bool? ?? false,
      outside: json['outside'] == null
          ? null
          : Outside.fromJson(json['outside'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarriageCelebrationModelToJson(
        MarriageCelebrationModel instance) =>
    <String, dynamic>{
      'requestOwnerType':
          _$MarriageCelebrationTypeEnumMap[instance.requestOwnerType],
      'agencyId': MarriageCelebrationModel._agencyToJson(instance.agency),
      'requestOwner': instance.requestOwner?.toJson(),
      'isOutside': instance.isOutside,
      'outside': instance.outside?.toJson(),
      'firstWitness': instance.firstWitness?.toJson(),
      'secondWitness': instance.secondWitness?.toJson(),
      'firstPartner': instance.firstPartner?.toJson(),
      'secondPartner': instance.secondPartner?.toJson(),
    };

const _$MarriageCelebrationTypeEnumMap = {
  MarriageCelebrationType.attorney: 'REPRESENTATIVE',
  MarriageCelebrationType.contractingParty: 'FIRST_PARTNER',
};

RequestOwner _$RequestOwnerFromJson(Map<String, dynamic> json) => RequestOwner(
      nui: json['nui'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      identityCard: json['identityCard'] as String?,
      powerOfAttorney: json['powerOfAttorney'] as String?,
    );

Map<String, dynamic> _$RequestOwnerToJson(RequestOwner instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'identityCard': instance.identityCard,
      'powerOfAttorney': instance.powerOfAttorney,
    };

Outside _$OutsideFromJson(Map<String, dynamic> json) => Outside(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      principalStreet: json['principalStreet'] as String,
      secondaryStreet: json['secondaryStreet'] as String,
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
      'nui': instance.nui,
      'name': instance.name,
    };

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      nui: json['nui'] as String,
      name: json['name'] as String,
      maritalStatus: $enumDecode(_$MaritalStatusEnumMap, json['maritalStatus']),
      hasChildren: json['hasChildren'] as bool,
      childrenRelationship: $enumDecodeNullable(
          _$ChildrenRelationShipEnumMap, json['childrenRelationship']),
      conadis: json['hasConadis'] as bool,
      conadisNumber: json['conadisNui'] as String?,
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'maritalStatus': _$MaritalStatusEnumMap[instance.maritalStatus]!,
      'hasChildren': instance.hasChildren,
      'childrenRelationship':
          _$ChildrenRelationShipEnumMap[instance.childrenRelationship],
      'hasConadis': instance.conadis,
      'conadisNui': instance.conadisNumber,
      'documents': instance.documents.map((e) => e.toJson()).toList(),
    };

const _$MaritalStatusEnumMap = {
  MaritalStatus.single: 'SINGLE',
  MaritalStatus.divorced: 'DIVORCED',
  MaritalStatus.widowed: 'WIDOWED',
  MaritalStatus.commonLawMarriage: 'COMMON_LAW_MARRIAGE',
  MaritalStatus.nonResidentPartner: 'NON_RESIDENT_PARTNER',
};

const _$ChildrenRelationShipEnumMap = {
  ChildrenRelationShip.anotherMarriage: 'ANOTHER_MARRIAGE',
  ChildrenRelationShip.inCommon: 'IN_COMMON',
  ChildrenRelationShip.inCommonToBeRecognized: 'IN_COMMON_TO_BE_RECOGNIZED',
  ChildrenRelationShip.foreignersWithoutDigercicRegistration:
      'FOREIGNERS_WITHOUT_DIGERCIC_REGISTRATION',
  ChildrenRelationShip.adults: 'ADULTS',
  ChildrenRelationShip.ecuadoriansInCommon: 'ECUADORIANS_IN_COMMON',
  ChildrenRelationShip.ecuadoriansInCommonToBeRecognized:
      'ECUADORIANS_IN_COMMON_TO_BE_RECOGNIZED',
};

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      referenceId: json['referenceId'] as String,
      file: json['file'] as String,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'referenceId': instance.referenceId,
      'file': instance.file,
    };
