import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';

part 'change_password_model.g.dart';
part 'change_password_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class ChangePasswordModel {
  ChangePasswordModel(this.confirmPassword);

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);

  final ConfirmPasswordModel? confirmPassword;
}
