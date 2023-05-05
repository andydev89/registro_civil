// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

Future<void> fetchPage<T>(
  Future<ResponseModelPagination<List<T>>> Function(int)? fetch,
  int pageKey,
  PagingController<int, T> pagingController,
) async {
  try {
    if (fetch == null) return;
    final data = await fetch.call(pageKey);
    final isLastPage = data.totalPages! <= pageKey + 1;
    if (isLastPage) {
      pagingController.appendLastPage(data.data!);
    } else {
      final nextPageKey = pageKey + 1;
      pagingController.appendPage(data.data!, nextPageKey);
    }
  } catch (error) {
    if (error is FlutterError) {
      if (kDebugMode) print(error);
      return;
    }
    pagingController.error = error;
  }
}

PagedChildBuilderDelegate<T> pagedChildBuilderDelegate<T>({
  required BuildContext context,
  required PagingController<int, T> pagingController,
  required Widget Function(BuildContext, T, int) itemBuilder,
}) {
  final l10n = context.l10n;
  return PagedChildBuilderDelegate<T>(
    animateTransitions: true,
    newPageProgressIndicatorBuilder: (context) =>
        const LoadingStatus().verticalPadding(10),
    noItemsFoundIndicatorBuilder: (context) => Center(
      child: PrimaryText(l10n.noHayElementosMostrar),
    ),
    firstPageProgressIndicatorBuilder: (context) => const LoadingStatus(),
    newPageErrorIndicatorBuilder: (context) => ErrorStatus(
      messagge: l10n.errorCargarElementos,
      onPressed: () => pagingController.retryLastFailedRequest(),
    ),
    firstPageErrorIndicatorBuilder: (context) => ErrorStatus(
      messagge: l10n.errorCargarElementos,
      onPressed: () => pagingController.retryLastFailedRequest(),
    ),
    itemBuilder: itemBuilder,
  );
}
