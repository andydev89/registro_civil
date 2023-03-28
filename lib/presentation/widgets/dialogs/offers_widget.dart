import 'dart:math';

import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/widgets/certificate_detail.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() =>
      _OffersWidgetState();
}

class _OffersWidgetState
    extends State<OffersWidget> {
  late List<double> certificateTotals;
  late int cant;

  @override
  void initState() {
    cant = Random().nextInt(2) + 2;
    certificateTotals =
        List.generate(cant, (index) => TypeSimpleCertificateEnum.birth.price);
    super.initState();
  }

  void updateTotal(int index, double total) {
    setState(() {
      if (index >= certificateTotals.length) {
        certificateTotals.add(total);
      } else {
        certificateTotals[index] = total;
      }
    });
  }

  double totalPay() {
    if (certificateTotals.isEmpty) {
      return cant * TypeSimpleCertificateEnum.birth.price;
    }
    return certificateTotals.reduce((value, element) => value + element);
  }

  int cantElement(int index) => certificateTotals.length > index
      ? (certificateTotals[index] / TypeSimpleCertificateEnum.birth.price)
          .round()
      : 1;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
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
                      onPressed: () => Navigator.of(context).pop(),
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
                      ),).horizontalPadding(10)
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(
                          cant,
                          (index) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: CertificateDetail(
                                      typeSimpleCertificate:
                                          TypeSimpleCertificateEnum.birth,
                                      totalPayFunction: (value) =>
                                          updateTotal(index, value),
                                      cantElement: cantElement(index),
                                    ).verticalPadding(5),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.grey, height: 2),
                            ],
                          ),
                        ),
                      ).verticalPadding(10),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryLabel(l10n.subtotal),
                          PrimaryCaption(
                            '\$${totalPay().toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryLabel(l10n.descuentoConadis),
                          PrimaryCaption(
                            '\$${0.toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const PrimaryLabel('IVA'),
                          PrimaryCaption(
                            '\$${0.toStringAsFixed(2)}',
                            fontSize: fontSizeDefault + 3,
                          ),
                        ],
                      ).verticalPadding(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryLabel(l10n.totalPagar),
                          PrimaryLabel('\$${totalPay().toStringAsFixed(2)}'),
                        ],
                      ).verticalPadding(10),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PrimaryButton(
                        title: l10n.pagar,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 15),
                      PrimaryButton(
                        title: l10n.realizarSol,
                        onPressed: () {},
                      ),
                    ],
                  ).symmetricPadding(20, 40)
                ],
              ).symmetricPadding(20,20),
            ),
          ],
        ),
    );
  }
}
