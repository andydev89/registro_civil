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

SecurityQuestionsModel _$SecurityQuestionsModelFromJson(
        Map<String, dynamic> json) =>
    SecurityQuestionsModel(
      cityMetParents: json['cityMetParents'] as String? ?? '',
      nameElderCousin: json['nameElderCousin'] as String? ?? '',
    );

Map<String, dynamic> _$SecurityQuestionsModelToJson(
        SecurityQuestionsModel instance) =>
    <String, dynamic>{
      'cityMetParents': instance.cityMetParents,
      'nameElderCousin': instance.nameElderCousin,
    };

EnterDataModel _$EnterDataModelFromJson(Map<String, dynamic> json) =>
    EnterDataModel(
      email: json['email'] as String? ?? '',
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
      nui: json['nui'] == null
          ? null
          : NuiModel.fromJson(json['nui'] as Map<String, dynamic>),
      securityQuestions: json['securityQuestions'] == null
          ? null
          : SecurityQuestionsModel.fromJson(
              json['securityQuestions'] as Map<String, dynamic>),
      enterData: json['enterData'] == null
          ? null
          : EnterDataModel.fromJson(json['enterData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'securityQuestions': instance.securityQuestions,
      'enterData': instance.enterData,
    };
