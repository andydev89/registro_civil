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
      deviceTokenSerialNumber: signatureFirstSubModel.deviceTokenSerialNumber,
    );
  }

  void setSecondStep({
    required ESignaturePersonalBillingModel personalBillingModel,
  }) {
    state = state.copyWith(
      contactAddress: personalBillingModel.address,
      contactPostalCode: personalBillingModel.postalCode,
      provinceId: personalBillingModel.province,
      cantonId: personalBillingModel.city,
      parroquiaId: personalBillingModel.parish,
      hasRUCIncluded: personalBillingModel.hasRUCIncluded ?? false,
      ruc: personalBillingModel.ruc,
      validityTime: personalBillingModel.validityTime,
      useCase: personalBillingModel.useCase,
    );
  }

}
