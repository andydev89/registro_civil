import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum TransactionStatusType implements Translatable {
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case approved:
        return l10n.aprobado;
      case rejected:
        return l10n.rechazado;
    }
  }
}
