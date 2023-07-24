import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PersonalValidationFirstStepRouterPage extends HookWidget {
  const PersonalValidationFirstStepRouterPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
    this.requestId,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final String? requestId;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        ref.watch(personalValidationRequestsProvider.notifier).clearData();
        return operation.isRead
            ? LoadingProviderWidget(
                async: ref.watch(personalValidationsProvider()),
                onRefresh: () => ref.refresh(
                  personalValidationsProvider(),
                ),
                onRefreshIndicator: () => ref.watch(
                  personalValidationsProvider().future,
                ),
                data: (data) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => ref
                        .read(personalValidationRequestsProvider.notifier)
                        .init(data.data!.first),
                  );
                  return TypeServiceBodyWidget(
                    operation: operation,
                    typeServiceModel: typeServiceModel,
                  );
                },
              )
            : TypeServiceBodyWidget(
                typeServiceModel: typeServiceModel,
              );
      },
    );
  }
}
