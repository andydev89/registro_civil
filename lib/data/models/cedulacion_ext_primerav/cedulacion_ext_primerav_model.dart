import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
//import 'package:registro_civil_apk/data/enum/change_of_name/change_of_name_type.dart';
//import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
//import 'package:registro_civil_apk/data/utils/validators.dart';
part 'cedulacion_ext_primerav_model.g.dart';
part 'cedulacion_ext_primerav_model.gform.dart';
part 'cedulacion_ext_primerav_model.freezed.dart';

@ReactiveFormAnnotation()
@freezed
class CedulacionExtpVModel with _$CedulacionExtpVModel {
  const factory CedulacionExtpVModel({
    @FormControlAnnotation(validators: []) required String firstName,
    @FormControlAnnotation(
      validators: [],
    )
    required String secondName,
  }) = _CedulacionExtpVModel;

  const CedulacionExtpVModel._();

  factory CedulacionExtpVModel.fromJson(Map<String, dynamic> json) =>
      _$CedulacionExtpVModelFromJson(json);
}

final visaform = FormGroup({
  'visa': FormControl<String>(
    validators: [
      Validators.composeOR([
        Validators.email,
        // Validators.pattern(phonePattern),
      ])
    ],
  ),
});
