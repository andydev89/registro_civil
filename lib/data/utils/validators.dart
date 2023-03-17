import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

Map<String, dynamic>? ecuadorDniValidator(AbstractControl<dynamic> control) {
  final value = control.value as String;
  final sum = value
      .substring(0, 9)
      .split('')
      .map(int.parse)
      .fold(0, (int sum, int digit) => sum + digit * (10 - digit));
  final checkDigit = 11 - (sum % 11);
  final lastDigit = int.parse(value.substring(9));

  if (checkDigit == 10 && lastDigit == 0 || checkDigit == lastDigit) {
    return null;
  }
  return {'invalidDni': true};
}

Map<String, dynamic>? lengthDniValidatorValidator(
  AbstractControl<dynamic> control,
) {
  final value = control.value as String;
  if (value.length != 10) {
    return {'lengthError': true};
  } else {
    return null;
  }
}

Map<String, dynamic>? passwordsMustMatch(AbstractControl<dynamic> control) {
  final error = {ValidationMessage.mustMatch: true};

  if (control is! FormGroup) {
    return error;
  }

  final password = control.control('newPassword');
  final confirmPassword = control.control('confirmPassword');

  if (password.value != confirmPassword.value) {
    confirmPassword
      ..setErrors(error)
      ..markAsTouched();
  } else {
    confirmPassword.removeError(ValidationMessage.mustMatch);
  }
  return null;
}
