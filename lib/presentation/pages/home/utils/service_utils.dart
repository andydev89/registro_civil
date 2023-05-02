import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/providers/type_services/type_services_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

PageRouteInfo<dynamic> getSimpleCertificateRoute(
  TypeServiceModel type,
) =>
    SimpleCertificateRouterRoute(
      children: [
        SimpleCertificateFirstStepRouterRoute(
          typeSimpleCertificate: type,
          children: [
            SimpleCertificateFirstStepFamiliarRoute(
              typeSimpleCertificate: type,
            ),
          ],
        ),
      ],
    );

PageRouteInfo<dynamic> getActaRegistral(
  TypeServiceModel type,
) =>
    SimpleCertificateRouterRoute(
      children: [
        SimpleCertificateFirstStepRouterRoute(
          typeSimpleCertificate: type,
          children: [
            SimpleCertificateFirstStepFamiliarRoute(
              typeSimpleCertificate: type,
            ),
          ],
        ),
      ],
    );

PageRouteInfo<dynamic> getSchedule() => const ScheduleTurnRouterRoute();
PageRouteInfo<dynamic> getMarriageCelebration() =>
    const MarriageCelebrationRouterRoute();

PageRouteInfo<dynamic> getRoute(TypeServiceModel typeServiceModel) {
  final type = typeServiceModel.type;
  if (type.isSimpleCertificate) {
    return getSimpleCertificateRoute(typeServiceModel);
  }
  if (type.isActaRegistral) {
    return getActaRegistral(typeServiceModel);
  }
  if (type.isSchedule) {
    return getSchedule();
  }
  return getMarriageCelebration();
}

// CIRCLE AVATAR CARD GRID

void scrollListener(
  WidgetRef ref,
  ScrollController controller, {
  required ValueNotifier<bool> isLoading,
  required int pageNumber,
  required int totalPages,
  required void Function() onLoadMore,
}) {
  if (controller.position.pixels == controller.position.maxScrollExtent &&
      !isLoading.value &&
      pageNumber + 1 < totalPages) {
    onLoadMore.call();
    _loadMoreItems(ref: ref, pageNumber: pageNumber + 1, isLoading: isLoading);
  }
}

void _loadMoreItems({
  required WidgetRef ref,
  required ValueNotifier<bool> isLoading,
  required int pageNumber,
}) {
  isLoading.value = true;
  ref.read(typeServicesFilterProvider.notifier).setPageNo(
        pageNumber,
      );
}

Future<void> fetchPage(
  WidgetRef ref,
  int pageKey,
  PagingController<int, TypeServiceModel> pagingController,
) async {
  try {
    final api = ref.read(apiProvider);
    final newItems = await api.typeServices(pageNo: pageKey);
    final isLastPage = newItems.totalPages! <= pageKey+1;
    if (isLastPage) {
      pagingController.appendLastPage(newItems.data!);
    } else {
      final nextPageKey = pageKey + 1;
      pagingController.appendPage(newItems.data!, nextPageKey);
    }
  } catch (error) {
    pagingController.error = error;
  }
}
