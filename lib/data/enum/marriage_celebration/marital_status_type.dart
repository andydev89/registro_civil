import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum MaritalStatusType implements Translatable {
  @JsonValue('SINGLE')
  single('SINGLE'),
  @JsonValue('DIVORCED')
  divorced('DIVORCED'),
  @JsonValue('WIDOWER')
  widower('WIDOWER'),
  @JsonValue('COMMON_LAW_MARRIAGE')
  commonLawMarriage('COMMON_LAW_MARRIAGE'),
  @JsonValue('NON_RESIDENT_PARTNER')
  nonResidentPartner('NON_RESIDENT_PARTNER');

  const MaritalStatusType(this.toText);
  final String toText;

  // static String toJson(MaritalStatusType? maritalStatus) =>
  //     maritalStatus?.toText ?? '';

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case MaritalStatusType.single:
        return l10n.single;
      case MaritalStatusType.divorced:
        return l10n.divorced;
      case MaritalStatusType.widower:
        return l10n.widower;
      case MaritalStatusType.commonLawMarriage:
        return l10n.commonLawMarriage;
      case MaritalStatusType.nonResidentPartner:
        return l10n.nonResidentPartner;
    }
  }
}
