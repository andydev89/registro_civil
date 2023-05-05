import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SelectPaymentPage extends StatelessWidget {
  const SelectPaymentPage({
    super.key,
    required this.requestNumber,
    required this.totalToPay,
  });
  final String requestNumber;
  final double totalToPay;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.realizarPago,
      subtitle: l10n.seleccioneMetodoPago,
      body: GestureDetector(
        // onTap: () => context.navigateTo(
        //   MakePaymentRoute(
        //     requestNumber: requestNumber,
        //     totalToPay: totalToPay,
        //     buttonText: l10n.continuar,
        //     // service: PaymentMethodType.placeToPay,
        //   ),
        // ),
        child: DecoratedBox(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child:
                Text(PaymentMethodType.placeToPay.toText).verticalPadding(30),
          ),
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        title: l10n.cancelar,
        onPressed: () => context.navigateBack(),
      ).symmetricPadding(10, 30),
    );
  }
}
