import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:popover/popover.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
import 'package:registro_civil_apk/data/providers/cart_provider.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
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
    const size = 40.0;
    const width = 8.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: FutureBuilder(
            future:
                createImageFileFromBase64(offer.simpleCertificate.iconoMovil),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Image.file(snapshot.data!);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        const SizedBox(width: width),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () => showPopover(
                        context: context,
                        bodyBuilder: (_) => PrimaryText(
                          offer.simpleCertificate.name,
                          maxLines: null,
                        ).symmetricPadding(20, 20),
                      ),
                      child: PrimaryText(
                        offer.simpleCertificate.name,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        overFlow: TextOverflow.ellipsis,
                      ),
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
              ref
                  .read(offersProvider.notifier)
                  .updateOffer(offer.operation(onCantChanged));
            },
          ),
        ),
        const SizedBox(width: width),
        Column(
          children: [
            PrimaryText(
              '\$ ${offer.simpleCertificate.price.toStringAsFixed(2)}',
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
                      ref.read(offersProvider.notifier).removeOffer(offer),
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
