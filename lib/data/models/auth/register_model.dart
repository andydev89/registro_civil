import 'package:isar/isar.dart';
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

  final String nui;

  Map<String, dynamic> toJson() => _$NuiModelToJson(this);
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

  final String email;
  final String phoneNumber;

  Map<String, dynamic> toJson() => _$EnterDataModelToJson(this);
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

  final bool isVerified;
  final String otp;

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

  final ConfirmPasswordModel? confirmPassword;

  Map<String, dynamic> toJson() => _$PasswordModelToJson(this);
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

  final String confirmPassword;
  final String newPassword;

  Map<String, dynamic> toJson() => _$ConfirmPasswordModelToJson(this);
}

@collection
@JsonSerializable()
class RegisterModel {
  RegisterModel({
    this.nui = '',
    this.password = '',
    this.email = '',
    this.phone = '',
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Id id = 0;
  late String email;
  late String nui;
  late String password;
  late String phone;

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  RegisterModel copyWith({
    String? nui,
    String? password,
    String? email,
    String? phone,
  }) {
    return RegisterModel(
      nui: nui ?? this.nui,
      password: password ?? this.password,
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }
}
