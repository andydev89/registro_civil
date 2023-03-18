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
        lengthDniValidatorValidator,
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
class SecurityQuestionsModel {
  SecurityQuestionsModel({
    @FormControlAnnotation(validators: [requiredValidator])
        this.cityMetParents = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.nameElderCousin = '',
  });

  factory SecurityQuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$SecurityQuestionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityQuestionsModelToJson(this);

  final String cityMetParents;
  final String nameElderCousin;

  bool verifyAnswers(String city, String cousin) {
    return city.toLowerCase() == cityMetParents.toLowerCase() &&
        nameElderCousin.toLowerCase() == cousin.toLowerCase();
  }
}

@JsonSerializable()
@ReactiveFormAnnotation()
class EnterDataModel {
  EnterDataModel({
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        this.email = '',
    this.confirmPassword,
  });

  factory EnterDataModel.fromJson(Map<String, dynamic> json) =>
      _$EnterDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$EnterDataModelToJson(this);

  final String email;
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
    NuiModel? nui,
    SecurityQuestionsModel? securityQuestions,
    EnterDataModel? enterData,
  })  : nui = nui ?? NuiModel(),
        securityQuestions = securityQuestions ?? SecurityQuestionsModel(),
        enterData = enterData ?? EnterDataModel();

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);

  final NuiModel nui;
  final SecurityQuestionsModel securityQuestions;
  final EnterDataModel enterData;

  RegisterModel copyWith({
    NuiModel? nui,
    SecurityQuestionsModel? securityQuestions,
    EnterDataModel? enterData,
  }) {
    return RegisterModel(
      nui: nui ?? this.nui,
      securityQuestions: securityQuestions ?? this.securityQuestions,
      enterData: enterData ?? this.enterData,
    );
  }
}
