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
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
    );

Map<String, dynamic> _$EnterDataModelToJson(EnterDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };

OtpModel _$OtpModelFromJson(Map<String, dynamic> json) => OtpModel(
      otp: json['otp'] as String? ?? '',
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$OtpModelToJson(OtpModel instance) => <String, dynamic>{
      'otp': instance.otp,
      'isVerified': instance.isVerified,
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
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      nui: json['nui'] as String? ?? '',
      password: json['password'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'nui': instance.nui,
      'password': instance.password,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
