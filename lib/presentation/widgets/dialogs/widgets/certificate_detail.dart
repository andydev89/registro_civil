import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
import 'package:registro_civil_apk/data/providers/isar/isar_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/widgets/modify_cant.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CertificateDetail extends ConsumerWidget {
  const CertificateDetail({
    required this.offer,
    super.key,
  });
  final OffersModel offer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalPay = offer.cant * offer.simpleCertificate.price;
    const size = 40.0;
    const width = 8.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: offer.simpleCertificate.image.image()),
        const SizedBox(width: width),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: PrimaryText(
                      offer.simpleCertificate.translate(context),
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  PrimaryCaption(
                    '\$${offer.simpleCertificate.price.toStringAsFixed(2)}',
                    fontSize: fontSizeDefault + 3,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(width: width),
        Flexible(
          child: ModifyCant(
            cant: offer.cant,
            onCantChanged: (onCantChanged) {
              final newOffer = offer.operation(onCantChanged);
              ref.read(offersProvider.notifier).save(newOffer);
            },
          ),
        ),
        const SizedBox(width: width),
        Column(
          children: [
            PrimaryText(
              '\$ ${totalPay.toStringAsFixed(2)}',
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryIconButton(
                  onPressed: () {},
                  width: size,
                  height: size,
                  icon: const Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                PrimaryIconButton(
                  onPressed: () =>
                      ref.read(offersProvider.notifier).delete(offer),
                  width: size,
                  height: size,
                  icon: const Icon(
                    Icons.delete_outline_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    ).verticalPadding(10);
  }
}
