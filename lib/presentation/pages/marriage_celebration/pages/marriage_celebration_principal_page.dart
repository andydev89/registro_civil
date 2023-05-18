import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage_type.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_response_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_add_item_row.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/card_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/list/paged_list_view_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MarriageCelebrationPrincipalPage extends ConsumerWidget {
  const MarriageCelebrationPrincipalPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.celebracionMat,
      body: Expanded(
        child: Column(
          children: [
            PrimarySearch(
              filter: (p0) =>
                  ref.read(marriagesFilterProvider.notifier).setFilter(p0),
            ).verticalPadding(10),
            PrimaryAddItemRow(
              title: l10n.listadoSol,
              onPressed: () => context.navigateTo(
                MarriageCelebrationFirstStepRouterRoute(),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<ResponseMarriageModel>>>(
                async: ref.watch(marriagesProvider()),
                onRefreshIndicatot: () => ref.refresh(
                  marriagesProvider().future,
                ),
                onRefresh: () => ref.refresh(marriagesProvider()),
                data: (data) => PagedListViewWidget<ResponseMarriageModel>(
                  fetch: (page) => ref.read(
                    marriagesProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  firstPage: 1,
                  itemBuilder: (_, e, __) => CardWidget<ResponseMarriageModel>(
                    element: e,
                    rows: {
                      l10n.fechaCreacion: '${e.creationDate.onlyDate} -'
                          ' ${e.creationDate.onlyTime}',
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
                            MarriageCelebrationFirstStepRouterRoute(
                              operation: Crud.read,
                              marriageId: e.id,
                            ),
                          ),
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
