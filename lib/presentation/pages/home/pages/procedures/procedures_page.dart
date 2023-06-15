import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/type_services/type_services_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ProceduresPage extends ConsumerWidget {
  const ProceduresPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = typeServicesProvider(TypeEnumType.procedure);
    return Column(
      children: [
        PrimarySearch(
          filter: (p0) => ref
              .read(typeServicesFilterProvider(TypeEnumType.procedure).notifier)
              .setFilter(p0),
        ).symmetricPadding(10, 40),
        Expanded(
          child: LoadingProviderWidget<
              ResponseModelPagination<List<TypeServiceModel>>>(
            async: ref.watch(provider),
            onRefreshIndicator: () => ref.refresh(provider.future),
            onRefresh: () => ref.refresh(provider),
            data: (data) => CircleAvatarCardGrid(
              totalPages: data.totalPages,
              firstElements: data.data ?? [],
              fetch: (index) => ref.watch(
                typeServicesFetchProvider(TypeEnumType.procedure, index).future,
              ),
            ),
            loadingWidget: const GridSkeletonCircleAvatarCardWidget(),
          ),
        ),
      ],
    );
  }
}
