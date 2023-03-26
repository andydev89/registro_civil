import 'package:registro_civil_apk/l10n/l10n.dart';

enum SimpleCertificateRadioTypeEnum{
  familiar,
  personal,
}

extension SimpleCertificateRadioTypeEnumExtension on SimpleCertificateRadioTypeEnum {
  String toText(AppLocalizations l10n) {
    switch (this) {
      case SimpleCertificateRadioTypeEnum.familiar:
        return l10n.datosFam;
      case SimpleCertificateRadioTypeEnum.personal:
        return l10n.datosPer;
    }
  }
}