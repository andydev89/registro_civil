import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commons_providers.g.dart';

@riverpod
Future<Result<List<LocationModel>, StatusCode>> provinces(
  ProvincesRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.provinces(0, 20);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<AgencyModel>, StatusCode>> agencies(
  AgenciesRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.agencies(0, 20);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
