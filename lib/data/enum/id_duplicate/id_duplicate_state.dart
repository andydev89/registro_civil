import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum IdDuplicateState implements Translatable {
  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SURIERROR')
  suriError('SURIERROR'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('PRINTED')
  printed('PRINTED'),
  @JsonValue('DELIVERED')
  delivered('DELIVERED'),
  @JsonValue('DESTROYED')
  destroyed('DESTROYED');

  const IdDuplicateState(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case IdDuplicateState.pending:
        return l10n.pendiente;
      case IdDuplicateState.suriError:
        return 'Error SURI';
      case IdDuplicateState.inProgress:
        return l10n.enProceso;
      case IdDuplicateState.printed:
        return 'Impreso';
      case IdDuplicateState.delivered:
        return 'Entregado';
      case IdDuplicateState.destroyed:
        return 'Eliminado';

    }
  }
}
