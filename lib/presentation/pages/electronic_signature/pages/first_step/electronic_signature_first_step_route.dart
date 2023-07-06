import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ElectronicSignatureFirstStepRouterPage extends HookWidget {
  const ElectronicSignatureFirstStepRouterPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
    this.signatureId,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;
  final String? signatureId;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return operation.isRead
            ? LoadingProviderWidget(
                async: ref.watch(signatureByIdProvider(signatureId!)),
                onRefresh: () => ref.refresh(
                  signatureByIdProvider(signatureId!),
                ),
                onRefreshIndicator: () => ref.watch(
                  signatureByIdProvider(signatureId!).future,
                ),
                data: (data) {
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => ref
                        .read(electronicSignatureProvider.notifier)
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
