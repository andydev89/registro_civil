// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_certificate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleCertificateModel _$SimpleCertificateModelFromJson(
        Map<String, dynamic> json) =>
    SimpleCertificateModel(
      type: $enumDecode(_$TypeSimpleCertificateEnumEnumMap, json['type']),
      userNui: json['userNui'] as String,
      isFamily: json['isFamily'] as bool,
      typeFamily: $enumDecode(
          _$RelationshipSimpleCertificateEnumEnumMap, json['typeFamily']),
      nuiFamily: json['nuiFamily'] as String,
      isConadis: json['isConadis'] as bool,
      nuiConadis: json['nuiConadis'] as String,
    );

Map<String, dynamic> _$SimpleCertificateModelToJson(
        SimpleCertificateModel instance) =>
    <String, dynamic>{
      'type': _$TypeSimpleCertificateEnumEnumMap[instance.type]!,
      'userNui': instance.userNui,
      'isFamily': instance.isFamily,
      'typeFamily':
          _$RelationshipSimpleCertificateEnumEnumMap[instance.typeFamily]!,
      'nuiFamily': instance.nuiFamily,
      'isConadis': instance.isConadis,
      'nuiConadis': instance.nuiConadis,
    };

const _$TypeSimpleCertificateEnumEnumMap = {
  TypeSimpleCertificateEnum.birth: 'SERVICE_CERTIFICADO_NACIMIENTO',
  TypeSimpleCertificateEnum.marriage: 'SERVICE_CERTIFICADO_MATRIMONIO',
  TypeSimpleCertificateEnum.factorUnion: 'SERVICE_CERTIFICADO_UNION_HECHO',
  TypeSimpleCertificateEnum.death: 'SERVICE_CERTIFICADO_DEFUNCION',
  TypeSimpleCertificateEnum.identity: '',
  TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate: '',
  TypeSimpleCertificateEnum.copyRegistrationCertificateGenderRegistration: '',
  TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate: '',
  TypeSimpleCertificateEnum.copyBirthRegistrationCertificate: '',
};

const _$RelationshipSimpleCertificateEnumEnumMap = {
  RelationshipSimpleCertificateEnum.fatherMotherDeceased:
      'FATHER_MOTHER_DEATHED',
  RelationshipSimpleCertificateEnum.son: 'SON',
  RelationshipSimpleCertificateEnum.spouse: 'SPOUSE',
  RelationshipSimpleCertificateEnum.coexistent: 'COEXISTENT',
  RelationshipSimpleCertificateEnum.staff: 'STAFF',
};
