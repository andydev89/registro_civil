import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum SignatureType implements Translatable {
  @JsonValue('FILE')
  file('FILE'),
  @JsonValue('TOKEN')
  token('TOKEN');

  const SignatureType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case SignatureType.file:
        return l10n.tipoFirmaArchivo;
      case SignatureType.token:
        return l10n.tipoFirmaToken;
    }
  }
}
