import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'register_model.g.dart';
part 'register_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class NuiModel {
  NuiModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
  });

  factory NuiModel.fromJson(Map<String, dynamic> json) =>
      _$NuiModelFromJson(json);

  Map<String, dynamic> toJson() => _$NuiModelToJson(this);

  final String nui;
}

@JsonSerializable()
@ReactiveFormAnnotation()
class EnterDataModel {
  EnterDataModel({
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        this.email = '',
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        length10Validator,
      ],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
        this.phoneNumber = '',
  });

  factory EnterDataModel.fromJson(Map<String, dynamic> json) =>
      _$EnterDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnterDataModelToJson(this);

  final String email;
  final String phoneNumber;
}

@JsonSerializable()
@ReactiveFormAnnotation()
class OtpModel {
  OtpModel({
    @FormControlAnnotation(validators: [requiredValidator, length6Validator])
        this.otp = '',
    @FormControlAnnotation(validators: [requiredTrueValidator])
        this.isVerified = false,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
  final String otp;
  final bool isVerified;

  Map<String, dynamic> toJson() => _$OtpModelToJson(this);
}

@JsonSerializable()
@ReactiveFormAnnotation()
class PasswordModel {
  PasswordModel({
    this.confirmPassword,
  });

  factory PasswordModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordModelToJson(this);
  final ConfirmPasswordModel? confirmPassword;
}

@JsonSerializable()
@FormGroupAnnotation<ConfirmPasswordModel>(validators: [passwordsMustMatch])
class ConfirmPasswordModel {
  ConfirmPasswordModel({
    @FormControlAnnotation(validators: [requiredValidator, passwordValidator])
        this.newPassword = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.confirmPassword = '',
  });

  factory ConfirmPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmPasswordModelToJson(this);

  final String newPassword;
  final String confirmPassword;
}

@JsonSerializable()
class RegisterModel {
  RegisterModel({
    this.nui = '',
    this.password = '',
    this.email = '',
    this.phoneNumber = '',
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
  final String nui;
  final String password;
  final String email;
  final String phoneNumber;

  RegisterModel copyWith({
    String? nui,
    String? password,
    String? email,
    String? phoneNumber,
  }) {
    return RegisterModel(
      nui: nui ?? this.nui,
      password: password ?? this.password,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
