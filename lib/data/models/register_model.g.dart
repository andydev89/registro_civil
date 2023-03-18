// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NuiModel _$NuiModelFromJson(Map<String, dynamic> json) => NuiModel(
      json['nui'] as String,
    );

Map<String, dynamic> _$NuiModelToJson(NuiModel instance) => <String, dynamic>{
      'nui': instance.nui,
    };

SecurityQuestionsModel _$SecurityQuestionsModelFromJson(
        Map<String, dynamic> json) =>
    SecurityQuestionsModel(
      birthCity: json['birthCity'] as String,
      birthYear: json['birthYear'] as int,
    );

Map<String, dynamic> _$SecurityQuestionsModelToJson(
        SecurityQuestionsModel instance) =>
    <String, dynamic>{
      'birthCity': instance.birthCity,
      'birthYear': instance.birthYear,
    };

EnterDataModel _$EnterDataModelFromJson(Map<String, dynamic> json) =>
    EnterDataModel(
      email: json['email'] as String,
      confirmPassword: json['confirmPassword'] == null
          ? null
          : ConfirmPasswordModel.fromJson(
              json['confirmPassword'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EnterDataModelToJson(EnterDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
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
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      nui: NuiModel.fromJson(json['nui'] as Map<String, dynamic>),
      securityQuestions: SecurityQuestionsModel.fromJson(
          json['securityQuestions'] as Map<String, dynamic>),
      enterData:
          EnterDataModel.fromJson(json['enterData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'securityQuestions': instance.securityQuestions,
      'enterData': instance.enterData,
    };
