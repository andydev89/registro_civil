import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'create_payment_of_services.g.dart';
part 'create_payment_of_services.freezed.dart';
part 'create_payment_of_services.gform.dart';

@ReactiveFormAnnotation()
@Freezed()
class CreatePaymentofservicesModel with _$CreatePaymentofservicesModel {
  const factory CreatePaymentofservicesModel({
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
    required List<PaymentofservicesModel> services,
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
  }) = _CreatePaymentofservicesModel;

  const CreatePaymentofservicesModel._();

  factory CreatePaymentofservicesModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentofservicesModelFromJson(json);
}
