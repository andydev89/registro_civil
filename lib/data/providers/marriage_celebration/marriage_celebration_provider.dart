import 'dart:convert';

import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'marriage_celebration_provider.g.dart';

@riverpod
class MarriageCelebration extends _$MarriageCelebration {
  @override
  MarriageCelebrationModel build() {
    return const MarriageCelebrationModel(outside: Outside());
  }

  void updateModel(MarriageCelebrationModel model) {
    state = state.copyWithFromModel(model);
  }

// INIT
  void setAttorney() {
    state = const MarriageCelebrationModel(
      outside: Outside(),
    );
  }

  void setContractingParty() {
    state = const MarriageCelebrationModel(
      outside: Outside(),
      requestOwnerType: MarriageCelebrationType.contractingParty,
    );
  }

  // AGENCY
  void setAgency(AgencyModel? agency) {
    state = state.copyWith(agencyId: agency);
  }

  // FIRST STEP

  void setFirstStep(RequestOwner requestOwner) {
    state = state.copyWith(requestOwner: requestOwner);
  }

  // SECOND STEP

  // at headquarters

  void setIsOutside({required bool isOutside}) {
    state = state.copyWith(isOutside: isOutside);
  }

  void setWitness(Witness witness, int index) {
    if (index == 0) {
      state = state.copyWith(firstWitness: witness);
    } else {
      state = state.copyWith(secondWitness: witness);
    }
  }

  // THIRD STEP

  void setPartner(Partner partner, int index) {
    if (index == 0) {
      state = state.copyWith(firstPartner: partner);
    } else {
      state = state.copyWith(secondPartner: partner);
    }
  }

  // MAP STEP
  void setOutsider(Outside outside) {
    state = state.copyWith(outside: outside);
  }
}

@riverpod
class Witnesss extends _$Witnesss {
  @override
  Witness build(int index) {
    return const Witness();
  }

  void init(Witness witness) {
    state = state.copyWithFromWitness(witness);
  }

  void updateModel(Witness witness) {
    state = state.copyWithFromWitness(witness);
  }

  void restart() => state = const Witness();
}

@riverpod
class Partners extends _$Partners {
  @override
  Partner build(int indexPartner) {
    return const Partner();
  }

  void init(Partner partner) {
    state = state.copyWithFromPartner(partner);
  }

  void updateModel(Partner partner) {
    state = state.copyWithFromPartner(partner);
  }

  void restart() => state = const Partner();
}

@riverpod
Future<List<DocumentResponse>> marriageDocuments(
  MarriageDocumentsRef ref, {
  required MaritalStatusType maritalStatus,
  required Binary hasChildren,
  ChildrenRelationShipType? childrenRelationShip,
}) async {
  final api = ref.watch(apiProvider);
  return (await api.marriageDocuments(
        maritalStatus.toText,
        childrenRelationShip?.toText ?? '',
        hasChildren: hasChildren.toBool,
      ))
          .data ??
      [];
}

@riverpod
class Marriage extends _$Marriage {
  @override
  void build() {
    return;
  }

  Future<Result<bool, StatusCodeType>> marriage(
    MarriageCelebrationModel model,
  ) async {
    final api = ref.watch(apiProvider);
    final result = await api.marriage(model);
    if (result.success) {
      return const Result.ok(true);
    }
    return Result.err(result.status);
  }
}

@riverpod
class MarriagesFilter extends _$MarriagesFilter {
  @override
  QueryMarriages build() {
    return QueryMarriages();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }

  void setPageNo(int pageNo, {int pageSize = 20}) {
    state = state.copyWith(pageNo: pageNo, pageSize: pageSize);
  }
}

@riverpod
Future<ResponseModelPagination<List<ResponseMarriageModel>>> marriages(
  MarriagesRef ref, {
  int? pageNo,
}) async {
  final query = ref.watch(marriagesFilterProvider);
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  final response = await api.marriages(
    user.identification,
    pageNo: pageNo ?? query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
    agencyName: query.agencyName,
    amountOfDays: query.amountOfDays,
    cantonName: query.cantonName,
    createdAt: query.createdAt,
    interviewAt: query.interviewAt,
    provinceName: query.provinceName,
    state: query.state,
    updatedAt: query.updatedAt,
    userId: query.userId,
  );
  return response;
}

@riverpod
Future<MarriageCelebrationModel> marriageById(
  MarriageByIdRef ref,
  String id,
) async {
  final api = ref.watch(apiProvider);
  return (await api.marriageById(id)).data!;
}

@riverpod
class MarriageUpdate extends _$MarriageUpdate {
  @override
  void build() {}

  Future<Result<bool, StatusCodeType>> updateMarriage(
    DocumentsRejection documentsRejection,
  ) async {
    final api = ref.watch(apiProvider);
    final result = await api.marriageUpdate(documentsRejection);
    if (result.success) {
      return const Result.ok(true);
    }
    return Result.err(result.status);
  }
}
