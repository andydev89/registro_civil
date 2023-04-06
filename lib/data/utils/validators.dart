import 'package:libphonenumber/libphonenumber.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/validators/validations_message_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

Map<String, dynamic>? ecuadorDniValidator(AbstractControl<dynamic> control) {
  final idNumber = control.value as String?;
  if (idNumber == null || idNumber.isEmpty) return null;
  if (idNumber.length != 10) return null;
  // Check that the first two digits correspond to a valid province code
  final provinceCode = idNumber.substring(0, 2);
  final validProvinceCodes = <String, String>{
    '01': 'Azuay',
    '02': 'Bolívar',
    '03': 'Cañar',
    '04': 'Carchi',
    '05': 'Cotopaxi',
    '06': 'Chimborazo',
    '07': 'El Oro',
    '08': 'Esmeraldas',
    '09': 'Guayas',
    '10': 'Imbabura',
    '11': 'Loja',
    '12': 'Los Ríos',
    '13': 'Manabí',
    '14': 'Morona Santiago',
    '15': 'Napo',
    '16': 'Pastaza',
    '17': 'Pichincha',
    '18': 'Tungurahua',
    '19': 'Zamora Chinchipe',
    '20': 'Galápagos',
    '21': 'Sucumbíos',
    '22': 'Orellana',
    '23': 'Santo Domingo de los Tsáchilas',
    '24': 'Santa Elena',
  };
  if (!validProvinceCodes.containsKey(provinceCode)) {
    return {ValidationsMessageEnum.invalidProvinceCode.toText: true};
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
    return {ValidationsMessageEnum.invalidDni.toText: true};
  }
  return null;
}

Map<String, dynamic>? length10Validator(
  AbstractControl<dynamic> control,
) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (value.length != 10) {
    return {ValidationsMessageEnum.length10Error.toText: true};
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
    return {ValidationsMessageEnum.invalidPassword.toText: true};
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
    return {ValidationsMessageEnum.invalidPhoneNumber.toText: true};
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
    return {ValidationsMessageEnum.length6Error.toText: true};
  } else {
    return null;
  }
}

Map<String, dynamic>? conadisNumberValidatorGroup(
  AbstractControl<dynamic> conadisModel,
) {
  final conadis = conadisModel.value as Map<String, dynamic>;
  final isConadis = conadis['conadis'] as bool? ?? false;
  final conadisNumber = conadis['conadisNumber'] as String? ?? '';
  if (!isConadis) {
    (conadisModel as FormGroup).controls['conadisNumber']!
      ..removeError(ValidationMessage.required)
      ..removeError(ValidationsMessageEnum.invalidConadisNumber.toText);
    return null;
  }

  if (isConadis && conadisNumber.isEmpty) {
    (conadisModel as FormGroup)
        .controls['conadisNumber']!
        .setErrors({ValidationMessage.required: true});
    return {ValidationMessage.required: true};
  }
  // Añade aquí la lógica adicional que necesitas para validar conadisNumber
  if (!_validateConadisNumber(conadisNumber)) {
    (conadisModel as FormGroup)
        .controls['conadisNumber']!
        .setErrors({'invalidConadisNumber': true});
    return {ValidationsMessageEnum.invalidConadisNumber.toText: true};
  }
  return null; // Devuelve null si la validación es exitosa
}

bool _validateConadisNumber(String conadisNumber) {
  // Añade aquí la lógica adicional que necesitas para validar conadisNumber
  // TODO(laroca1994): buscar validacion de numero conadis
  final isValid = RegExp(r'^\d{7,}$').hasMatch(conadisNumber);
  if (!isValid) return false;
  return true;
}

Map<String, dynamic>? atLeastOneElementValidator(
    AbstractControl<dynamic> control) {
  final value = control.value as List<bool?>;
  var hasTrueElement = false;
  for (final element in value) {
    if (element ?? false) {
      hasTrueElement = true;
      break;
    }
  }

  if (!hasTrueElement) {
    return {ValidationsMessageEnum.atLeastOneElement.toText: true};
  }
  return null;
}

Map<String, String Function(dynamic error)> validationMessage(
  AppLocalizations l10n,
) =>
    {
      ValidationMessage.required: (error) => l10n.campoReq,
      ValidationMessage.email: (error) => l10n.intrudcirCorrVal,
      ValidationMessage.mustMatch: (error) => l10n.passwordCoi,
      ValidationsMessageEnum.invalidDni.toText: (error) =>
          l10n.intrducirNumIdeVal,
      ValidationsMessageEnum.length10Error.toText: (error) =>
          l10n.introducirNum10Dig,
      ValidationsMessageEnum.invalidProvinceCode.toText: (error) =>
          l10n.introducirCodProVal,
      ValidationsMessageEnum.invalidPassword.toText: (error) =>
          l10n.password8Car,
      ValidationsMessageEnum.invalidPhoneNumber.toText: (error) =>
          l10n.intrudcirNumTelVal,
      ValidationsMessageEnum.length6Error.toText: (error) =>
          l10n.introducirNum6Dig,
      ValidationsMessageEnum.invalidConadisNumber.toText: (error) =>
          l10n.introducirNum6Dig,
      ValidationsMessageEnum.atLeastOneElement.toText: (error) =>
          l10n.debeSelAlMenUnElem,
    };
