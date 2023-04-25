// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarriageCelebrationModel _$MarriageCelebrationModelFromJson(
        Map<String, dynamic> json) =>
    MarriageCelebrationModel(
      requestOwnerType: json['requestOwnerType'] as String,
      agencyId: json['agencyId'] as String,
      requestOwner:
          RequestOwner.fromJson(json['requestOwner'] as Map<String, dynamic>),
      isOutside: json['isOutside'] as bool,
      outside: json['outside'] == null
          ? null
          : Outside.fromJson(json['outside'] as Map<String, dynamic>),
      firstWitness:
          Witness.fromJson(json['firstWitness'] as Map<String, dynamic>),
      secondWitness:
          Witness.fromJson(json['secondWitness'] as Map<String, dynamic>),
      firstPartner:
          Partner.fromJson(json['firstPartner'] as Map<String, dynamic>),
      secondPartner:
          Partner.fromJson(json['secondPartner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarriageCelebrationModelToJson(
        MarriageCelebrationModel instance) =>
    <String, dynamic>{
      'requestOwnerType': instance.requestOwnerType,
      'agencyId': instance.agencyId,
      'requestOwner': instance.requestOwner.toJson(),
      'isOutside': instance.isOutside,
      'outside': instance.outside?.toJson(),
      'firstWitness': instance.firstWitness.toJson(),
      'secondWitness': instance.secondWitness.toJson(),
      'firstPartner': instance.firstPartner.toJson(),
      'secondPartner': instance.secondPartner.toJson(),
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
      nui: json['nui'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$WitnessToJson(Witness instance) => <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
    };

Partner _$PartnerFromJson(Map<String, dynamic> json) => Partner(
      nui: json['nui'] as String,
      name: json['name'] as String,
      maritalStatus: json['maritalStatus'] as String,
      hasChildren: json['hasChildren'] as bool,
      childrenRelationship: json['childrenRelationship'] as String,
      conadis: json['hasConadis'] as bool,
      conadisNumber: json['conadisNui'] as String?,
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnerToJson(Partner instance) => <String, dynamic>{
      'nui': instance.nui,
      'name': instance.name,
      'maritalStatus': instance.maritalStatus,
      'hasChildren': instance.hasChildren,
      'childrenRelationship': instance.childrenRelationship,
      'hasConadis': instance.conadis,
      'conadisNui': instance.conadisNumber,
      'documents': instance.documents.map((e) => e.toJson()).toList(),
    };

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      referenceId: json['referenceId'] as String,
      file: json['file'] as String,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'referenceId': instance.referenceId,
      'file': instance.file,
    };
