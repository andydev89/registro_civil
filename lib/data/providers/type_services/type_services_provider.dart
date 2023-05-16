import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'type_services_provider.g.dart';

@riverpod
class TypeServicesFilter extends _$TypeServicesFilter {
  @override
  QueryTypeService build() {
    return QueryTypeService();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }

  void setPageNo(int pageNo, {int pageSize = 4}) {
    state = state.copyWith(pageNo: pageNo, pageSize: pageSize);
  }
}

@riverpod
Future<ResponseModelPagination<List<TypeServiceModel>>> typeServices(
  TypeServicesRef ref,
) async {
  final query = ref.watch(typeServicesFilterProvider);
  final api = ref.watch(apiProvider);
  return api.typeServices(
    pageNo: query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
    sortBy: query.sortBy,
    sortType: query.sortType.toJson,
  );
}

@riverpod
Future<ResponseModelPagination<List<TypeServiceModel>>> typeServicesFetch(
  TypeServicesFetchRef ref,
  int pageNo,
) async {
  final api = ref.watch(apiProvider);
  return api.typeServices(
    pageNo: pageNo,
  );
}
