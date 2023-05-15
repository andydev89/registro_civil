import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ValidationsMessageEnum implements Translatable {
  invalidDni('invalidDni'),
  length10Error('length10Error'),
  invalidProvinceCode('invalidProvinceCode'),
  invalidPassword('invalidPassword'),
  invalidPhoneNumber('invalidPhoneNumber'),
  length6Error('length6Error'),
  invalidConadisNumber('invalidConadisNumber'),
  atLeastOneElement('atLeastOneElement'),
  invalidCode('invalidCode'),
  invalidNombreApellido('introduceNombreApellido'),
  seleccionarArchivo('seleccionarArchivo'),
  notRepeted('notRepeted'),
  ;

  const ValidationsMessageEnum(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ValidationsMessageEnum.invalidDni:
        return l10n.intrducirNumIdeVal;
      case ValidationsMessageEnum.length10Error:
        return l10n.introducirNum10Dig;
      case ValidationsMessageEnum.invalidProvinceCode:
        return l10n.introducirCodProVal;
      case ValidationsMessageEnum.invalidPassword:
        return l10n.password8Car;
      case ValidationsMessageEnum.invalidPhoneNumber:
        return l10n.intrudcirNumTelVal;
      case ValidationsMessageEnum.length6Error:
        return l10n.introducirNum6Dig;
      case ValidationsMessageEnum.invalidConadisNumber:
        return l10n.conadisNumError;
      case ValidationsMessageEnum.atLeastOneElement:
        return l10n.debeSelAlMenUnElem;
      case ValidationsMessageEnum.invalidCode:
        return l10n.invalidCode;
      case ValidationsMessageEnum.invalidNombreApellido:
        return l10n.escribaNomApe;
      case ValidationsMessageEnum.seleccionarArchivo:
        return l10n.debeSelArc;
      case ValidationsMessageEnum.notRepeted:
        return l10n.noRepetir;
    }
  }
}
