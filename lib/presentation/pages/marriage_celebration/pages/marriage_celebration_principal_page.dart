import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryButton(
                  title: l10n.anadir,
                ),
              ],
            ),
            // Expanded(
            //   child: LoadingProviderWidget<
            //       ResponseModelPagination<List<TypeServiceModel>>>(
            //     async: ref.watch(typeServicesProvider),
            //     onRefreshIndicatot: () =>
            //         ref.refresh(typeServicesProvider.future),
            //     onRefresh: () => ref.refresh(typeServicesProvider),
            //     data: (data) => CircleAvatarCardGrid(
            //       totalPages: data.totalPages,
            //       firstElements: data.data!,
            //       firstPage: 1,
            //       fetch: (p0) => ref.watch(typeServicesFetchProvider(p0).future),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
