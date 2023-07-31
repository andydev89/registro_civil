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

class BirthAbroadMainPage extends ConsumerWidget {
  const BirthAbroadMainPage({super.key, required this.typeServiceModel});

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.registroNacExt,
      body: Expanded(
        child: Column(
          children: [
            FutureBuilder(
              future: ref.watch(loginProvider.notifier).future,
              builder: (context, snapshot) {
                return PrimarySearch(
                  hint: (snapshot.hasData && snapshot.data!)
                      ? null
                      : '${l10n.introduzcaPasaporte}...',
                  filter: (p0) {
                    ref.read(birthAbroadFilterProvider.notifier).setFilter(p0);
                  },
                ).verticalPadding(10);
              },
            ),
            PrimaryAddItemRow(
              title: l10n.listadoSol,
              onPressed: () => context.navigateTo(
                BirthAbroadFirstStepRouterRoute(
                  typeServiceModel: typeServiceModel,
                  children: [
                    BirthAbroadFirstStepRoute(
                      typeServiceModel: typeServiceModel,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<BirthAbroadListModel>>>(
                async: ref.watch(birthsAbroadProvider()),
                onRefreshIndicator: () => ref.refresh(
                  birthsAbroadProvider().future,
                ),
                onRefresh: () => ref.refresh(birthsAbroadProvider()),
                data: (data) => PagedListViewWidget<BirthAbroadListModel>(
                  fetch: (page) => ref.read(
                    birthsAbroadProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  itemBuilder: (_, e, __) => CardWidget<BirthAbroadListModel>(
                    element: e,
                    rows: {
                      l10n.tipoTramite: e.type.translate(context),
                      l10n.tipoRegPropietario:
                          e.registerOwnerType.translate(context),
                      l10n.fechaCreacion: '${e.createAt?.onlyDate} -'
                          ' ${e.createAt?.onlyTime}',
                      l10n.estado: e.state.translate(context),
                    },
                    actions: {
                      Crud.read: (p0) => context.navigateTo(
                            BirthAbroadFirstStepRouterRoute(
                              operation: Crud.read,
                              typeServiceModel: typeServiceModel,
                              birthId: e.id,
                              children: [
                                BirthAbroadFirstStepRoute(
                                  typeServiceModel: typeServiceModel,
                                  operation: Crud.read,
                                ),
                              ],
                            ),
                          ),
                      Crud.update: (p0) => (e.state == ProcessStatus.inProgress)
                          ? context.navigateTo(
                              BirthAbroadSecondStepRouterRoute(
                                operation: Crud.update,
                                typeServiceModel: typeServiceModel,
                                birthId: e.id,
                                children: [
                                  BirthAbroadSecondStepRoute(
                                    typeServiceModel: typeServiceModel,
                                    operation: Crud.update,
                                  ),
                                ],
                              ),
                            )
                          : null,
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
