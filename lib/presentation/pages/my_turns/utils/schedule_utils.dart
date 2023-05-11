import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/user_schedule_model.dart';
// import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';

Future<void> fetchPage(
  WidgetRef ref,
  int pageKey,
  PagingController<int, UserScheduleModel> pagingController,
) async {
  try {
    // ref.watch(schedulesByUserProvider).whenData((value) {
    //   final isLastPage = value.totalPages! <= pageKey + 1;
    //   if (isLastPage) {
    //     pagingController.appendLastPage(value.data!);
    //   } else {
    //     final nextPageKey = pageKey + 1;
    //     pagingController.appendPage(value.data!, nextPageKey);
    //   }
    // });
  } catch (error) {
    pagingController.error = error;
  }
}
