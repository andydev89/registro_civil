import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
part 'agreements_type.g.dart';

@JsonEnum(
  alwaysCreate: true,
  valueField: 'value',
)
enum AgreementType implements Translatable {
  changeOfName(0),
  residenceRegistration(1),
  marriageCelebration(2);

  const AgreementType(this.value);

  final int value;

  static AgreementType getByValue(int i) {
    return AgreementType.values.firstWhere((x) => x.value == i);
  }

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case AgreementType.changeOfName:
        return l10n.acuerdoCambioDeNombre;
      case AgreementType.residenceRegistration:
        return l10n.textoIntRegMat;
      case AgreementType.marriageCelebration:
        return l10n.textoIntRegMat;
    }
  }
}
