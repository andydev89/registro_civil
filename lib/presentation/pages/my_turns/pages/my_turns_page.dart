import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/widgets/my_turn_expandable_card.dart';
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
          PrimarySearch(
            showFilter: true,
            onPressed: () {
              // print('asd');
            },
          ).verticalPadding(20),
          MyTurnExpandableCard(
            data: MyTurnExpandableCardModel(
              id: 12569,
              agency: 'Matriz',
              city: 'Guayaqui',
              date: DateTime.now(),
              typeOfService: TypeOfServiceModel(
                id: 1,
                name: 'asd',
                price: 22,
                iva: 22,
                discount: 22,
                state: 'state',
                publishWeb: true,
                publishMovil: true,
                iconoWeb: '',
                iconoMovil: '',
                typeService: 'typeService',
              ),
              state: 'ASIGNADO',
              time: TimeOfDay.fromDateTime(DateTime.now()),
            ),
          ),
        ],
      ),
    );
  }
}
