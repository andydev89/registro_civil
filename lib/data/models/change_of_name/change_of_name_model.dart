import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/change_of_name/change_of_name.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'change_of_name_model.g.dart';
part 'change_of_name_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class ChangeOfNameModel {
  ChangeOfNameModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.changeOfNameType,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name1,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name2,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.resultingName,
    @FormControlAnnotation<String>() required this.observations,
    @FormControlAnnotation<String>(validators: [requiredValidator])
        required this.document,
  });

  factory ChangeOfNameModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeOfNameModelFromJson(json);

  final AgencyModel agency;
  final ChangeOfNameType changeOfNameType;
  final String name1;
  final String name2;
  final String resultingName;
  final String observations;

  ///Document in base 64
  final String document;

  Map<String, dynamic> toJson() => _$ChangeOfNameModelToJson(this);
}
