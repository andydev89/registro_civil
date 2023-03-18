import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'email_model.g.dart';
part 'email_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class EmailModel {
  EmailModel({
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        this.email = '',
  });

  factory EmailModel.fromJson(Map<String, dynamic> json) =>
      _$EmailModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmailModelToJson(this);

  final String email;
}
