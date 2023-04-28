import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum OutsideEnum implements Translatable {
  atHeadquarters,
  offSite;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case OutsideEnum.atHeadquarters:
        return l10n.atHeadquarters;
      case OutsideEnum.offSite:
        return l10n.offSite;
    }
  }
}
