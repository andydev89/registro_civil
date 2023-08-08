import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ElectronicSignatureState implements Translatable {
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('REJECTED')
  rejected('REJECTED'),
  @JsonValue('PENDING')
  pending('PENDING');

  const ElectronicSignatureState(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ElectronicSignatureState.pending:
        return l10n.pendiente;
      case ElectronicSignatureState.approved:
        return l10n.aprobado;
      case ElectronicSignatureState.rejected:
        return l10n.rechazado;
    }
  }
}
