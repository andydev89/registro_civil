// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthAbroadModel _$BirthAbroadModelFromJson(Map<String, dynamic> json) =>
    BirthAbroadModel(
      foreignType: $enumDecode(_$ForeignTypeEnumMap, json['foreignType']),
      registerOwnerType:
          $enumDecode(_$RegisterOwnerTypeEnumMap, json['registerOwnerType']),
      requestOwner: json['requestOwner'] as String?,
      registerOwner: json['registerOwner'] == null
          ? null
          : RegisterOwner.fromJson(
              json['registerOwner'] as Map<String, dynamic>),
      birthCertificate: json['birthCertificate'] == null
          ? null
          : Certificate.fromJson(
              json['birthCertificate'] as Map<String, dynamic>),
      identity: json['identity'] == null
          ? null
          : Certificate.fromJson(json['identity'] as Map<String, dynamic>),
      powerOfAttorney: json['powerOfAttorney'] == null
          ? null
          : Certificate.fromJson(
              json['powerOfAttorney'] as Map<String, dynamic>),
      provinceId: json['provinceId'] as String?,
      cantonId: json['cantonId'] as String?,
      agencyId: json['agencyId'] as String?,
    );

Map<String, dynamic> _$BirthAbroadModelToJson(BirthAbroadModel instance) =>
    <String, dynamic>{
      'foreignType': _$ForeignTypeEnumMap[instance.foreignType]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwner': instance.requestOwner,
      'registerOwner': instance.registerOwner?.toJson(),
      'birthCertificate': instance.birthCertificate?.toJson(),
      'identity': instance.identity?.toJson(),
      'powerOfAttorney': instance.powerOfAttorney?.toJson(),
      'provinceId': instance.provinceId,
      'cantonId': instance.cantonId,
      'agencyId': instance.agencyId,
    };

const _$ForeignTypeEnumMap = {
  ForeignType.resident: 'RESIDENT',
  ForeignType.noResident: 'NO_RESIDENT',
};

const _$RegisterOwnerTypeEnumMap = {
  RegisterOwnerType.attorney: 'ATTORNEY',
  RegisterOwnerType.titular: 'TITULAR',
  RegisterOwnerType.parents: 'PARENTS',
  RegisterOwnerType.grandParents: 'GRANDPARENTS',
};

Map<String, dynamic> _$$_BirthAbroadModelToJson(_$_BirthAbroadModel instance) =>
    <String, dynamic>{
      'foreignType': _$ForeignTypeEnumMap[instance.foreignType]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwner': instance.requestOwner,
      'registerOwner': instance.registerOwner,
      'birthCertificate': instance.birthCertificate,
      'identity': instance.identity,
      'powerOfAttorney': instance.powerOfAttorney,
      'provinceId': instance.provinceId,
      'cantonId': instance.cantonId,
      'agencyId': instance.agencyId,
    };

_$_RegisterOwner _$$_RegisterOwnerFromJson(Map<String, dynamic> json) =>
    _$_RegisterOwner(
      name: json['name'] as String?,
      identification: json['identification'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_RegisterOwnerToJson(_$_RegisterOwner instance) =>
    <String, dynamic>{
      'name': instance.name,
      'identification': instance.identification,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_Certificate _$$_CertificateFromJson(Map<String, dynamic> json) =>
    _$_Certificate(
      name: json['name'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$_CertificateToJson(_$_Certificate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'file': instance.file,
    };
