import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'client_data_to_pay_model.gform.dart';

@ReactiveFormAnnotation()
class ClientDataToPayModel {
  ClientDataToPayModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.name,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.lastName,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.address,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.city,
    @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [
        phoneNumberEcuadorValidation,
      ],
    )
        required this.phone,
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        required this.email,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.postalCode,
  });

  final String name;
  final String lastName;
  final String address;
  final LocationModel province;
  final LocationModel city;
  final String phone;
  final String email;
  final int postalCode;
}
