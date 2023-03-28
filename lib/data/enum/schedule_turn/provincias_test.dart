// TODO(alejandro): esta clase se quitara y se podnar un objeto q venga del back
//esto es momentaneo apra probar
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
// import 'package:registro_civil_apk/l10n/l10n.dart';

enum ProvinciasTest implements Translatable {
  ///Conyugue o conviviente
  province1('Provincia 1'),
  province2('Provincia 2'),
  province3('Provincia 3'),
  province4('Provincia 4'),
  province5('Provincia 5');

  const ProvinciasTest(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    // final l10n = context.l10n;
    switch (this) {
      case province1:
        return 'Provincia 1';
      case province2:
        return 'Provincia 2';
      case province3:
        return 'Provincia 3';
      case province4:
        return 'Provincia 4';
      case province5:
        return 'Provincia 5';
    }
  }
}
