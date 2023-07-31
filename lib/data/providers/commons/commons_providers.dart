import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commons_providers.g.dart';

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> provinces(
  ProvincesRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.provinces(0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> canton(
  CantonRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.canton(0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> parroquia(
  ParroquiaRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.parroquias(0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<AgencyModel>, StatusCodeType>> agencies(
  AgenciesRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.agencies(0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<AgencyModel>, StatusCodeType>> agenciesByProvince(
  AgenciesByProvinceRef ref, {
  required String provinceId,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.agenciesByProvince(provinceId, 0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}


@riverpod
Future<Result<List<AgencyModel>, StatusCodeType>> agenciesByCanton(
  AgenciesByCantonRef ref, {
  required String cantonId,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.agenciesByCanton(cantonId, 0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> locationByParent(
  LocationByParentRef ref, {
  required String parentId,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.locationByParent(parentId);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> provincesNoAuth(
    ProvincesNoAuthRef ref,
    ) async {
  final api = ref.watch(apiProvider);
  final response = await api.provincesNoAuth(0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<LocationModel>, StatusCodeType>> locationByParentNoAuth(
    LocationByParentNoAuthRef ref, {
      required String parentId,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.locationByParentNoAuth(parentId);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<List<AgencyModel>, StatusCodeType>> agenciesByCantonNoAuth(
    AgenciesByCantonNoAuthRef ref, {
      required String cantonId,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.agenciesByCantonNoAuth(cantonId, 0, 100);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}


@riverpod
Future<Result<List<TypeServiceModel>, StatusCodeType>> services(
  ServicesRef ref, {
  bool? bookable,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.services(0, 100);
  return response.success
      ? Result.ok(
          bookable != null
              ? response.data!
                  .where((element) => element.schedule == bookable)
                  .toList()
              : response.data!,
        )
      : Result.err(response.status);
}

@riverpod
Future<DeviceIpModel> deviceIp(DeviceIpRef ref) async {
  final api = ref.watch(apiProvider);
  try {
    final response = await api.getDeviceIp();
    return response;
  } on Exception catch (_) {
    return DeviceIpModel(ip: '');
  }
}
