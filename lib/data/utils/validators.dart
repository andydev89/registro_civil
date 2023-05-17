import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:libphonenumber/libphonenumber.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

// true validator
Map<String, dynamic>? trueValidator(AbstractControl<dynamic> control) {
  final value = control.value as bool?;
  if (value == null || !value) {
    return {ValidationMessage.requiredTrue: true};
  }
  return null;
}

Map<String, dynamic>? documentFileRequiredValidator(
  AbstractControl<dynamic> control,
) {
  final document = control.value as Document?;
  if (document == null || document.file.isEmpty) {
    return {ValidationMessage.required: true};
  }
  return null;
}

Map<String, dynamic>? notRepeat(
  AbstractControl<dynamic> control,
  List<String> list,
) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (list.contains(value)) {
    return {ValidationsMessageType.notRepeted.toText: true};
  }
  return null;
}

// validate que tenga 1 nombre y 2 apellidos minimo
Map<String, dynamic>? nameValidator(AbstractControl<dynamic> control) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  final names = value.trim().split(' ');
  if (names.length < 3) {
    return {ValidationsMessageType.invalidNombreApellido.toText: true};
  }
  return null;
}

Map<String, dynamic>? ecuadorDniValidator(AbstractControl<dynamic> control) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (value.length != 10) return null;
  // Check that the first two digits correspond to a valid province code
  if (!_provinceCode(value)) {
    return {ValidationsMessageType.invalidProvinceCode.toText: true};
  }
  // Calculate the verification digit
  //and compare it with the 10th digit of the ID number

  if (!_verificationDigit(value)) {
    return {ValidationsMessageType.invalidDni.toText: true};
  }
  return null;
}

bool _provinceCode(String value) {
  final provinceCode = value.substring(0, 2);
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
  return validProvinceCodes.containsKey(provinceCode);
}

bool _verificationDigit(String value) {
  final oddDigits = <int>[
    int.parse(value[0]),
    int.parse(value[2]),
    int.parse(value[4]),
    int.parse(value[6]),
    int.parse(value[8])
  ];
  final evenDigits = <int>[
    int.parse(value[1]),
    int.parse(value[3]),
    int.parse(value[5]),
    int.parse(value[7])
  ];
  final oddSum = oddDigits
      .map((digit) => (digit * 2 > 9) ? digit * 2 - 9 : digit * 2)
      .reduce((a, b) => a + b);
  final evenSum = evenDigits.reduce((a, b) => a + b);
  final totalSum = oddSum + evenSum;
  final verificationDigit = (totalSum % 10 == 0) ? 0 : 10 - (totalSum % 10);
  return verificationDigit == int.parse(value[9]);
}

Map<String, dynamic>? length10Validator(
  AbstractControl<dynamic> control,
) {
  final value = control.value as String?;
  if (value == null || value.isEmpty) return null;
  if (value.length != 10) {
    return {ValidationsMessageType.length10Error.toText: true};
  } else {
    return null;
  }
}

Future<bool?> validateNuiAsync(
  String? nui,
  WidgetRef ref,
) async {
  if (nui == null ||
      nui.isEmpty ||
      nui.length != 10 ||
      !_provinceCode(nui) ||
      !_verificationDigit(nui)) return null;
  final api = ref.read(apiProvider);
  final response = await api.registerValidateNui(NuiModel(nui: nui));
  return response.success;
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
    return {ValidationsMessageType.invalidPassword.toText: true};
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
    return {ValidationsMessageType.invalidPhoneNumber.toText: true};
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
    return {ValidationsMessageType.length6Error.toText: true};
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
      ..removeError(ValidationsMessageType.invalidConadisNumber.toText)
      ..value = '';
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
        .setErrors({ValidationsMessageType.invalidConadisNumber.toText: true});
    return {ValidationsMessageType.invalidConadisNumber.toText: true};
  }
  return null; // Devuelve null si la validación es exitosa
}

Map<String, dynamic>? childrenRelationshipValidatorGroup(
  AbstractControl<dynamic> partnerModel,
) {
  final children = partnerModel.value as Map<String, dynamic>;
  final hasChildren = children['hasChildren'] as Binary? ?? Binary.no;
  final childrenRelationship =
      children['childrenRelationship'] as ChildrenRelationShipType?;
  if (hasChildren == Binary.no) {
    (partnerModel as FormGroup).controls['childrenRelationship']!
      ..removeError(ValidationMessage.required)
      ..removeError(ValidationsMessageType.invalidConadisNumber.toText)
      ..value = null;
    return null;
  }

  if (hasChildren == Binary.yes && childrenRelationship == null) {
    (partnerModel as FormGroup)
        .controls['childrenRelationship']!
        .setErrors({ValidationMessage.required: true});
    return {ValidationMessage.required: true};
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
  AbstractControl<dynamic> control,
) {
  final value = control.value as List<bool?>;
  var hasTrueElement = false;
  for (final element in value) {
    if (element ?? false) {
      hasTrueElement = true;
      break;
    }
  }

  if (!hasTrueElement) {
    return {ValidationsMessageType.atLeastOneElement.toText: true};
  }
  return null;
}

Map<String, String Function(dynamic error)> validationMessage(
  BuildContext context,
) {
  final l10n = context.l10n;
  return {
    ValidationMessage.required: (error) => l10n.campoReq,
    ValidationMessage.email: (error) => l10n.intrudcirCorrVal,
    ValidationMessage.mustMatch: (error) => l10n.passwordCoi,
    ValidationMessage.requiredTrue: (error) => l10n.campoReq,
    ValidationsMessageType.invalidCode.toText: (error) => l10n.invalidCode,
  }..addEntries(
      ValidationsMessageType.values
          .map((e) => MapEntry(e.toText, (_) => e.translate(context))),
    );
}
