import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdDuplicateMainPage extends ConsumerWidget {
  const IdDuplicateMainPage({super.key, required this.typeServiceModel});
  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.duplicadoCed,
      body: Expanded(
        child: Column(
          children: [
            /*PrimarySearch(
              filter: (p0) =>
                  ref.read(marriagesFilterProvider.notifier).setFilter(p0),
            ).verticalPadding(10),*/
            PrimaryAddItemRow(
              title: l10n.listadoSol,
              onPressed: () => context.navigateTo(
                IdDuplicateFirstStepRoute(typeServiceModel: typeServiceModel),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<IdDuplicateResponseModel>>>(
                async: ref.watch(duplicatesProvider()),
                onRefreshIndicatot: () => ref.refresh(
                  duplicatesProvider().future,
                ),
                onRefresh: () => ref.refresh(duplicatesProvider()),
                data: (data) => PagedListViewWidget<IdDuplicateResponseModel>(
                  fetch: (page) => ref.read(
                    duplicatesProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  itemBuilder: (_, e, __) => CardWidget<IdDuplicateResponseModel>(
                    element: e,
                    rows: {
                      'Motivo': e.reasonType.translate(context),
                      l10n.fechaCreacion: '${e.createAt.onlyDate} -'
                          ' ${e.createAt.onlyTime}',
                      l10n.estado: e.state.translate(context),
                    },
                    actions: {
                      if (e.state == StateMarriageType.inProgress)
                        Crud.update: (p0) => context.navigateTo(
                          RejectionStepMarriageCelebrationRoute(
                            marriageId: p0.id,
                          ),
                        ),
                      Crud.read: (p0) => context.navigateTo(
                        MarriageCelebrationStepperRoute(children: [
                          MarriageCelebrationFirstStepRouterRoute(
                            operation: Crud.read,
                            marriageId: e.id,
                            children: [
                              FirstStepAttorneyRoute(operation: Crud.read),
                            ],
                          ),
                        ],),),
                    },
                  ),
                ),
              ).verticalPadding(10),
            ),
          ],
        ).verticalPadding(10),
      ),
    );
  }
}
