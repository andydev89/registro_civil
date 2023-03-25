import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ServiceType implements Translatable {
  ///Cedula
  identificationCard,
  passport;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case identificationCard:
        return l10n.cedula;
      case passport:
        return l10n.pasaporte;
    }
  }
}
