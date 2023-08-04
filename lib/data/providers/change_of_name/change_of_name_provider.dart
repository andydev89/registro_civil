import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_of_name_provider.g.dart';

@riverpod
class ChangeName extends _$ChangeName {
  @override
  ChangeOfNameModel build() {
    return const ChangeOfNameModel();
  }

  void updateModel(ChangeOfNameListModel model) {
    state = state.copyWithFromModel(model);
  }

  /*void setFirstStep({
    required ProcedureTypeSubModel procedureType,
    required String requestOwner,
  }) {
    state = state.copyWith(
      type: procedureType.idDuplicateProcedureType,
      nui: procedureType.nui,
      birthdate: DateFormat('yyyy-MM-dd').format(procedureType.birthDate),
      requestOwner: requestOwner,
    );
  }

  void setSecondStep(ProcedureReasonSubModel reason) {
    state = state.copyWith(
      agency: LocationModel(
          id: reason.agency.id, name: reason.agency.name),
      provinceId: reason.province,
      reasonType: reason.reason,
    );
  }*/
}

@riverpod
Future<ResponseModelPagination<List<ChangeOfNameListModel>>> changeNames(
    ChangeNamesRef ref, {
      int? pageNo,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.changeNames(
    pageNo: pageNo ?? 0,
  );
  return response;
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> changeOfName(
  ChangeOfNameRef ref, {
  required ChangeOfNameModel changeOfNameModel,
}) async {
  final api = ref.read(apiProvider);
  final me = await ref.watch(meProvider.future);
  final changOfNameUpdated = changeOfNameModel.copyWith(
    nui: me.identification,
  );
  final response = await api.changeOfName(changOfNameUpdated);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<ChangeOfNameListModel> changeOfNameById(
    ChangeOfNameByIdRef ref,
    String id,
    ) async {
  final api = ref.watch(apiProvider);
  final response = (await api.changeOfNameById(id)).data!;
  return response;
}
