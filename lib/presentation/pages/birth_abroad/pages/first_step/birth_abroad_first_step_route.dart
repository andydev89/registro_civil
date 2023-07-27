import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadFirstStepRouterPage extends HookWidget {
  const BirthAbroadFirstStepRouterPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
    this.birthId,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final String? birthId;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return operation.isRead
            ? LoadingProviderWidget(
                async: ref.watch(birthAbroadByIdProvider(birthId!)),
                onRefresh: () => ref.refresh(
                  birthAbroadByIdProvider(birthId!),
                ),
                onRefreshIndicator: () => ref.watch(
                  birthAbroadByIdProvider(birthId!).future,
                ),
                data: (data) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => ref
                        .read(birthAbroadProvider.notifier)
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
