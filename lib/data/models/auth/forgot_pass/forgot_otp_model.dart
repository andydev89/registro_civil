import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';

part 'forgot_otp_model.g.dart';

part 'forgot_otp_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable()
class ForgotOtpModel {
  ForgotOtpModel({
    @FormControlAnnotation(validators: [requiredValidator, length6Validator])
        this.otp = '',
    this.nui,
  });

  factory ForgotOtpModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotOtpModelFromJson(json);

  final String otp;
  final String? nui;

  Map<String, dynamic> toJson() => _$ForgotOtpModelToJson(this);
}

@JsonSerializable()
class ValidOtpModel {
  ValidOtpModel({this.valid = false});

  factory ValidOtpModel.fromJson(Map<String, dynamic> json) =>
      _$ValidOtpModelFromJson(json);

  final bool valid;

  Map<String, dynamic> toJson() => _$ValidOtpModelToJson(this);
}

@JsonSerializable()
@ReactiveFormAnnotation()
@FormGroupAnnotation<ForgotConfirmPasswordModel>(
    validators: [passwordsMustMatch])
class ForgotConfirmPasswordModel {
  ForgotConfirmPasswordModel({
    @FormControlAnnotation(validators: [requiredValidator, passwordValidator])
        this.newPassword = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.confirmPassword = '',
    this.nui,
    this.otp,
  });

  factory ForgotConfirmPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotConfirmPasswordModelFromJson(json);

  final String newPassword;
  final String confirmPassword;
  final String? nui;
  final String? otp;

  // Map<String, dynamic> toJson() => _$ForgotConfirmPasswordModelToJson(this);
  Map<String, dynamic> toJson() {
    final data = _$ForgotConfirmPasswordModelToJson(this);
    data['password'] = data['newPassword'];
    data
      ..remove('newPassword')
      ..remove('confirmPassword');
    return data;
  }
}
