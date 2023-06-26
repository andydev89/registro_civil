// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotOtpModel _$ForgotOtpModelFromJson(Map<String, dynamic> json) =>
    ForgotOtpModel(
      otp: json['otp'] as String? ?? '',
      nui: json['nui'] as String?,
    );

Map<String, dynamic> _$ForgotOtpModelToJson(ForgotOtpModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'nui': instance.nui,
    };

ValidOtpModel _$ValidOtpModelFromJson(Map<String, dynamic> json) =>
    ValidOtpModel(
      valid: json['valid'] as bool? ?? false,
    );

Map<String, dynamic> _$ValidOtpModelToJson(ValidOtpModel instance) =>
    <String, dynamic>{
      'valid': instance.valid,
    };

ForgotConfirmPasswordModel _$ForgotConfirmPasswordModelFromJson(
        Map<String, dynamic> json) =>
    ForgotConfirmPasswordModel(
      newPassword: json['newPassword'] as String? ?? '',
      confirmPassword: json['confirmPassword'] as String? ?? '',
      nui: json['nui'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$ForgotConfirmPasswordModelToJson(
        ForgotConfirmPasswordModel instance) =>
    <String, dynamic>{
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
      'nui': instance.nui,
      'otp': instance.otp,
    };
