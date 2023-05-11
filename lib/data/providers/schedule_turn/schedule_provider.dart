import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/commons/querys_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/receipt_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/user_schedule_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'schedule_provider.g.dart';

@riverpod
Future<Result<List<ScheduleModel>, StatusCode>> availableSchedules(
  AvailableSchedulesRef ref, {
  required DateTime startDate,
  required DateTime endDate,
  required String agency,
  required String typeOfService,
  required bool special,
}) async {
  final api = ref.watch(apiProvider);
  //No hace falta paginado porque el maximo es un mes
  final response = await api.availableSchedules(
    0,
    31,
    startDate.onlyDate,
    endDate.onlyDate,
    agency,
    typeOfService,
    special: special,
  );
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<ScheduleModel>, StatusCode>> schedules(
  SchedulesRef ref,
) async {
  final api = ref.watch(apiProvider);
  // TODO(alejandro): hacer paginado
  final response = await api.schedules(0, 20);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
class SchedulesByUserFilter extends _$SchedulesByUserFilter {
  @override
  QueryScheduleByUser build() {
    return QueryScheduleByUser();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }

  void setPageNo(int pageNo, {int pageSize = 20}) {
    state = state.copyWith(pageNo: pageNo, pageSize: pageSize);
  }
}

@riverpod
Future<ResponseModelPagination<List<UserScheduleModel>>> schedulesByUser(
  SchedulesByUserRef ref, {
  int? pageNo,
}) async {
  final query = ref.watch(schedulesByUserFilterProvider);
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  final response = await api.schedulesByUser(
    user.id,
    pageNo: pageNo ?? query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
    sortBy: query.sortBy,
    sortType: query.sortType.toJson,
    from: query.from,
    to: query.to,
  );
  return response;
}

@riverpod
Future<ResponseModelPagination<List<UserScheduleModel>>> fetchSchedulesByUser(
  FetchSchedulesByUserRef ref,
  QueryScheduleByUser query,
) async {
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  final response = await api.schedulesByUser(
    user.id,
    pageNo: query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
    sortBy: query.sortBy,
    sortType: query.sortType.toJson,
    from: query.from,
    to: query.to,
  );
  return response;
}

@riverpod
Future<Result<BookedReceiptModel, StatusCode>> confirmSchedule(
  ConfirmScheduleRef ref, {
  required ReceiptModel recipt,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.confirmSchedule(recipt);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
