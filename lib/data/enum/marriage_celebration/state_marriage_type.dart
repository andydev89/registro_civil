import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum StateMarriageType implements Translatable {
  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED'),
  @JsonValue('FINALIZED')
  finalized('FINALIZED');

  const StateMarriageType(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case StateMarriageType.pending:
        return l10n.pendiente;
      case StateMarriageType.inProgress:
        return l10n.enProceso;
      case StateMarriageType.approved:
        return l10n.aprobado;
      case StateMarriageType.rejected:
        return l10n.rechazado;
      case StateMarriageType.finalized:
        return l10n.finalizado;
    }
  }
}

enum StateDocument implements Translatable {
  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED');

  const StateDocument(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case StateDocument.pending:
        return l10n.pendiente;
      case StateDocument.approved:
        return l10n.aprobado;
      case StateDocument.rejected:
        return l10n.rechazado;
    }
  }
}
