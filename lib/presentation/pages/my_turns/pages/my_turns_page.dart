import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/widgets/my_turns_expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

class MyTurnsPage extends ConsumerWidget {
  const MyTurnsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final myTurns = ref.watch(schedulesByUserProvider);
    return PrimaryScaffold(
      horizontalPadding: 15,
      title: l10n.misTurnos,
      body: Expanded(
        child: Column(
          children: [
            PrimarySearch(
              showFilter: true,
              onPressed: () {
                //todo buscar turno reservado
                // print('asd');
              },
            ).verticalPadding(20),
            myTurns.when(
              skipLoadingOnRefresh: false,
              data: (data) => data.when(
                ok: (value) => Expanded(
                  child: ScrollableContent(
                    child: Column(
                      children: value
                          .map(
                            (e) => MyTurnExpandableCard(
                              data: MyTurnExpandableCardModel(
                                id: e.id,
                                agency: e.schedule.agency.name,
                                city: e.schedule.agency.region,
                                date: e.schedule.date,
                                typeOfService: e.schedule.typeOfService,
                                time: e.schedule.startTime,
                              ),
                            ).verticalPadding(10),
                          )
                          .toList(),
                    ),
                  ),
                ),
                err: (error) => ErrorStatus(messagge: error.toString()),
              ),
              error: (error, stackTrace) => ErrorStatus(
                messagge: error.toString(),
                onPressed: () => ref.refresh(schedulesByUserProvider),
              ),
              loading: () => const LoadingStatus(),
            ),
          ],
        ),
      ),
    );
  }
}
