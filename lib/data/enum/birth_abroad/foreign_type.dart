import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ForeignType implements Translatable {
  @JsonValue('RESIDENT')
  resident('RESIDENT'),
  @JsonValue('NO_RESIDENT')
  noResident('NO_RESIDENT');

  const ForeignType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ForeignType.resident:
        return l10n.residente;
      case ForeignType.noResident:
        return l10n.noResidente;
    }
  }
}
