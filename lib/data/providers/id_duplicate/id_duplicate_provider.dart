import 'dart:convert';
import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'id_duplicate_provider.g.dart';

@riverpod
class IdDuplicate extends _$IdDuplicate {
  @override
  IdDuplicateModel build() {
    return const IdDuplicateModel();
  }

  void updateModel(IdDuplicateModel model) {
    state = state.copyWithFromModel(model);
  }

  void setFirstStep({
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
  }
}

@riverpod
class IdDuplicateApi extends _$IdDuplicateApi {
  @override
  void build() {
    return;
  }

  Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> duplicate(
    IdDuplicateModel model,
  ) async {
    final api = ref.watch(apiProvider);
    final result = await api.createDuplicate(model);
    if (result.success) {
      return Result.ok(result.data!);
    }
    return Result.err(result.status);
  }
}

@riverpod
Future<ResponseModelPagination<List<IdDuplicateResponseModel>>> duplicates(
  DuplicatesRef ref, {
  int? pageNo,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.duplicates(pageNo: pageNo ?? 0);
  return response;
}

@riverpod
Future<IdDuplicateModel> duplicateById(
  DuplicateByIdRef ref,
  String id,
) async {
  final api = ref.watch(apiProvider);
  final response = (await api.duplicateById(id)).data!;
  return response;
}
