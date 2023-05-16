import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum OrdersRejectingReasonType implements Translatable {
  reasonRejecting1,
  reasonRejecting2,
  reasonRejecting3,
  reasonRejecting4;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case OrdersRejectingReasonType.reasonRejecting1:
        return l10n.pedidosRazRec1;
      case OrdersRejectingReasonType.reasonRejecting2:
        return l10n.pedidosRazRec2;
      case OrdersRejectingReasonType.reasonRejecting3:
        return l10n.pedidosRazRec3;
      case OrdersRejectingReasonType.reasonRejecting4:
        return l10n.pedidosRazRec4;
    }
  }
}
