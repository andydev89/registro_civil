// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NuiModel _$NuiModelFromJson(Map<String, dynamic> json) => NuiModel(
      nui: json['nui'] as String? ?? '',
    );

Map<String, dynamic> _$NuiModelToJson(NuiModel instance) => <String, dynamic>{
      'nui': instance.nui,
    };

EnterDataModel _$EnterDataModelFromJson(Map<String, dynamic> json) =>
    EnterDataModel(
      nui: json['nui'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      telephoneOperator: EnterDataModel._telephoneOperatorFromJson(
          json['telephoneOperator'] as String?),
    );

Map<String, dynamic> _$EnterDataModelToJson(EnterDataModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'telephoneOperator':
          EnterDataModel._telephoneOperatorToJson(instance.telephoneOperator),
    };

OtpModel _$OtpModelFromJson(Map<String, dynamic> json) => OtpModel(
      code: json['code'] as String? ?? '',
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$OtpModelToJson(OtpModel instance) => <String, dynamic>{
      'isVerified': instance.isVerified,
      'code': instance.code,
    };

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      code: json['code'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'password': instance.password,
    };

PasswordModel _$PasswordModelFromJson(Map<String, dynamic> json) =>
    PasswordModel(
      confirmPassword: json['confirmPassword'] == null
          ? null
          : ConfirmPasswordModel.fromJson(
              json['confirmPassword'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PasswordModelToJson(PasswordModel instance) =>
    <String, dynamic>{
      'confirmPassword': instance.confirmPassword,
    };

ConfirmPasswordModel _$ConfirmPasswordModelFromJson(
        Map<String, dynamic> json) =>
    ConfirmPasswordModel(
      newPassword: json['newPassword'] as String? ?? '',
      confirmPassword: json['confirmPassword'] as String? ?? '',
    );

Map<String, dynamic> _$ConfirmPasswordModelToJson(
        ConfirmPasswordModel instance) =>
    <String, dynamic>{
      'confirmPassword': instance.confirmPassword,
      'newPassword': instance.newPassword,
    };

MeModel _$MeModelFromJson(Map<String, dynamic> json) => MeModel(
      id: json['id'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      identification: json['identification'] as String? ?? '',
      email: json['email'] as String? ?? '',
      type: json['type'] as String? ?? '',
      state:
          $enumDecodeNullable(_$StatusEnumMap, json['state']) ?? Status.active,
      profile: (json['profile'] as List<dynamic>?)
              ?.map((e) => Profile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      agency: (json['agency'] as List<dynamic>?)
              ?.map((e) => AgencyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      aplication: (json['aplication'] as List<dynamic>?)
              ?.map((e) => Aplication.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      phone: json['phone'] as String? ?? '',
    );

Map<String, dynamic> _$MeModelToJson(MeModel instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'identification': instance.identification,
      'email': instance.email,
      'type': instance.type,
      'state': _$StatusEnumMap[instance.state]!,
      'phone': instance.phone,
      'profile': instance.profile,
      'agency': instance.agency,
      'aplication': instance.aplication,
    };

const _$StatusEnumMap = {
  Status.active: 'ACTIVE',
  Status.inactive: 'INACTIVE',
  Status.unpaind: 'UNPAID',
};

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      state: json['state'] as String?,
      agency: json['agency'] == null
          ? null
          : AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'state': instance.state,
      'agency': instance.agency,
      'access': instance.access,
    };

Aplication _$AplicationFromJson(Map<String, dynamic> json) => Aplication(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$AplicationToJson(Aplication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'state': instance.state,
    };

Access _$AccessFromJson(Map<String, dynamic> json) => Access(
      id: json['id'] as String?,
      name: json['name'] as String?,
      code: json['code'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AccessToJson(Access instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
    };

Territory _$TerritoryFromJson(Map<String, dynamic> json) => Territory(
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TerritoryToJson(Territory instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
