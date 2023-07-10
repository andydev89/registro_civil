import 'package:registro_civil_apk/data/enum/services/services.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'type_services_provider.g.dart';

@riverpod
class TypeServicesFilter extends _$TypeServicesFilter {
  @override
  QueryTypeService build(TypeEnumType type) {
    return const QueryTypeService();
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
  TypeEnumType type,
) async {
  final query = ref.watch(typeServicesFilterProvider(type));
  final api = ref.watch(apiProvider);
  return api.typeServices(
      pageNo: query.pageNo,
      pageSize: query.pageSize,
      filter: query.filter,
      sortBy: query.sortBy,
      sortType: query.sortType.toJson,
      type: type.toText);
}

@riverpod
Future<ResponseModelPagination<List<TypeServiceModel>>> typeServicesFetch(
  TypeServicesFetchRef ref,
  TypeEnumType type,
  int pageNo,
) async {
  final api = ref.watch(apiProvider);
  return api.typeServices(
    pageNo: pageNo,
    type: type.toText,
  );
}
