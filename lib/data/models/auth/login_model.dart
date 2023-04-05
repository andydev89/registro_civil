import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'login_model.g.dart';
part 'login_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class LoginModel {
  LoginModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        // ecuadorDniValidator,
        // length10Validator,
      ],
    )
        this.identification = '',
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        passwordValidator,
      ],
    )
        this.password = '',
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  final String identification;
  final String password;
}
