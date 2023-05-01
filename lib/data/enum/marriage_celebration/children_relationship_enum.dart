import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ChildrenRelationShip implements Translatable {
  anotherMarriage('ANOTHER_MARRIAGE'),
  inCommon('IN_COMMON'),
  inCommonToBeRecognized('IN_COMMON_TO_BE_RECOGNIZED'),
  foreignersWithoutDigercicRegistration(
    'FOREIGNERS_WITHOUT_DIGERCIC_REGISTRATION',
  ),
  adults('ADULTS'),
  ecuadoriansInCommon('ECUADORIANS_IN_COMMON'),
  ecuadoriansInCommonToBeRecognized('ECUADORIANS_IN_COMMON_TO_BE_RECOGNIZED');

  const ChildrenRelationShip(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ChildrenRelationShip.anotherMarriage:
        return l10n.anotherMarriage;
      case ChildrenRelationShip.inCommon:
        return l10n.inCommon;
      case ChildrenRelationShip.inCommonToBeRecognized:
        return l10n.inCommonToBeRecognized;
      case ChildrenRelationShip.foreignersWithoutDigercicRegistration:
        return l10n.foreignersWithoutDigercicRegistration;
      case ChildrenRelationShip.adults:
        return l10n.adults;
      case ChildrenRelationShip.ecuadoriansInCommon:
        return l10n.ecuadoriansInCommon;
      case ChildrenRelationShip.ecuadoriansInCommonToBeRecognized:
        return l10n.ecuadoriansInCommonToBeRecognized;
    }
  }
}
