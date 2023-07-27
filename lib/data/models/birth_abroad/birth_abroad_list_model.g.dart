// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BirthAbroadListModel _$BirthAbroadListModelFromJson(
        Map<String, dynamic> json) =>
    BirthAbroadListModel(
      id: json['id'] as String,
      type: $enumDecode(_$ForeignTypeEnumMap, json['type']),
      registerOwnerType:
          $enumDecode(_$RegisterOwnerTypeEnumMap, json['registerOwnerType']),
      requestOwnerId: json['requestOwnerId'] as String?,
      requestOwnerIdentification: json['requestOwnerIdentification'] as String?,
      name: json['name'] as String?,
      identification: json['identification'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      birthCertificateId: json['birthCertificateId'] as String?,
      identityId: json['identityId'] as String?,
      powerOfAttorneyId: json['powerOfAttorneyId'] as String?,
      provinceId: json['provinceId'] as String?,
      cantonId: json['cantonId'] as String?,
      agencyId: json['agencyId'] as String?,
      state: $enumDecode(_$ProcessStatusEnumMap, json['state']),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$BirthAbroadListModelToJson(
        BirthAbroadListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ForeignTypeEnumMap[instance.type]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwnerId': instance.requestOwnerId,
      'requestOwnerIdentification': instance.requestOwnerIdentification,
      'name': instance.name,
      'identification': instance.identification,
      'email': instance.email,
      'phone': instance.phone,
      'birthCertificateId': instance.birthCertificateId,
      'identityId': instance.identityId,
      'powerOfAttorneyId': instance.powerOfAttorneyId,
      'provinceId': instance.provinceId,
      'cantonId': instance.cantonId,
      'agencyId': instance.agencyId,
      'state': _$ProcessStatusEnumMap[instance.state]!,
      'createAt': instance.createAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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

const _$ProcessStatusEnumMap = {
  ProcessStatus.pending: 'PENDING',
  ProcessStatus.approved: 'APPROVED',
  ProcessStatus.inProgress: 'IN_PROGRESS',
  ProcessStatus.rejected: 'REJECTED',
};

Map<String, dynamic> _$$_BirthAbroadListModelToJson(
        _$_BirthAbroadListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ForeignTypeEnumMap[instance.type]!,
      'registerOwnerType':
          _$RegisterOwnerTypeEnumMap[instance.registerOwnerType]!,
      'requestOwnerId': instance.requestOwnerId,
      'requestOwnerIdentification': instance.requestOwnerIdentification,
      'name': instance.name,
      'identification': instance.identification,
      'email': instance.email,
      'phone': instance.phone,
      'birthCertificateId': instance.birthCertificateId,
      'identityId': instance.identityId,
      'powerOfAttorneyId': instance.powerOfAttorneyId,
      'provinceId': instance.provinceId,
      'cantonId': instance.cantonId,
      'agencyId': instance.agencyId,
      'state': _$ProcessStatusEnumMap[instance.state]!,
      'createAt': instance.createAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
