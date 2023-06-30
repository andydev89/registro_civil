import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_validation_provider.g.dart';

@riverpod
Future<ResponseModelPagination<List<dynamic>>> personalValidations(
    PersonalValidationsRef ref, {
      int? pageNo,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.personalValidationRequests(pageNo: pageNo ?? 0);
  return response;
}
