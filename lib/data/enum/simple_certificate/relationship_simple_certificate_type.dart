import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RelationshipSimpleCertificateType implements Translatable {
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

  const RelationshipSimpleCertificateType(this.toText);
  final String toText;

  static String? toJson(RelationshipSimpleCertificateType? type) {
    return type?.toText;
  }

  static List<RelationshipSimpleCertificateType> get list => [
        RelationshipSimpleCertificateType.fatherMotherDeceased,
        RelationshipSimpleCertificateType.son,
        RelationshipSimpleCertificateType.spouse,
        RelationshipSimpleCertificateType.coexistent,
      ];

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case RelationshipSimpleCertificateType.fatherMotherDeceased:
        return l10n.padreMadreFallecidos;
      case RelationshipSimpleCertificateType.son:
        return l10n.hijo;
      case RelationshipSimpleCertificateType.spouse:
        return l10n.conyuge;
      case RelationshipSimpleCertificateType.coexistent:
        return l10n.conviviente;
      case RelationshipSimpleCertificateType.staff:
        return throw Exception('No se puede traducir el valor staff');
    }
  }
}
