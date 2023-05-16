import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PaymentServiceJudgmentsNotarialActsType implements Translatable {
  paymentServiceJudgmentsNotarialActsField1,
  paymentServiceJudgmentsNotarialActsField2,
  paymentServiceJudgmentsNotarialActsField3,
  paymentServiceJudgmentsNotarialActsField4,
  paymentServiceJudgmentsNotarialActsField5,
  paymentServiceJudgmentsNotarialActsField6;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField1:
        return l10n.paymentServiceJudgmentsNotarialActsField1;
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField2:
        return l10n.paymentServiceJudgmentsNotarialActsField2;
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField3:
        return l10n.paymentServiceJudgmentsNotarialActsField3;
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField4:
        return l10n.paymentServiceJudgmentsNotarialActsField4;
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField5:
        return l10n.paymentServiceJudgmentsNotarialActsField5;
      case PaymentServiceJudgmentsNotarialActsType
          .paymentServiceJudgmentsNotarialActsField6:
        return l10n.paymentServiceJudgmentsNotarialActsField6;
    }
  }
}
