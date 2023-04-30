import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
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
  required int typeOfService,
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
  //TODO hacer paginado
  final response = await api.schedules(0, 20);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<UserScheduleModel>, StatusCode>> schedulesByUser(
  SchedulesByUserRef ref,
) async {
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  //TODO hacer paginado
  final response = await api.schedulesByUser(0, 20, user.id);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
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
