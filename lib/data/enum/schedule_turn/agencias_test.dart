// TODO(alejandro): esta clase se quitara y se podnar un objeto q venga del back
//esto es momentaneo apra probar
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
// import 'package:registro_civil_apk/l10n/l10n.dart';

enum AgenciasTest implements Translatable {
  ///Conyugue o conviviente
  agencia1('Agencia 1'),
  agencia2('Agencia 2'),
  agencia3('Agencia 3'),
  agencia4('Agencia 4'),
  agencia5('Agencia 5');

  const AgenciasTest(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    // final l10n = context.l10n;
    switch (this) {
      case agencia1:
        return 'Agencia 1';
      case agencia2:
        return 'Agencia 2';
      case agencia3:
        return 'Agencia 3';
      case agencia4:
        return 'Agencia 4';
      case agencia5:
        return 'Agencia 5';
    }
  }
}
