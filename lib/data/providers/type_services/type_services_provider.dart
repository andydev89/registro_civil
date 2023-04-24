import 'package:registro_civil_apk/data/models/commons/querys_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
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
}

@riverpod
Future<List<TypeServiceModel>> typeServices(TypeServicesRef ref) async {
  final query = ref.watch(typeServicesFilterProvider);
  final api = ref.watch(apiProvider);
  return (await api.typeServices(
    query.pageNo,
    query.pageSize,
    query.filter,
    query.sortBy,
    query.sortType.toJson,
  ))
      .data!;
}
