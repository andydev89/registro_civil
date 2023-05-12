import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';

class MyTurnExpandableCard extends StatelessWidget {
  const MyTurnExpandableCard({
    super.key,
    required this.data,
  });
  final MyTurnExpandableCardModel data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final now = DateTime.now();
    return ExpandableCard(
      title: '${l10n.reservacion} # ${data.id}',
      header: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          DescriptionRow(
            label: l10n.servicio,
            text: data.typeOfService.name,
          ),
          DescriptionRow(
            label: l10n.fecha,
            text: DateFormat.yMd().format(data.date),
          ),
          DescriptionRow(
            label: l10n.hora,
            text: DateFormat.jm().format(
              DateTime(
                now.year,
                now.month,
                now.day,
                data.time.hour,
                data.time.minute,
              ),
            ),
          ),
        ],
      ),
      content: Column(
        children: [
          DescriptionRow(
            label: l10n.ciudad,
            text: data.city,
          ),
          DescriptionRow(
            label: l10n.agencia,
            text: data.agency,
          ),
          DescriptionRow(
            label: l10n.estado,
            text: data.state.toText,
            isTextColoredUpperCase: true,
            coloredUpperCaseColor: data.state.color,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      onPressed: () => showAcceptCancelDialog<void>(
        context,
        title: l10n.confirmacion,
        message: l10n.seguroCancelarTurno,
        onAccept: () {
          // TODO(alejandro): cancelar
        },
      ),
    );
  }
}
