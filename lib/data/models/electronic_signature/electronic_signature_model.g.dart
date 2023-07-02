// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'electronic_signature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElectronicSignatureModel _$ElectronicSignatureModelFromJson(
        Map<String, dynamic> json) =>
    ElectronicSignatureModel(
      personType: $enumDecode(_$PersonTypeEnumMap, json['personType']),
      type: $enumDecode(_$SignatureTypeEnumMap, json['type']),
      isTokenRenovation: json['isTokenRenovation'] as bool,
      hasDeviceToken: json['hasDeviceToken'] as bool,
      deviceTokenSerialNumber: json['deviceTokenSerialNumber'] as String?,
      isACustomsAgent: json['isACustomsAgent'] as bool,
      userNui: json['userNui'] as String?,
      contactAddress: json['contactAddress'] as String?,
      contactPostalCode: json['contactPostalCode'] as String?,
      provinceId: json['provinceId'] == null
          ? null
          : LocationModel.fromJson(json['provinceId'] as Map<String, dynamic>),
      cantonId: json['cantonId'] == null
          ? null
          : LocationModel.fromJson(json['cantonId'] as Map<String, dynamic>),
      parroquiaId: json['parroquiaId'] == null
          ? null
          : LocationModel.fromJson(json['parroquiaId'] as Map<String, dynamic>),
      hasRUCIncluded: json['hasRUCIncluded'] as bool,
      ruc: json['ruc'] as String?,
      validityTime: json['validityTime'] as int?,
      useCase: $enumDecode(_$SignatureUseCaseTypeEnumMap, json['useCase']),
    );

Map<String, dynamic> _$ElectronicSignatureModelToJson(
        ElectronicSignatureModel instance) =>
    <String, dynamic>{
      'personType': _$PersonTypeEnumMap[instance.personType]!,
      'type': _$SignatureTypeEnumMap[instance.type]!,
      'isTokenRenovation': instance.isTokenRenovation,
      'hasDeviceToken': instance.hasDeviceToken,
      'deviceTokenSerialNumber': instance.deviceTokenSerialNumber,
      'isACustomsAgent': instance.isACustomsAgent,
      'userNui': instance.userNui,
      'contactAddress': instance.contactAddress,
      'contactPostalCode': instance.contactPostalCode,
      'provinceId': LocationModel.locationToJsonNull(instance.provinceId),
      'cantonId': LocationModel.locationToJsonNull(instance.cantonId),
      'parroquiaId': LocationModel.locationToJsonNull(instance.parroquiaId),
      'hasRUCIncluded': instance.hasRUCIncluded,
      'ruc': instance.ruc,
      'validityTime': instance.validityTime,
      'useCase': _$SignatureUseCaseTypeEnumMap[instance.useCase]!,
    };

const _$PersonTypeEnumMap = {
  PersonType.legalRepresentative: 'LEGAL_REPRESENTATIVE',
  PersonType.naturalPerson: 'NATURAL_PERSON',
  PersonType.companyMember: 'COMPANY_MEMBER',
};

const _$SignatureTypeEnumMap = {
  SignatureType.file: 'FILE',
  SignatureType.token: 'TOKEN',
};

const _$SignatureUseCaseTypeEnumMap = {
  SignatureUseCaseType.publicProcurementSystem: 'PUBLIC_PROCUREMENT_SYSTEM',
  SignatureUseCaseType.quipuxSitra: 'QUIPUX_SITRA',
  SignatureUseCaseType.superintendencyCompanies: 'SUPERINTENDENCIES_COMPANIES',
  SignatureUseCaseType.documentSigning: 'DOCUMENT_SIGNING',
  SignatureUseCaseType.judiciaryCouncil: 'JUDICIARY_COUNCIL',
  SignatureUseCaseType.revitDeath: 'REVIT_DEATHS',
};

ESignatureFirstSubModel _$ESignatureFirstSubModelFromJson(
        Map<String, dynamic> json) =>
    ESignatureFirstSubModel(
      userNui: json['userNui'] as String? ?? '',
      personType:
          $enumDecodeNullable(_$PersonTypeEnumMap, json['personType']) ??
              PersonType.legalRepresentative,
      signatureType:
          $enumDecodeNullable(_$SignatureTypeEnumMap, json['signatureType']) ??
              SignatureType.file,
      isTokenRenovation: json['isTokenRenovation'] as bool? ?? false,
      hasDeviceToken: json['hasDeviceToken'] as bool? ?? false,
      isACustomsAgent: json['isACustomsAgent'] as bool? ?? false,
    );

Map<String, dynamic> _$ESignatureFirstSubModelToJson(
        ESignatureFirstSubModel instance) =>
    <String, dynamic>{
      'userNui': instance.userNui,
      'personType': _$PersonTypeEnumMap[instance.personType]!,
      'signatureType': _$SignatureTypeEnumMap[instance.signatureType]!,
      'isTokenRenovation': instance.isTokenRenovation,
      'hasDeviceToken': instance.hasDeviceToken,
      'isACustomsAgent': instance.isACustomsAgent,
    };

ESignaturePersonalModel _$ESignaturePersonalModelFromJson(
        Map<String, dynamic> json) =>
    ESignaturePersonalModel(
      fullName: json['fullName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      address: json['address'] as String,
      postalCode: json['postalCode'] as String,
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      city: LocationModel.fromJson(json['city'] as Map<String, dynamic>),
      parish: LocationModel.fromJson(json['parish'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ESignaturePersonalModelToJson(
        ESignaturePersonalModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'province': instance.province,
      'city': instance.city,
      'parish': instance.parish,
    };

ESignatureBillingModel _$ESignatureBillingModelFromJson(
        Map<String, dynamic> json) =>
    ESignatureBillingModel(
      hasRUCIncluded: json['hasRUCIncluded'] as bool? ?? false,
      ruc: json['ruc'] as String? ?? '',
      validityTime:
          $enumDecode(_$SignatureValidityTimeTypeEnumMap, json['validityTime']),
      useCase: $enumDecode(_$SignatureUseCaseTypeEnumMap, json['useCase']),
    );

Map<String, dynamic> _$ESignatureBillingModelToJson(
        ESignatureBillingModel instance) =>
    <String, dynamic>{
      'hasRUCIncluded': instance.hasRUCIncluded,
      'ruc': instance.ruc,
      'validityTime':
          _$SignatureValidityTimeTypeEnumMap[instance.validityTime]!,
      'useCase': _$SignatureUseCaseTypeEnumMap[instance.useCase]!,
    };

const _$SignatureValidityTimeTypeEnumMap = {
  SignatureValidityTimeType.oneYear: 1,
  SignatureValidityTimeType.twoYears: 2,
  SignatureValidityTimeType.threeYears: 3,
  SignatureValidityTimeType.fourYears: 4,
  SignatureValidityTimeType.fiveYears: 5,
};
