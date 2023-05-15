import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ChangeOfNameType implements Translatable {
  @JsonValue('CHANGE_NAMES')
  changeOfProperName('CHANGE_NAMES'),
  @JsonValue('CHANGE_ORDER')
  disruptOrder('CHANGE_ORDER'),
  @JsonValue('DELETE_ONE_NAME')
  deleteOneWhenMoreThanTwoAreRecorded('DELETE_ONE_NAME'),
  @JsonValue('ADD_ONE_NAME')
  increaseWhenItIsWithASingleName('ADD_ONE_NAME');

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
