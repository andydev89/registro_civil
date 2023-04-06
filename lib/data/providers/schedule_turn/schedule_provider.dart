import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'schedule_provider.g.dart';

@riverpod
Future<Result<List<ScheduleModel>, StatusCode>> availableSchedules(
  AvailableSchedulesRef ref,
  DateTime startDate,
  DateTime endDate,
  int typeOfService,
) async {
  final api = ref.watch(apiProvider);
  //TODO hacer la paginacion
  final response = await api.availableSchedules(
    0,
    20,
    startDate.onlyDate,
    endDate.onlyDate,
    typeOfService,
  );
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
