import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipType implements Translatable {
  ///Conyugue o conviviente
  @JsonValue('PARTNER')
  parner('PARTNER'),
  @JsonValue('CHILD')
  sonOrDaughter('CHILD'),
  @JsonValue('PARENT')
  parent('PARENT');

  const RelationshipType(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case parner:
        return l10n.conyuge;
      case sonOrDaughter:
        return l10n.hijoOHija;
      case parent:
        return l10n.padreOMadre;
    }
  }
}
