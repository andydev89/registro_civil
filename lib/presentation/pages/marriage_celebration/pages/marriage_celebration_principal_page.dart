import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_response_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/card_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/list/paged_list_view_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/widget_from_json.dart';

class MarriageCelebrationPrincipalPage extends ConsumerStatefulWidget {
  const MarriageCelebrationPrincipalPage({super.key});

  @override
  ConsumerState<MarriageCelebrationPrincipalPage> createState() =>
      _MarriageCelebrationPrincipalPageState();
}

class _MarriageCelebrationPrincipalPageState
    extends ConsumerState<MarriageCelebrationPrincipalPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showAceptAgreement(context);
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.home),
                    const SizedBox(width: 8),
                    PrimaryText(
                      l10n.listadoSol,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                PrimaryIconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => context.navigateTo(
                    const MarriageCelebrationRouterRoute(),
                  ),
                ),
              ],
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
                      if (e.state == StateMarriage.inProgress)
                        Crud.update: (p0) => context.navigateTo(
                              RejectionStepMarriageCelebrationRoute(
                                marriageId: p0.id,
                              ),
                            ),
                      Crud.read: (p0) => showContentDialog(
                            context,
                            content: ViewFromJsonWidget(
                              json: e.toJson(),
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
