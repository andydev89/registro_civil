import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum MaritalStatus implements Translatable {
  @JsonValue('SINGLE')
  single,
  @JsonValue('DIVORCED')
  divorced,
  @JsonValue('WIDOWED')
  widowed,
  @JsonValue('COMMON_LAW_MARRIAGE')
  commonLawMarriage,
  @JsonValue('NON_RESIDENT_PARTNER')
  nonResidentPartner;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case MaritalStatus.single:
        return l10n.single;
      case MaritalStatus.divorced:
        return l10n.divorced;
      case MaritalStatus.widowed:
        return l10n.widowed;
      case MaritalStatus.commonLawMarriage:
        return l10n.commonLawMarriage;
      case MaritalStatus.nonResidentPartner:
        return l10n.nonResidentPartner;
    }
  }
}
