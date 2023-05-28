import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'enter_email_model.gform.dart';
part 'enter_email_model.freezed.dart';
part 'enter_email_model.g.dart';

@ReactiveFormAnnotation()
@freezed
class EnterEmailModel with _$EnterEmailModel {
  const factory EnterEmailModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        emailValidator,
      ],
    )
    @Default('')
    String email,
  }) = _EnterEmailModel;

  const EnterEmailModel._();

  factory EnterEmailModel.fromJson(Map<String, dynamic> json) =>
      _$EnterEmailModelFromJson(json);
}
