import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum Binary implements Translatable {
  @JsonValue(true)
  yes(toBool: true),
  @JsonValue(false)
  no(toBool: false);

  const Binary({required this.toBool});
  static bool toJson(Binary? binary) {
    return binary == Binary.yes;
  }

  final bool toBool;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case Binary.yes:
        return l10n.si;
      case Binary.no:
        return 'No';
    }
  }
}
