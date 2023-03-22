import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/widgets/my_turn_expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MyTurnsPage extends StatelessWidget {
  const MyTurnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.misTurnos,
      body: Column(
        children: [
          const PrimarySearch(),
          MyTurnExpandableCard(
            data: MyTurnExpandableCardModel(
              id: 12569,
              agency: 'Matriz',
              city: 'Guayaqui',
              date: DateTime.now(),
              service: ServiceType.identificationCard,
              state: 'ASIGNADO',
              time: TimeOfDay.fromDateTime(DateTime.now()),
            ),
          ),
        ],
      ),
    );
  }
}
