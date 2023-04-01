import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/widgets/modify_cant.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CertificateDetail extends StatelessWidget {
  const CertificateDetail({
    required this.typeSimpleCertificate,
    required this.totalPayFunction,
    required this.cantElement,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;
  final void Function(double) totalPayFunction;
  final int cantElement;

  @override
  Widget build(BuildContext context) {
    final cant = ValueNotifier(cantElement);
    final totalPay = ValueNotifier<double>(
      cant.value * typeSimpleCertificate.price,
    );
    const size = 40.0;
    final l10n = context.l10n;
    const width = 8.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: typeSimpleCertificate.image.image()),
        const SizedBox(width: width),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: PrimaryText(
                      typeSimpleCertificate.title(l10n),
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  PrimaryCaption(
                    '\$${typeSimpleCertificate.price.toStringAsFixed(2)}',
                    fontSize: fontSizeDefault + 3,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: width),
        ValueListenableBuilder<int>(
          valueListenable: cant,
          builder: (_, value, __) {
            return Flexible(
              child: ModifyCant(
                cant: value,
                onCantChanged: (onCantChanged) {
                  cant.value = onCantChanged;
                  totalPay.value = cant.value * typeSimpleCertificate.price;
                  totalPayFunction(totalPay.value);
                },
              ),
            );
          },
        ),
        const SizedBox(width: width),
        Column(
          children: [
            ValueListenableBuilder<double>(
              valueListenable: totalPay,
              builder: (_, value, __) {
                return PrimaryText(
                  '\$ ${value.toStringAsFixed(2)}',
                  fontWeight: FontWeight.bold,
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryIconButton(
                  onPressed: () {},
                  width: size,
                  height: size,
                  icon: const Icon(Icons.remove_red_eye_sharp),
                ),
                const SizedBox(width: 10),
                PrimaryIconButton(
                  onPressed: () {},
                  width: size,
                  height: size,
                  icon: const Icon(Icons.delete_outline_sharp),
                ),
              ],
            )
          ],
        )
      ],
    ).verticalPadding(10);
  }
}
