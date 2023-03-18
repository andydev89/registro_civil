// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) =>
    ChangePasswordModel(
      json['confirmPassword'] == null
          ? null
          : ConfirmPasswordModel.fromJson(
              json['confirmPassword'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangePasswordModelToJson(
        ChangePasswordModel instance) =>
    <String, dynamic>{
      'confirmPassword': instance.confirmPassword,
    };
