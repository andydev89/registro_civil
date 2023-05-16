import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

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
                  fetch: (p0) =>
                      ref.read(schedulesByUserProvider(pageNo: p0).future),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  firstPage: 1,
                  itemBuilder: (_, e, __) => MyTurnExpandableCard(
                    data: MyTurnExpandableCardModel(
                      id: e.id,
                      agency: e.schedule.agency.name,
                      city: e.schedule.agency.region,
                      date: e.schedule.date,
                      typeOfService: e.schedule.typeOfService,
                      time: e.schedule.startTime,
                      state: e.state,
                    ),
                  ).verticalPadding(10),
                ),
                onRefreshIndicatot: () =>
                    ref.refresh(schedulesByUserProvider().future),
                onRefresh: () => ref.refresh(schedulesByUserProvider()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
