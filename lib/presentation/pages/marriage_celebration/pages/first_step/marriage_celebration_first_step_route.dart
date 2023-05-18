import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/body_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class MarriageCelebrationFirstStepRouterPage extends HookWidget {
  const MarriageCelebrationFirstStepRouterPage({
    super.key,
    this.operation = Crud.create,
    this.marriageId,
  });
  final Crud operation;
  final String? marriageId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer(
      builder: (context, ref, _) {
        return PrimaryScaffold(
          title: l10n.solicitudCelMat,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: operation.isRead
                ? LoadingProviderWidget(
                    async: ref.watch(marriageByIdProvider(marriageId!)),
                    onRefresh: () => ref.refresh(
                      marriageByIdProvider(marriageId!),
                    ),
                    onRefreshIndicatot: () => ref.watch(
                      marriageByIdProvider(marriageId!).future,
                    ),
                    data: (data) {
                      WidgetsBinding.instance.addPostFrameCallback(
                        (_) => ref
                            .read(marriageCelebrationProvider.notifier)
                            .updateModel(data),
                      );
                      return BodyWidget(
                        operation: operation,
                        marriageCelebrationType: data.requestOwnerType,
                      );
                    },
                  )
                : const BodyWidget(),
          ),
        );
      },
    );
  }
}
