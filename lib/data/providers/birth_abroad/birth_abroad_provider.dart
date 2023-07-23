import 'dart:convert';

import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'birth_abroad_provider.g.dart';

@riverpod
class BirthAbroad extends _$BirthAbroad {
  @override
  BirthAbroadModel build() {
    return const BirthAbroadModel();
  }

  void updateModel(BirthAbroadListModel model) {
    state = state.copyWithFromListModel(model);
  }

  void setFirstStep({
    required RegisterOwnerSubModel registerOwner,
    required ForeignType foreignType,
    required String requestOwnerId,
  }) {
    state = state.copyWith(
      foreignType: foreignType,
      requestOwner: requestOwnerId,
      registerOwnerType:
          registerOwner.registerOwnerType ?? RegisterOwnerType.attorney,
      registerOwner: RegisterOwner(
        name: registerOwner.name,
        identification: registerOwner.identification,
        email: registerOwner.email,
        phone: registerOwner.phone,
      ),
    );
  }

  RegisterOwnerSubModel getFirstStep() {
    return RegisterOwnerSubModel(
      name: state.registerOwner?.name,
      identification: state.registerOwner?.identification,
      email: state.registerOwner?.email,
      phone: state.registerOwner?.phone,
      registerOwnerType: state.registerOwnerType,
    );
  }

  void setSecondStep({
    required DocumentsSubModel documents,
  }) {
    state = state.copyWith(
      birthCertificate: documents.birthCertificate,
      identity: documents.identity,
      powerOfAttorney: documents.powerOfAttorney,
    );
  }

  DocumentsSubModel getSecondStep() {
    return DocumentsSubModel(
      birthCertificate: state.birthCertificate,
      registerOwnerType: state.registerOwnerType,
      identity: state.identity,
      powerOfAttorney: state.powerOfAttorney,
    );
  }

  void setThirdStep({
    required LocationSubModel locations,
  }) {
    state = state.copyWith(
      provinceId: locations.province,
      cantonId: locations.canton,
      agencyId: locations.agency,
    );
  }
}

@riverpod
class BirthAbroadFilter extends _$BirthAbroadFilter {
  @override
  QueryBirthAbroad build() {
    return QueryBirthAbroad();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }
}

@riverpod
Future<ResponseModelPagination<List<BirthAbroadListModel>>> birthsAbroad(
  BirthsAbroadRef ref, {
  int? pageNo,
}) async {
  final query = ref.watch(birthAbroadFilterProvider);
  final api = ref.watch(apiProvider);
  final response = await api.birthsAbroad(
    pageNo: pageNo ?? query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
  );
  return response;
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>>
    createBirthAbroad(
  CreateBirthAbroadRef ref, {
  required BirthAbroadModel model,
}) async {
  final api = ref.watch(apiProvider);
  final result = await api.createBirthAbroad(model: model);
  if (result.success) {
    return Result.ok(result.data!);
  }
  return Result.err(result.status);
}

@riverpod
Future<BirthAbroadListModel> birthAbroadById(
    BirthAbroadByIdRef ref,
    String id,
    ) async {
  final api = ref.watch(apiProvider);
  final response = (await api.birthAbroadById(id)).data!;
  return response;
}

@riverpod
Future<Result<Certificate, StatusCodeType>> documentById(
    DocumentByIdRef ref, {
      required String id,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.documentById(id);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
