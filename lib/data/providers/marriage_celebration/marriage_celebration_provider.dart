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

  void setFirstStep(RequestOwner requestOwner){
    state = state.copyWith(requestOwner: requestOwner);
  }
}
