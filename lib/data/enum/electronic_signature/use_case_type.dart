import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum SignatureUseCaseType implements Translatable {
  @JsonValue('PUBLIC_PROCUREMENT_SYSTEM')
  publicProcurementSystem('PUBLIC_PROCUREMENT_SYSTEM'),
  @JsonValue('QUIPUX_SITRA')
  quipuxSitra('QUIPUX_SITRA'),
  @JsonValue('SUPERINTENDENCIES_COMPANIES')
  superintendencyCompanies('SUPERINTENDENCIES_COMPANIES'),
  @JsonValue('DOCUMENT_SIGNING')
  documentSigning('DOCUMENT_SIGNING'),
  @JsonValue('JUDICIARY_COUNCIL')
  judiciaryCouncil('JUDICIARY_COUNCIL'),
  @JsonValue('REVIT_DEATHS')
  revitDeath('REVIT_DEATHS');

  const SignatureUseCaseType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case SignatureUseCaseType.publicProcurementSystem:
        return l10n.tipoCasoContratPublica;
      case SignatureUseCaseType.quipuxSitra:
        return l10n.tipoCasoQuipux;
      case SignatureUseCaseType.superintendencyCompanies:
        return l10n.tipoCasoEmpresaSIntendencia;
      case SignatureUseCaseType.documentSigning:
        return l10n.tipoCasoDocumentos;
      case SignatureUseCaseType.judiciaryCouncil:
        return l10n.tipoCasoConsejoJudicatura;
      case SignatureUseCaseType.revitDeath:
        return l10n.tipoCasoRevitDefunciones;
    }
  }
}
