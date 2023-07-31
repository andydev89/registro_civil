import 'dart:convert';

import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
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

  String? getId() {
    return state.id;
  }

  RegisterOwnerType getRegisterOwnerType() {
    return state.registerOwnerType;
  }

  void setFirstStep({
    required RegisterOwnerSubModel registerOwner,
    required String requestOwnerId,
    required bool isResident,
  }) {
    final foreignType =
        isResident ? ForeignType.resident : ForeignType.noResident;
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
      type: state.foreignType,
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
  final data = await ref.watch(loginProvider.notifier).future;
  // final type = data ? ForeignType.resident : ForeignType.noResident;
  // ref.watch(birthAbroadProvider.notifier).setForeignType(type);
  ResponseModelPagination<List<BirthAbroadListModel>> response;
  if (data) {
    response = await api.birthsAbroad(
      pageNo: pageNo ?? query.pageNo,
      pageSize: query.pageSize,
      filter: query.filter,
    );
  } else {
    //Si no tiene filtro enviar un espacio vacio para que no liste todos los elementos
    //Solo debe listar los que coincidan con el nro de pasaporte del usuario.
    final filter = query.filter.isEmpty ? ' ' : query.filter;
    response = await api.birthsAbroadNoResident(
      pageNo: pageNo ?? query.pageNo,
      pageSize: query.pageSize,
      filter: filter,
    );
  }
  return response;
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>>
    createBirthAbroad(
  CreateBirthAbroadRef ref, {
  required BirthAbroadModel model,
}) async {
  final api = ref.watch(apiProvider);
  final data = await ref.watch(loginProvider.notifier).future;
  ResponseModel<CommandWithTransactionCodeModel> result;
  if (data) {
    result = await api.createBirthAbroad(model: model);
  } else {
    result = await api.createNoResidentBirthAbroad(model: model);
  }
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
  final data = await ref.watch(loginProvider.notifier).future;
  BirthAbroadListModel response;
  if (data) {
    response = (await api.birthAbroadById(id)).data!;
  } else {
    response = (await api.birthAbroadNoResidentById(id)).data!;
  }
  return response;
}

@riverpod
Future<Result<Certificate, StatusCodeType>> documentById(
  DocumentByIdRef ref, {
  required String id,
}) async {
  final api = ref.watch(apiProvider);
  ResponseModel<Certificate> response;
  final data = await ref.watch(loginProvider.notifier).future;
  if (data) {
    response = await api.documentById(id);
  } else {
    response = await api.documentNoResidentById(id);
  }
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<CommandModel, StatusCodeType>> editBirthAbroadDocs(
  EditBirthAbroadDocsRef ref, {
  required BirthAbroadDocumentModel model,
}) async {
  final api = ref.watch(apiProvider);
  final data = await ref.watch(loginProvider.notifier).future;
  ResponseModel<CommandModel> result;
  if (data) {
    result = await api.editBirthAbroad(model: model);
  } else {
    result = await api.editNoResidentBirthAbroad(model: model);
  }
  if (result.success) {
    return Result.ok(result.data!);
  }
  return Result.err(result.status);
}
