import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum PaymentServiceJudgmentsNotarialActsEnum implements Translatable {
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
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField1:
        return l10n.paymentServiceJudgmentsNotarialActsField1;
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField2:
        return l10n.paymentServiceJudgmentsNotarialActsField2;
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField3:
        return l10n.paymentServiceJudgmentsNotarialActsField3;
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField4:
        return l10n.paymentServiceJudgmentsNotarialActsField4;
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField5:
        return l10n.paymentServiceJudgmentsNotarialActsField5;
      case PaymentServiceJudgmentsNotarialActsEnum
          .paymentServiceJudgmentsNotarialActsField6:
        return l10n.paymentServiceJudgmentsNotarialActsField6;
    }
  }
}
