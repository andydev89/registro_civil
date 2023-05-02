import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum MaritalStatus implements Translatable {
  single('SINGLE'),
  divorced('DIVORCED'),
  widower('WIDOWER'),
  commonLawMarriage('COMMON_LAW_MARRIAGE'),
  nonResidentPartner('NON_RESIDENT_PARTNER');

  const MaritalStatus(this.toText);
  final String toText;

  static String toJson(MaritalStatus? maritalStatus) =>
      maritalStatus?.toText ?? '';

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case MaritalStatus.single:
        return l10n.single;
      case MaritalStatus.divorced:
        return l10n.divorced;
      case MaritalStatus.widower:
        return l10n.widower;
      case MaritalStatus.commonLawMarriage:
        return l10n.commonLawMarriage;
      case MaritalStatus.nonResidentPartner:
        return l10n.nonResidentPartner;
    }
  }
}
