// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotOtpModel _$ForgotOtpModelFromJson(Map<String, dynamic> json) =>
    ForgotOtpModel(
      otp: json['otp'] as String? ?? '',
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ForgotOtpModelToJson(ForgotOtpModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'userId': instance.userId,
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
      userId: json['userId'] as String? ?? '',
      newPassword: json['newPassword'] as String? ?? '',
      confirmPassword: json['confirmPassword'] as String? ?? '',
    );

Map<String, dynamic> _$ForgotConfirmPasswordModelToJson(
        ForgotConfirmPasswordModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };
