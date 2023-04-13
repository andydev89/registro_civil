import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/my_orders/models/my_order_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';

class MyOrderExpandableCard extends StatelessWidget {
  const MyOrderExpandableCard({
    super.key,
    required this.data,
  });
  final MyOrderExpandableCardModel data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ExpandableCard(
      title: '${l10n.solicitud} # ${data.id}',
      header: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          DescriptionRow(
            label: l10n.tramites,
            text: data.typeOfService.translate(context),
          ),
          DescriptionRow(
            label: l10n.fecha,
            text: DateFormat.yMd().format(data.date),
          ),
        ],
      ),
      content: Column(
        children: [
          DescriptionRow(
            label: 'NUT',
            text: data.nut,
          ),
          DescriptionRow(
            label: 'Valor unitario',
            text: data.unitaryValue.toStringAsFixed(2),
          ),
          DescriptionRow(
            label: 'Subtotal',
            text: data.subtotal.toStringAsFixed(2),
          ),
          DescriptionRow(
            label: 'IVA',
            text: data.iva.toStringAsFixed(2),
          ),
          DescriptionRow(
            label: 'Descuento',
            text: data.discount.toStringAsFixed(2),
          ),
          DescriptionRow(
            label: 'Total',
            text: data.total.toStringAsFixed(2),
          ),
          DescriptionRow(
            label: 'Estado del pago',
            text: data.paymentStatus.toString(),
          ),
          DescriptionRow(
            label: 'Estado del tramite',
            text: data.proceduresStatus.toString(),
          ),
        ],
      ),
      onPressed: () => showAcceptCancelDialog<void>(
        context,
        title: l10n.confirmacion,
        message: l10n.seguroCancelarTurno,
        onAccept: () {},
      ),
    );
  }
}
