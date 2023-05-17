import 'package:registro_civil_apk/l10n/l10n.dart';

enum SimpleCertificateType {
  familiar,
  personal,
}

extension SimpleCertificateRadioTypeExtension on SimpleCertificateType {
  String toText(AppLocalizations l10n) {
    switch (this) {
      case SimpleCertificateType.familiar:
        return l10n.datosFam;
      case SimpleCertificateType.personal:
        return l10n.datosPer;
    }
  }
}
