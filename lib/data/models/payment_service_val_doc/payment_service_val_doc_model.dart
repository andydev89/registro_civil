import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'payment_service_val_doc_model.g.dart';
part 'payment_service_val_doc_model.gform.dart';

@JsonSerializable()
@ReactiveFormAnnotation()
class PaymentServiceValidacionDocModel {
  PaymentServiceValidacionDocModel({
    @FormControlAnnotation(validators: [requiredValidator])
    required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.agency,
  });

  factory PaymentServiceValidacionDocModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentServiceValidacionDocModelFromJson(json);

  final LocationModel province;
  final AgencyModel agency;

  Map<String, dynamic> toJson() =>
      _$PaymentServiceValidacionDocModelToJson(this);
}
