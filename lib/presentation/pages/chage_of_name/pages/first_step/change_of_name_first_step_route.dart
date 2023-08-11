import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/change_of_name/change_of_name.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ChangeNameFirstStepRouterPage extends HookWidget {
  const ChangeNameFirstStepRouterPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
    this.changeOfNameId,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final String? changeOfNameId;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return operation.isRead
            ? LoadingProviderWidget(
                async: ref.watch(changeOfNameByIdProvider(changeOfNameId!)),
                onRefresh: () => ref.refresh(
                  changeOfNameByIdProvider(changeOfNameId!),
                ),
                onRefreshIndicator: () => ref.watch(
                  changeOfNameByIdProvider(changeOfNameId!).future,
                ),
                data: (data) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => ref
                        .read(changeNameProvider.notifier)
                        .updateModel(data),
                  );
                  return TypeServiceBodyWidget(
                    operation: operation,
                    typeServiceModel: typeServiceModel,
                  );
                },
              )
            : TypeServiceBodyWidget(typeServiceModel: typeServiceModel);
      },
    );
  }
}
