// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
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
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        lengthMax20Validator,
        lengthMin2Validator,
      ],
    )
    @JsonKey(name: 'visa')
    required String visa,
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        lengthMin2Validator,
      ],
    )
    @JsonKey(name: 'email')
    required String email,
  }) = _CedulacionExtpVModel;

  const CedulacionExtpVModel._();

  factory CedulacionExtpVModel.fromJson(Map<String, dynamic> json) =>
      _$CedulacionExtpVModelFromJson(json);
}
