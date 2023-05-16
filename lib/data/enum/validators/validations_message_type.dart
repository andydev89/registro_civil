import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ValidationsMessageType implements Translatable {
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

  const ValidationsMessageType(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ValidationsMessageType.invalidDni:
        return l10n.intrducirNumIdeVal;
      case ValidationsMessageType.length10Error:
        return l10n.introducirNum10Dig;
      case ValidationsMessageType.invalidProvinceCode:
        return l10n.introducirCodProVal;
      case ValidationsMessageType.invalidPassword:
        return l10n.password8Car;
      case ValidationsMessageType.invalidPhoneNumber:
        return l10n.intrudcirNumTelVal;
      case ValidationsMessageType.length6Error:
        return l10n.introducirNum6Dig;
      case ValidationsMessageType.invalidConadisNumber:
        return l10n.conadisNumError;
      case ValidationsMessageType.atLeastOneElement:
        return l10n.debeSelAlMenUnElem;
      case ValidationsMessageType.invalidCode:
        return l10n.invalidCode;
      case ValidationsMessageType.invalidNombreApellido:
        return l10n.escribaNomApe;
      case ValidationsMessageType.seleccionarArchivo:
        return l10n.debeSelArc;
      case ValidationsMessageType.notRepeted:
        return l10n.noRepetir;
    }
  }
}
