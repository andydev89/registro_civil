import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PersonType implements Translatable {
  @JsonValue('LEGAL_REPRESENTATIVE')
  legalRepresentative('LEGAL_REPRESENTATIVE'),
  @JsonValue('NATURAL_PERSON')
  naturalPerson('NATURAL_PERSON'),
  @JsonValue('COMPANY_MEMBER')
  companyMember('COMPANY_MEMBER');

  const PersonType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PersonType.legalRepresentative:
        return l10n.repreLegalDesc;
      case PersonType.naturalPerson:
        return l10n.personaNaturalDesc;
      case PersonType.companyMember:
        return l10n.miembroEmpresaDesc;
    }
  }
}
