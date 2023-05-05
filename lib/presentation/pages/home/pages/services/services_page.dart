import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/providers/type_services/type_services_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/loading_provider_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class ServicesPage extends ConsumerWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LoadingProviderWidget<
        ResponseModelPagination<List<TypeServiceModel>>>(
      async: ref.watch(typeServicesProvider),
      onRefresh: () => ref.refresh(typeServicesProvider),
      data: (data) => CircleAvatarCardGrid(
        totalPages: data.totalPages,
        firstElements: data.data!,
        firstPage: 1,
        fetch: (p0) => ref.read(apiProvider).services(p0, 4),
      ),
    );
  }
}
