import 'package:libphonenumber/libphonenumber.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

Map<String, dynamic>? ecuadorDniValidator(AbstractControl<dynamic> control) {
  final idNumber = control.value as String?;
  if (idNumber == null || idNumber.isEmpty) return null;
  if (idNumber.length != 10) return null;
  // Check that the first two digits correspond to a valid province code
  final provinceCode = idNumber.substring(0, 2);
  final validProvinceCodes = <String>[
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10'
  ];
  if (!validProvinceCodes.contains(provinceCode)) {
    return {'invalidProvinceCode': true};
  }
  // Calculate the verification digit
  //and compare it with the 10th digit of the ID number
  final oddDigits = <int>[
    int.parse(idNumber[0]),
    int.parse(idNumber[2]),
    int.parse(idNumber[4]),
    int.parse(idNumber[6]),
    int.parse(idNumber[8])
  ];
  final evenDigits = <int>[
    int.parse(idNumber[1]),
    int.parse(idNumber[3]),
    int.parse(idNumber[5]),
    int.parse(idNumber[7])
  ];
  final oddSum = oddDigits
      .map((digit) => (digit * 2 > 9) ? digit * 2 - 9 : digit * 2)
      .reduce((a, b) => a + b);
  final evenSum = evenDigits.reduce((a, b) => a + b);
  final totalSum = oddSum + evenSum;
  final verificationDigit = (totalSum % 10 == 0) ? 0 : 10 - (totalSum % 10);
  if (verificationDigit != int.parse(idNumber[9])) {
    return {'invalidDni': true};
  }
  return null;
}

Map<String, dynamic>? length10Validator(
  AbstractControl<dynamic> control,
) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (value.length != 10) {
    return {'length10Error': true};
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

Map<String, dynamic>? emailValidator(AbstractControl<dynamic> control) {
  return Validators.email(control);
}

// passwordValid

Map<String, dynamic>? passwordValidator(AbstractControl<dynamic> control) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  final passwordRegExp =
      RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\w\d\s:])([^\s]){8,20}$');
  if (!passwordRegExp.hasMatch(value)) {
    return {'invalidPassword': true};
  }
  return null;
}

Future<Map<String, dynamic>?> phoneNumberEcuadorValidation(
  AbstractControl<dynamic> control,
) async {
  final value = control.value as String?;

  if (value == null || value.isEmpty) return null;
  final isValid = await PhoneNumberUtil.isValidPhoneNumber(
    phoneNumber: value,
    isoCode: 'EC', // Código ISO del país (Ecuador)
  );
  if (!isValid!) {
    return {'invalidPhoneNumber': true};
  }
  return null;
}

// validar que un bool sea true
Map<String, dynamic>? requiredTrueValidator(AbstractControl<dynamic> control) {
  return Validators.requiredTrue(control);
}

// validar que un String tenga lenght ==6
Map<String, dynamic>? length6Validator(AbstractControl<dynamic> control) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (value.length != 6) {
    return {'length6Error': true};
  } else {
    return null;
  }
}
