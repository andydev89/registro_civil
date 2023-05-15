import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ChildrenRelationShip implements Translatable {
  @JsonValue('ANOTHER_MARRIAGE')
  anotherMarriage('ANOTHER_MARRIAGE'),
  @JsonValue('IN_COMMON')
  inCommon('IN_COMMON'),
  @JsonValue('IN_COMMON_TO_BE_RECOGNIZED')
  inCommonToBeRecognized('IN_COMMON_TO_BE_RECOGNIZED'),
  @JsonValue('FOREIGNERS_WITHOUT_DIGERCIC_REGISTRATION')
  foreignersWithoutDigercicRegistration(
    'FOREIGNERS_WITHOUT_DIGERCIC_REGISTRATION',
  ),
  @JsonValue('ADULTS')
  adults('ADULTS'),
  @JsonValue('ECUADORIANS_IN_COMMON')
  ecuadoriansInCommon('ECUADORIANS_IN_COMMON'),
  @JsonValue('ECUADORIANS_IN_COMMON_TO_BE_RECOGNIZED')
  ecuadoriansInCommonToBeRecognized('ECUADORIANS_IN_COMMON_TO_BE_RECOGNIZED');

  const ChildrenRelationShip(this.toText);
  final String toText;

  static String? toJson(ChildrenRelationShip? childrenRelationShip) =>
      childrenRelationShip?.toText;

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
