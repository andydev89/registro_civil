import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'payment_service_judgments_notarial_acts_model.g.dart';
part 'payment_service_judgments_notarial_acts_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class PaymentServiceJudgmentsNotarialActsModel {
  PaymentServiceJudgmentsNotarialActsModel({
    @FormArrayAnnotation<bool>(
      validators: [atLeastOneElementValidator],
    )
        required this.types,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
  });

  factory PaymentServiceJudgmentsNotarialActsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentServiceJudgmentsNotarialActsModelFromJson(json);

  final List<bool> types;
  final LocationModel province;
  final AgencyModel agency;

  Map<String, dynamic> toJson() =>
      _$PaymentServiceJudgmentsNotarialActsModelToJson(this);
}
