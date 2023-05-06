import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidentialTenureHousingTypeAgreemente implements Translatable {
  propiaTotalmentePagada('PROPIA_TOTALMENTE_PAGADA'),
  propiaYEnPago('PROPIA_ESTA_PAGANDO'),
  propia('PROPIA'),
  prestadaCedida('PRESTADA_O_CEDIDA'),
  porServicios('POR_SERVICIOS'),
  arrendada('ARRENDADA'),
  ;

  const ResidentialTenureHousingTypeAgreemente(this.toText);
  final String toText;

  static String? toJson(ResidentialTenureHousingTypeAgreemente? value) =>
      value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidentialTenureHousingTypeAgreemente.propiaTotalmentePagada:
        return l10n.propiaTotPag;
      case ResidentialTenureHousingTypeAgreemente.propiaYEnPago:
        return l10n.propiaYEnPag;
      case ResidentialTenureHousingTypeAgreemente.propia:
        return l10n.propia;
      case ResidentialTenureHousingTypeAgreemente.prestadaCedida:
        return l10n.prestadaCedida;
      case ResidentialTenureHousingTypeAgreemente.porServicios:
        return l10n.porServicios;
      case ResidentialTenureHousingTypeAgreemente.arrendada:
        return l10n.arrendada;
    }
  }
}
