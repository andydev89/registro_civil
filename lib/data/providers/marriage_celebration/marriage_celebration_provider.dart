import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'marriage_celebration_provider.g.dart';

@riverpod
class MarriageCelebration extends _$MarriageCelebration {
  @override
  MarriageCelebrationModel build() {
    return MarriageCelebrationModel();
  }

// INIT
  void setAttorney() {
    state = MarriageCelebrationModel(
      requestOwnerType: MarriageCelebrationType.attorney,
    );
  }

  void setContractingParty() {
    state = MarriageCelebrationModel(
      requestOwnerType: MarriageCelebrationType.contractingParty,
    );
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
class Witness2 extends _$Witness2 {
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
