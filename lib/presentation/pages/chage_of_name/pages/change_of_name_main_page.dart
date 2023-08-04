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

class ChangeNameMainPage extends ConsumerWidget {
  const ChangeNameMainPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.cambioNom,
      body: Expanded(
        child: Column(
          children: [
            /*PrimarySearch(
              filter: (p0) =>
                  ref.read(signatureFilterProvider.notifier).setFilter(p0),
            ).verticalPadding(10),*/
            PrimaryAddItemRow(
              title: l10n.listadoSol,
              onPressed: () => context.navigateTo(
                ChangeNameFirstStepRouterRoute(
                  typeServiceModel: typeServiceModel,
                  children: [
                    ChangeOfNameFirstStepRoute(
                      typeService: typeServiceModel,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<ChangeOfNameListModel>>>(
                async: ref.watch(changeNamesProvider()),
                onRefreshIndicator: () => ref.refresh(
                  changeNamesProvider().future,
                ),
                onRefresh: () => ref.refresh(changeNamesProvider()),
                data: (data) => PagedListViewWidget<ChangeOfNameListModel>(
                  fetch: (page) => ref.read(
                    changeNamesProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  itemBuilder: (_, e, __) => CardWidget<ChangeOfNameListModel>(
                    element: e,
                    rows: {
                      l10n.tipoTramite: e.changeOfNameType.translate(context),
                      l10n.nuevoNombre: '${e.firstName} ${e.secondName}',
                      l10n.fechaCreacion: '${e.createAt?.onlyDate} -'
                          ' ${e.createAt?.onlyTime}',
                      l10n.estado: e.state.translate(context),
                    },
                    actions: {
                      Crud.read: (p0) => context.navigateTo(
                          ChangeNameFirstStepRouterRoute(
                              operation: Crud.read,
                              typeServiceModel: typeServiceModel,
                              changeOfNameId: e.id,
                              children: [
                                ChangeOfNameFirstStepRoute(
                                  typeService: typeServiceModel,
                                  operation: Crud.read,
                                ),
                              ],
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
