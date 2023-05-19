import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ServicesPage extends ConsumerWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LoadingProviderWidget<
        ResponseModelPagination<List<TypeServiceModel>>>(
      async: ref.watch(typeServicesProvider),
      onRefreshIndicatot: () => ref.refresh(typeServicesProvider.future),
      onRefresh: () => ref.refresh(typeServicesProvider),
      data: (data) => CircleAvatarCardGrid(
        totalPages: data.totalPages,
        firstElements: data.data ?? [],
        fetch: (index) => ref.watch(typeServicesFetchProvider(index).future),
      ),
    );
  }
}
