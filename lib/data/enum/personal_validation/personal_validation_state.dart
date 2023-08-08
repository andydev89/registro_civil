import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PersonalValidationState implements Translatable {
  @JsonValue('REQUESTING')
  requesting('REQUESTING'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('CANCELLED')
  cancelled('CANCELLED'),
  @JsonValue('PENDING')
  pending('PENDING');

  const PersonalValidationState(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PersonalValidationState.pending:
        return l10n.pendiente;
      case PersonalValidationState.approved:
        return l10n.aprobado;
      case PersonalValidationState.cancelled:
        return l10n.cancelado;
      case PersonalValidationState.requesting:
        return l10n.solicitando;
    }
  }
}
