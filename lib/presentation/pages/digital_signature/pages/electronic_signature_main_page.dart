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

class ElectronicSignatureMainPage extends ConsumerWidget {
  const ElectronicSignatureMainPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.solFirmaElectronica,
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
                ElectronicSignatureFirstStepRoute(
                  typeServiceModel: typeServiceModel,
                ),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<ElectronicSignatureModel>>>(
                async: ref.watch(signaturesProvider()),
                onRefreshIndicator: () => ref.refresh(
                  duplicatesProvider().future,
                ),
                onRefresh: () => ref.refresh(signaturesProvider()),
                data: (data) => PagedListViewWidget<ElectronicSignatureModel>(
                  fetch: (page) => ref.read(
                    signaturesProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  itemBuilder: (_, e, __) =>
                      CardWidget<ElectronicSignatureModel>(
                    element: e,
                    rows: {
                      l10n.tipoPersona:
                          e.personType.translate(context),
                      l10n.usoFactElectronica:
                          e.useCase.translate(context),
                      l10n.fechaCreacion: '${e.createdAt?.onlyDate} -'
                          ' ${e.createdAt?.onlyTime}',
                      l10n.estado: e.state.translate(context),
                    },
                    actions: {
                      Crud.read: (p0) => context.navigateTo(
                            IdDuplicateFirstStepRouterRoute(
                              operation: Crud.read,
                              typeServiceModel: typeServiceModel,
                              duplicateId: e.id,
                              children: [
                                IdDuplicateFirstStepRoute(
                                  typeServiceModel: typeServiceModel,
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
