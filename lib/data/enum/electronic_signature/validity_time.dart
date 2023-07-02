import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum SignatureValidityTimeType implements Translatable {
  @JsonValue(1)
  oneYear(1),
  @JsonValue(2)
  twoYears(2),
  @JsonValue(3)
  threeYears(3),
  @JsonValue(4)
  fourYears(4),
  @JsonValue(5)
  fiveYears(5);

  const SignatureValidityTimeType(this.text);
  final int text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    return l10n.nYears(text);
  }
}
