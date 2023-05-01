import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipSimpleCertificateEnum implements Translatable {
  @JsonValue('FATHER_MOTHER_DEATHED')
  fatherMotherDeceased('FATHER_MOTHER_DEATHED'),
  @JsonValue('SON')
  son('SON'),
  @JsonValue('SPOUSE')
  spouse('SPOUSE'),
  @JsonValue('COEXISTENT')
  coexistent('COEXISTENT'),
  @JsonValue('STAFF')
  staff('STAFF');

  const RelationshipSimpleCertificateEnum(this.toText);
  final String toText;

  static String? toJson(RelationshipSimpleCertificateEnum? type) {
    return type?.toText;
  }

  static List<RelationshipSimpleCertificateEnum> get list => [
        RelationshipSimpleCertificateEnum.fatherMotherDeceased,
        RelationshipSimpleCertificateEnum.son,
        RelationshipSimpleCertificateEnum.spouse,
        RelationshipSimpleCertificateEnum.coexistent,
      ];

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case RelationshipSimpleCertificateEnum.fatherMotherDeceased:
        return l10n.padreMadreFallecidos;
      case RelationshipSimpleCertificateEnum.son:
        return l10n.hijo;
      case RelationshipSimpleCertificateEnum.spouse:
        return l10n.conyuge;
      case RelationshipSimpleCertificateEnum.coexistent:
        return l10n.conviviente;
      case RelationshipSimpleCertificateEnum.staff:
        return throw Exception('No se puede traducir el valor staff');
    }
  }
}
