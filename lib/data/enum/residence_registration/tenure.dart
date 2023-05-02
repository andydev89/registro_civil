import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum Tenure implements Translatable {
  propiaTotalmentePagada('Propia totalmente pagada'),
  propiaYEnPago('Propia y en pago'),
  propia('Propia'),
  prestadaCedida('Prestada o cedida'),
  porServicios('Por servicios'),
  arrendada('Arrendada'),
  ;

  const Tenure(this.toText);
  final String toText;

  static String? toJson(Tenure? value) => value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case Tenure.propiaTotalmentePagada:
        return l10n.propiaTotPag;
      case Tenure.propiaYEnPago:
        return l10n.propiaYEnPag;
      case Tenure.propia:
        return l10n.propia;
      case Tenure.prestadaCedida:
        return l10n.prestadaCedida;
      case Tenure.porServicios:
        return l10n.porServicios;
      case Tenure.arrendada:
        return l10n.arrendada;
    }
  }
}
