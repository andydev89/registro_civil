import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'enter_nui_model.gform.dart';
part 'enter_nui_model.freezed.dart';
part 'enter_nui_model.g.dart';

@ReactiveFormAnnotation()
@freezed
class EnterNuiModel with _$EnterNuiModel {
  const factory EnterNuiModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
    // @Default('')
    required String nui,
  }) = _EnterNuiModel;

  const EnterNuiModel._();

  factory EnterNuiModel.fromJson(Map<String, dynamic> json) =>
      _$EnterNuiModelFromJson(json);
}
