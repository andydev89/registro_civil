import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/commons/binary_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_response_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'marriage_celebration_provider.g.dart';

@riverpod
class MarriageCelebration extends _$MarriageCelebration {
  @override
  MarriageCelebrationModel build() {
    return MarriageCelebrationModel(outside: Outside());
  }

// INIT
  void setAttorney() {
    state = state.copyWith(
      requestOwnerType: MarriageCelebrationType.attorney,
    );
  }

  void setContractingParty() {
    state = state.copyWith(
      requestOwnerType: MarriageCelebrationType.contractingParty,
    );
  }

  // AGENCY
  void setAgency(AgencyModel? agency) {
    state = state.copyWith(agency: agency);
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
class Witness1 extends _$Witness1 {
  @override
  Witness build() {
    return Witness();
  }

  @override
  set state(Witness witness) {
    super.state = witness;
  }

  void restart() => state = Witness();
}

@riverpod
class Witnesss extends _$Witnesss {
  @override
  Witness build(int index) {
    return Witness();
  }

  @override
  set state(Witness witness) {
    super.state = witness;
  }

  void restart() => state = Witness();
}

@riverpod
class Partners extends _$Partners {
  @override
  Partner build(int indexPartner) {
    return Partner();
  }

  @override
  set state(Partner partner) {
    super.state = partner;
  }

  void restart() => state = Partner();
}

@riverpod
Future<List<DocumentResponse>> marriageDocuments(
  MarriageDocumentsRef ref, {
  required MaritalStatus maritalStatus,
  required Binary hasChildren,
  ChildrenRelationShip? childrenRelationShip,
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

  Future<Result<bool, StatusCode>> marriage(
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
