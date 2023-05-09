import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'change_of_name_model.g.dart';
part 'change_of_name_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class ChangeOfNameModel {
  ChangeOfNameModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.changeOfNametype,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name1,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name2,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.resultingName,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.document,
    @FormControlAnnotation<String>() required this.observations,
  });

  factory ChangeOfNameModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeOfNameModelFromJson(json);

  final AgencyModel agency;
  final String changeOfNametype;

  ///Documento en base 64
  final String document;

  final String name1;
  final String name2;
  final String observations;
  final String resultingName;

  Map<String, dynamic> toJson() => _$ChangeOfNameModelToJson(this);
}
