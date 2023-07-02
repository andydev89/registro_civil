import 'dart:convert';

import 'package:registro_civil_apk/data/models/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'electronic_signature_provider.g.dart';

@riverpod
class ElectronicSignature extends _$ElectronicSignature {
  @override
  ElectronicSignatureModel build() {
    return const ElectronicSignatureModel();
  }

  void updateModel(ElectronicSignatureModel model) {
    state = state.copyWithFromModel(model);
  }

  void setFirstStep({
    required ESignatureFirstSubModel signatureFirstSubModel,
  }) {
    state = state.copyWith(
      type: signatureFirstSubModel.signatureType,
      userNui: signatureFirstSubModel.userNui,
      personType: signatureFirstSubModel.personType,
      isTokenRenovation: signatureFirstSubModel.isTokenRenovation ?? false,
      hasDeviceToken: signatureFirstSubModel.hasDeviceToken ?? false,
      isACustomsAgent: signatureFirstSubModel.isACustomsAgent ?? false,
    );
  }

  /*void setSecondStep(ProcedureReasonSubModel reason) {
    state = state.copyWith(
      agency: LocationModel(
          id: reason.agency.id, name: reason.agency.name),
      provinceId: reason.province,
      reasonType: reason.reason,
    );
  }*/
}
