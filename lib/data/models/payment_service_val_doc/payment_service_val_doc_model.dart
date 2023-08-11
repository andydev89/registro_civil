import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'payment_service_val_doc_model.g.dart';
part 'payment_service_val_doc_model.gform.dart';
part 'payment_service_val_doc_model.freezed.dart';

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

@ReactiveFormAnnotation()
@Freezed()
class PaymentValidationDocModel with _$PaymentValidationDocModel {
  const factory PaymentValidationDocModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
      ],
    )
    required String user,
    @FormControlAnnotation(
      validators: [
        requiredValidator,
      ],
    )
    required String agency,
    @FormControlAnnotation(
      validators: [
        requiredValidator,
      ],
    )
    required String province,
  }) = _PaymentValidationDocModel;

  const PaymentValidationDocModel._();

  factory PaymentValidationDocModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentValidationDocModelFromJson(json);
}
