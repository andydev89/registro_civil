// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/change_of_name/change_of_name_type.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'change_of_name_model.g.dart';
part 'change_of_name_model.gform.dart';
part 'change_of_name_model.freezed.dart';

@ReactiveFormAnnotation()
@freezed
class ChangeOfNameModel with _$ChangeOfNameModel {
  const factory ChangeOfNameModel({
    String? nui,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(name: 'type')
        required ChangeOfNameType changeOfNameType,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
        AgencyModel? agency,
    @FormControlAnnotation(validators: [requiredValidator])
        required String firstName,
    @FormControlAnnotation(validators: [requiredValidator])
        required String secondName,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
        String? resultingName,
    @FormControlAnnotation<String>()
    @JsonKey(name: 'observation')
        String? observations,
    @FormControlAnnotation<String>(validators: [requiredValidator])
        required String document,
  }) = _ChangeOfNameModel;

  const ChangeOfNameModel._();

  factory ChangeOfNameModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeOfNameModelFromJson(json);

  @JsonKey(
    includeToJson: true,
  )
  String get agencyId => agency!.id;
}
