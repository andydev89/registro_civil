import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum MarriageCelebrationRadioTypeEnum implements Translatable {
  attorney,
  contractingParty;

  @override
  String translate(BuildContext context){
    final l10n = context.l10n;
    switch (this) {
      case MarriageCelebrationRadioTypeEnum.attorney:
        return l10n.apoderado;
      case MarriageCelebrationRadioTypeEnum.contractingParty:
        return l10n.contrayente;
    }
  }
}
