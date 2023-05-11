import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/providers/cart_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/sliding_dialog.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/widgets/certificate_detail.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class OffersWidget extends ConsumerWidget {
  const OffersWidget({
    super.key,
    required this.controller,
  });
  final SlidingDialogController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final offers = ref.watch(offersProvider);
    return FocusScope(
      node: FocusScopeNode(canRequestFocus: false),
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: gradientePrincipal(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryTitle(
                    title: l10n.pedidos,
                    color: Colors.white,
                  ).symmetricPadding(5, 32),
                  IconButton(
                    onPressed: () => controller.closeDialog(context),
                    icon: Stack(
                      children: const [
                        Center(
                          child: Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ).horizontalPadding(10)
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (offers.isNotEmpty)
                    Expanded(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Column(
                            children: offers
                                .map(
                                  (offer) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: CertificateDetail(
                                              offer: offer,
                                            ).verticalPadding(5),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                        height: 2,
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          ).verticalPadding(10),
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_shopping_cart_outlined,
                            color: Colors.grey.withOpacity(0.3),
                            size: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ],
                      ),
                    ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(
                            l10n.subtotal,
                            fontWeight: FontWeight.bold,
                          ),
                          PrimaryCaption(
                            '\$${0.toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(
                            l10n.descuentoConadis,
                            fontWeight: FontWeight.bold,
                          ),
                          PrimaryCaption(
                            '-\$${0.toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const PrimaryText(
                            'IVA',
                            fontWeight: FontWeight.bold,
                          ),
                          PrimaryCaption(
                            '\$${0.toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryText(
                            l10n.totalPagar,
                            fontWeight: FontWeight.bold,
                          ),
                          PrimaryText(
                            '\$${0.toStringAsFixed(2)}',
                            fontWeight: FontWeight.bold,
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                    ],
                  ).horizontalPadding(20),
                ],
              ).horizontalPadding(10),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(
              title: l10n.pagar,
              onPressed: offers.isNotEmpty
                  ? () {
                      controller.closeDialog(context);
                      context.navigateTo(const ChoosePaymentMethodRoute());
                    }
                  : null,
            ),
            const SizedBox(height: 10),
            PrimaryButton(
              title: l10n.limpiar,
              onPressed: offers.isNotEmpty
                  ? () => showDeleteDialog(
                        context,
                        title: l10n.limpiarCarrito,
                        message: l10n.tenercuentaLimpiarCarrito,
                        deleteText: l10n.limpiar,
                        onDelete: () =>
                            ref.read(offersProvider.notifier).empty(),
                      )
                  : null,
            ),
          ],
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
