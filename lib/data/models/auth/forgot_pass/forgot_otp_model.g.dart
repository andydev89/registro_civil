// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotOtpModel _$ForgotOtpModelFromJson(Map<String, dynamic> json) =>
    ForgotOtpModel(
      code: json['code'] as String? ?? '',
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ForgotOtpModelToJson(ForgotOtpModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'userId': instance.userId,
    };
