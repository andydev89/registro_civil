import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ChildrenRelationShipType implements Translatable {
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

  const ChildrenRelationShipType(this.toText);
  final String toText;

  static String? toJson(ChildrenRelationShipType? childrenRelationShip) =>
      childrenRelationShip?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ChildrenRelationShipType.anotherMarriage:
        return l10n.anotherMarriage;
      case ChildrenRelationShipType.inCommon:
        return l10n.inCommon;
      case ChildrenRelationShipType.inCommonToBeRecognized:
        return l10n.inCommonToBeRecognized;
      case ChildrenRelationShipType.foreignersWithoutDigercicRegistration:
        return l10n.foreignersWithoutDigercicRegistration;
      case ChildrenRelationShipType.adults:
        return l10n.adults;
      case ChildrenRelationShipType.ecuadoriansInCommon:
        return l10n.ecuadoriansInCommon;
      case ChildrenRelationShipType.ecuadoriansInCommonToBeRecognized:
        return l10n.ecuadoriansInCommonToBeRecognized;
    }
  }
}
