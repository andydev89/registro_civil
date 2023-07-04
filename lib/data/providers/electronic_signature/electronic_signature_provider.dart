import 'dart:convert';

import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
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

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> signature(
    SignatureRef ref, {required ElectronicSignatureModel model,}) async {
  final api = ref.watch(apiProvider);
  final result = await api.createSignature(model);
  if (result.success) {
    return Result.ok(result.data!);
  }
  return Result.err(result.status);
}

@riverpod
Future<ResponseModelPagination<List<ElectronicSignatureModel>>> signatures(
    SignaturesRef ref, {
      int? pageNo,
    }) async {
  final api = ref.watch(apiProvider);
  final response = await api.signatures(pageNo: pageNo ?? 0);
  return response;
}
