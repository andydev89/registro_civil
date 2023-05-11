import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ChangeOfNameType implements Translatable {
  changeOfProperName('Cambio de nombre propio'),
  disruptOrder('Alterar el orden'),
  deleteOneWhenMoreThanTwoAreRecorded('Suprimir uno cuando conste mas de dos'),
  increaseWhenItIsWithASingleName('Aumentar cuando conste con un solo nombre');

  const ChangeOfNameType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ChangeOfNameType.changeOfProperName:
        return l10n.cambioNombrePropio;
      case ChangeOfNameType.disruptOrder:
        return l10n.alterarOrden;
      case ChangeOfNameType.deleteOneWhenMoreThanTwoAreRecorded:
        return l10n.suprimirUnoCuandoConsteMasDeDos;
      case ChangeOfNameType.increaseWhenItIsWithASingleName:
        return l10n.aumentarCuandoConsteConUnSoloNombre;
    }
  }
}
