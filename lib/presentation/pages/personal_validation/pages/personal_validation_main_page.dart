import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PersonalValidationMainPage extends ConsumerWidget {
  const PersonalValidationMainPage({super.key, required this.typeServiceModel});

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.personalValidation,
      body: Expanded(
        child: Column(
          children: [
            PrimaryAddItemRow(
              title: l10n.listadoSol,
              onPressed: () => context.navigateTo(
                PersonalValidationFirstStepRouterRoute(
                  typeServiceModel: typeServiceModel,
                  children: [
                    PersonalValidationFirstStepRoute(
                      typeServiceModel: typeServiceModel,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: LoadingProviderWidget<
                  ResponseModelPagination<List<PersonalValidationListModel>>>(
                async: ref.watch(personalValidationsProvider()),
                onRefreshIndicator: () => ref.refresh(
                  personalValidationsProvider().future,
                ),
                onRefresh: () => ref.refresh(personalValidationsProvider()),
                data: (data) => PagedListViewWidget<PersonalValidationListModel>(
                  fetch: (page) => ref.read(
                    personalValidationsProvider(pageNo: page).future,
                  ),
                  firstElements: data.data ?? [],
                  totalPages: data.totalPages,
                  itemBuilder: (_, e, __) =>
                      CardWidget<PersonalValidationListModel>(
                    element: e,
                    rows: {
                      l10n.fechaCreacion: '${e.createdAt?.onlyDate} -'
                          ' ${e.createdAt?.onlyTime}',
                      l10n.estado: e.state.translate(context),
                    },
                    actions: {
                      Crud.read: (p0) => context.navigateTo(
                        PersonalValidationFirstStepRouterRoute(
                          typeServiceModel: typeServiceModel,
                          operation: Crud.read,
                          children: [
                            PersonalValidationFirstStepRoute(
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
