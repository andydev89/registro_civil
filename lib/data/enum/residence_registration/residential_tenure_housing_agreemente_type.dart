import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum ResidentialTenureHousingAgreementeType implements Translatable {
  @JsonValue('PROPIA_TOTALMENTE_PAGADA')
  propiaTotalmentePagada('PROPIA_TOTALMENTE_PAGADA'),
  @JsonValue('PROPIA_ESTA_PAGANDO')
  propiaYEnPago('PROPIA_ESTA_PAGANDO'),
  @JsonValue('PROPIA')
  propia('PROPIA'),
  @JsonValue('PRESTADA_O_CEDIDA')
  prestadaCedida('PRESTADA_O_CEDIDA'),
  @JsonValue('POR_SERVICIOS')
  porServicios('POR_SERVICIOS'),
  @JsonValue('ARRENDADA')
  arrendada('ARRENDADA');

  const ResidentialTenureHousingAgreementeType(this.toText);
  final String toText;

  static String? toJson(ResidentialTenureHousingAgreementeType? value) =>
      value?.toText;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case ResidentialTenureHousingAgreementeType.propiaTotalmentePagada:
        return l10n.propiaTotPag;
      case ResidentialTenureHousingAgreementeType.propiaYEnPago:
        return l10n.propiaYEnPag;
      case ResidentialTenureHousingAgreementeType.propia:
        return l10n.propia;
      case ResidentialTenureHousingAgreementeType.prestadaCedida:
        return l10n.prestadaCedida;
      case ResidentialTenureHousingAgreementeType.porServicios:
        return l10n.porServicios;
      case ResidentialTenureHousingAgreementeType.arrendada:
        return l10n.arrendada;
    }
  }
}
