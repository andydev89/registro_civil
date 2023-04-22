import 'package:registro_civil_apk/data/enum/sort/sort_type_enum.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'type_services_provider.g.dart';

@riverpod
Future<ResponseModelPagination<List<TypeServiceModel>>> typeServices(
  TypeServicesRef ref, {
  int pageNo = 0,
  int pageSize = 20,
  String filter = '',
  String sortBy = 'name',
  SortType sortType = SortType.asc,
}) async {
  final api = ref.watch(apiProvider);
  return api.typeServices(pageNo, pageSize, filter, sortBy, sortType.toJson);
}
