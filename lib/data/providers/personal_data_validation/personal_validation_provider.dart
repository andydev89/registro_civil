import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';

part 'personal_validation_provider.g.dart';

@Riverpod(keepAlive: true)
class PersonalValidationRequests extends _$PersonalValidationRequests {
  @override
  Map<String, ModifiedDataModel> build() {
    return {};
  }

  void clearData() {
    state.clear();
  }

  ModifiedDataModel? getByKey(String key) {
    return state[key];
  }

  bool hasData() {
    return state.entries.isNotEmpty;
  }

  void addRequest({required String key, required ModifiedDataModel model}) {
    state = {...state, key: model};
  }

  String removeRequest({required String key}) {
    var previous = '';
    if (state.containsKey(key)) {
      previous = state[key]?.original ?? '';
      //state.remove(key);
      state = Map.fromEntries(
        state.entries.where((entry) => entry.key != key),
      );
    }
    return previous;
  }

  void init(PersonalValidationListModel modifications) {
    final data = modifications.modifiedData
        .map(
          (e) => {
            '${e.attribute}': ModifiedDataModel(
              original: e.original,
              modified: e.modified ?? '',
            )
          },
        );
    final combinedMap = Map<String, ModifiedDataModel>.fromEntries(
      data.expand((map) => map.entries),
    );
    state = {...combinedMap};
  }
}

@riverpod
Future<ResponseModelPagination<List<PersonalValidationListModel>>>
    personalValidations(
  PersonalValidationsRef ref, {
  int? pageNo,
}) async {
  final api = ref.watch(apiProvider);
  final me = await ref.watch(meProvider.future);
  final response =
      await api.personalValidationRequests(pageNo: pageNo ?? 0, userId: me.id);
  return response;
}

@riverpod
Future<Result<CommandNuiModel, StatusCodeType>> personalData(
  PersonalDataRef ref, {
  required PersonalValidationRequestModel model,
}) async {
  final api = ref.watch(apiProvider);
  final result = await api.createPersonalDataRequest(model);
  if (result.success) {
    return Result.ok(result.data!);
  }
  return Result.err(result.status);
}

@riverpod
Future<PersonalValidationResponseModel?> personalDataById(
  PersonalDataByIdRef ref,
) async {
  final api = ref.watch(apiProvider);
  final me = await ref.watch(meProvider.future);
  final response = (await api.personalDataById(me.identification)).data;
  return response;
}
