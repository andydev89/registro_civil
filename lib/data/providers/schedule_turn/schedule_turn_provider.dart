import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'schedule_turn_provider.g.dart';

@riverpod
Future<Result<List<ScheduleModel>, StatusCodeType>> availableSchedules(
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
Future<Result<List<ScheduleModel>, StatusCodeType>> schedules(
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
    return const QueryScheduleByUser();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }

  void setPageNo(int pageNo, {int pageSize = 20}) {
    state = state.copyWith(pageNo: pageNo, pageSize: pageSize);
  }

  void setOther(QueryScheduleByUser query) {
    state = state.copyWith(
      from: query.from,
      to: query.to,
      sortType: query.sortType,
    );
  }

  void clearOtherFilter(){
    state = QueryScheduleByUser(
      filter: state.filter,
      pageNo: state.pageNo,
      pageSize: state.pageSize,
      sortBy: state.sortBy,
    );
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
    from: query.from?.onlyDate ?? '',
    to: query.to?.onlyDate ?? '',
  );
  return response;
}

@riverpod
Future<Result<CommandListWithTransactionCodeModel, StatusCodeType>>
    confirmSchedule(
  ConfirmScheduleRef ref, {
  required ReceiptModel recipt,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.confirmSchedule(recipt);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<CheckRelationshipModel, StatusCodeType>> checkRelationship(
  CheckRelationshipRef ref, {
  required String firstNui,
  required String secondNui,
  required String relationship,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.checkRelationship(
    firstNui,
    secondNui,
    relationship,
  );
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
