import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ProcessStatus implements Translatable {
  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('APPROVED')
  approved('APPROVED'),
  @JsonValue('IN_PROGRESS')
  inProgress('IN_PROGRESS'),
  @JsonValue('REJECTED')
  rejected('REJECTED');

  const ProcessStatus(this.toText);
  final String toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ProcessStatus.pending:
        return l10n.pendiente;
      case ProcessStatus.approved:
        return l10n.aprobado;
      case ProcessStatus.rejected:
        return l10n.rechazado;
      case ProcessStatus.inProgress:
        return l10n.enProceso;
    }
  }
}
