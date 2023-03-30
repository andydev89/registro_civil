import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum OrdersRejectingReason implements Translatable {
  reasonRejecting1,
  reasonRejecting2,
  reasonRejecting3,
  reasonRejecting4;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case OrdersRejectingReason.reasonRejecting1:
        return l10n.pedidosRazRec1;
      case OrdersRejectingReason.reasonRejecting2:
        return l10n.pedidosRazRec2;
      case OrdersRejectingReason.reasonRejecting3:
        return l10n.pedidosRazRec3;
      case OrdersRejectingReason.reasonRejecting4:
        return l10n.pedidosRazRec4;
    }
  }
}
