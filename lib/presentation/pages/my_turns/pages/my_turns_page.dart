import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/user_schedule_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/widgets/my_turns_expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/list/paged_list_view_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MyTurnsPage extends ConsumerWidget {
  const MyTurnsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.misTurnos,
      horizontalPadding: 15,
      body: Expanded(
        child: Column(
          children: [
            PrimarySearch(
              showFilter: true,
              filter: (p0) => ref
                  .read(schedulesByUserFilterProvider.notifier)
                  .setFilter(p0),
            ).verticalPadding(20),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<UserScheduleModel>?>>(
                async: ref.watch(schedulesByUserProvider()),
                data: (data) => PagedListViewWidget<UserScheduleModel>(
                  fetch: (p0) async =>
                      ref.read(schedulesByUserProvider(pageNo: p0).future),
                  itemBuilder: (_, e, __) => MyTurnExpandableCard(
                    data: MyTurnExpandableCardModel(
                      id: e.id,
                      agency: e.schedule.agency.name,
                      city: e.schedule.agency.region,
                      date: e.schedule.date,
                      typeOfService: e.schedule.typeOfService,
                      time: e.schedule.startTime,
                      state: e.state.toText,
                    ),
                  ).verticalPadding(10),
                ),
                onRefresh: () => ref.refresh(schedulesByUserProvider()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
