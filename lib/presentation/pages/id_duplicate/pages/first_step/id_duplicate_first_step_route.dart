import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/id_duplicate/widgets/body_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdDuplicateFirstStepRouterPage extends HookWidget {
  const IdDuplicateFirstStepRouterPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
    this.duplicateId,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final String? duplicateId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer(
      builder: (context, ref, _) {
        return operation.isRead
            ? LoadingProviderWidget(
                async: ref.watch(duplicateByIdProvider(duplicateId!)),
                onRefresh: () => ref.refresh(
                  duplicateByIdProvider(duplicateId!),
                ),
                onRefreshIndicatot: () => ref.watch(
                  duplicateByIdProvider(duplicateId!).future,
                ),
                data: (data) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => ref
                        .read(idDuplicateProvider.notifier)
                        .updateModel(data),
                  );
                  return BodyDuplicateWidget(
                    operation: operation,
                    typeServiceModel: typeServiceModel,
                  );
                },
              )
            : BodyDuplicateWidget(typeServiceModel: typeServiceModel);
      },
    );
  }
}
