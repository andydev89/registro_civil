import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum MarriageCelebrationType implements Translatable {
  attorney('REPRESENTATIVE'),
  contractingParty('FIRST_PARTNER');

  const MarriageCelebrationType(this.toText);
  final String toText;

  static String? toJson(MarriageCelebrationType? type) {
    return type?.toText;
  }

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case MarriageCelebrationType.attorney:
        return l10n.apoderado;
      case MarriageCelebrationType.contractingParty:
        return l10n.contrayente;
    }
  }
}
