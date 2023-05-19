import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class CertificateDescription extends StatelessWidget {
  const CertificateDescription({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeServiceModel typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              PrimaryTitle(
                title: typeSimpleCertificate.name,
                color: blue,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    PrimaryText(
                      '${l10n.descripcion}:',
                      color: blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    PrimaryText(
                      typeSimpleCertificate.description,
                      maxLines: 99,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 10),
                child: Row(
                  children: [
                    PrimaryText(
                      '${l10n.descuentos}:',
                      color: blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  PrimaryText(l10n.descuentoCon),
                ],
              ),
              Row(
                children: [
                  PrimaryText(l10n.noIva),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: gradienteApp.first,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 10,
                  ),
                  child: PrimaryText(
                    '${l10n.precio}: \$'
                    '${typeSimpleCertificate.price.toStringAsFixed(2)}',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          PrimaryButton(
            title: l10n.cancelar,
            onPressed: () => context.popRoute(),
          )
        ],
      ),
    );
  }
}
