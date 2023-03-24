import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class CertificateDescription extends StatelessWidget {
  const CertificateDescription({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  PrimaryTitle(title: typeSimpleCertificate.title(l10n)),
                  PrimaryLabel('${l10n.descripcion}:'),
                  Expanded(
                    child: Column(
                      children: [
                        PrimaryText(
                          typeSimpleCertificate.description(l10n),
                          maxLines: 99,
                        ),
                      ],
                    ),
                  ),
                  PrimaryLabel('${l10n.descuentos}:'),
                  PrimaryText(l10n.descuentoCon),
                  PrimaryText(l10n.noIva)
                ],
              ),
            ),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: gradienteApp.first,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: PrimaryText(
                  typeSimpleCertificate.price.toStringAsFixed(2),
                  color: Colors.white,
                ),
              ),
            ),
            PrimaryButton(
              title: l10n.cancelar,
              onPressed: () => context.popRoute(),
            )
          ],
        ),
      ),
    );
  }
}
