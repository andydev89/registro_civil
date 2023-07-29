// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthAbroadModel _$BirthAbroadModelFromJson(Map<String, dynamic> json) =>
    BirthAbroadModel(
      id: json['id'] as String?,
      foreignType: $enumDecode(_$ForeignTypeEnumMap, json['type']),
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
      provinceId: json['provinceId'] == null
          ? null
          : LocationModel.fromJson(json['provinceId'] as Map<String, dynamic>),
      cantonId: json['cantonId'] == null
          ? null
          : LocationModel.fromJson(json['cantonId'] as Map<String, dynamic>),
      agencyId: json['agencyId'] == null
          ? null
          : AgencyModel.fromJson(json['agencyId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BirthAbroadModelToJson(BirthAbroadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ForeignTypeEnumMap[instance.foreignType]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwner': instance.requestOwner,
      'registerOwner': instance.registerOwner?.toJson(),
      'birthCertificate': instance.birthCertificate?.toJson(),
      'identity': instance.identity?.toJson(),
      'powerOfAttorney': instance.powerOfAttorney?.toJson(),
      'provinceId': LocationModel.locationToJsonNull(instance.provinceId),
      'cantonId': LocationModel.locationToJsonNull(instance.cantonId),
      'agencyId': AgencyModel.agencyToJson(instance.agencyId),
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

BirthAbroadDocumentModel _$BirthAbroadDocumentModelFromJson(
        Map<String, dynamic> json) =>
    BirthAbroadDocumentModel(
      id: json['id'] as String?,
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
    );

Map<String, dynamic> _$BirthAbroadDocumentModelToJson(
        BirthAbroadDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birthCertificate': instance.birthCertificate?.toJson(),
      'identity': instance.identity?.toJson(),
      'powerOfAttorney': instance.powerOfAttorney?.toJson(),
    };

Map<String, dynamic> _$$_BirthAbroadModelToJson(_$_BirthAbroadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ForeignTypeEnumMap[instance.foreignType]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwner': instance.requestOwner,
      'registerOwner': instance.registerOwner,
      'birthCertificate': instance.birthCertificate,
      'identity': instance.identity,
      'powerOfAttorney': instance.powerOfAttorney,
      'provinceId': LocationModel.locationToJsonNull(instance.provinceId),
      'cantonId': LocationModel.locationToJsonNull(instance.cantonId),
      'agencyId': AgencyModel.agencyToJson(instance.agencyId),
    };

_$_RegisterOwnerForm _$$_RegisterOwnerFormFromJson(Map<String, dynamic> json) =>
    _$_RegisterOwnerForm(
      type: $enumDecodeNullable(_$ForeignTypeEnumMap, json['type']),
      registerOwnerType: $enumDecodeNullable(
          _$RegisterOwnerTypeEnumMap, json['registerOwnerType']),
      identification: json['identification'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_RegisterOwnerFormToJson(
        _$_RegisterOwnerForm instance) =>
    <String, dynamic>{
      'type': _$ForeignTypeEnumMap[instance.type],
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType],
      'identification': instance.identification,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
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

_$_DocumentsForm _$$_DocumentsFormFromJson(Map<String, dynamic> json) =>
    _$_DocumentsForm(
      registerOwnerType: $enumDecodeNullable(
              _$RegisterOwnerTypeEnumMap, json['registerOwnerType']) ??
          RegisterOwnerType.attorney,
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
    );

Map<String, dynamic> _$$_DocumentsFormToJson(_$_DocumentsForm instance) =>
    <String, dynamic>{
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'birthCertificate': instance.birthCertificate,
      'identity': instance.identity,
      'powerOfAttorney': instance.powerOfAttorney,
    };

_$_LocationForm _$$_LocationFormFromJson(Map<String, dynamic> json) =>
    _$_LocationForm(
      province: json['province'] == null
          ? null
          : LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      canton: json['canton'] == null
          ? null
          : LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      agency: json['agency'] == null
          ? null
          : AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationFormToJson(_$_LocationForm instance) =>
    <String, dynamic>{
      'province': instance.province,
      'canton': instance.canton,
      'agency': instance.agency,
    };

_$_Certificate _$$_CertificateFromJson(Map<String, dynamic> json) =>
    _$_Certificate(
      id: json['id'] as String?,
      name: json['name'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$_CertificateToJson(_$_Certificate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
    };

Map<String, dynamic> _$$_BirthAbroadDocumentModelToJson(
        _$_BirthAbroadDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birthCertificate': instance.birthCertificate,
      'identity': instance.identity,
      'powerOfAttorney': instance.powerOfAttorney,
    };
