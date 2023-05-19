import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';

enum NuiType {
  requestOwner,
  witness1,
  witness2,
  partner1,
  partner2;

  List<String> nuis(MarriageCelebrationModel model) {
    final requestOwner = model.requestOwner?.nui ?? '';
    final witness1 = model.firstWitness?.nui ?? '';
    final witness2 = model.secondWitness?.nui ?? '';
    final contractingParty1 = model.firstPartner?.nui ?? '';
    final contractingParty2 = model.secondPartner?.nui ?? '';
    final isCP =
        model.requestOwnerType == MarriageCelebrationType.contractingParty;
    if (this == NuiType.requestOwner) {
      return {
        witness1,
        witness2,
        if (isCP) '' else contractingParty1,
        contractingParty2
      }.toList();
    }
    if (this == NuiType.witness1) {
      return {
        requestOwner,
        contractingParty1,
        contractingParty2,
        witness2,
      }.toList();
    }
    if (this == NuiType.witness2) {
      return {
        requestOwner,
        contractingParty1,
        contractingParty2,
        witness1,
      }.toList();
    }
    if (this == NuiType.partner1) {
      return {
        if (isCP) '' else requestOwner,
        witness1,
        witness2,
        contractingParty2,
      }.toList();
    }
    // CONTRACTING PARTY 2
    return {
      requestOwner,
      witness1,
      witness2,
      contractingParty1,
    }.toList();
  }
}
