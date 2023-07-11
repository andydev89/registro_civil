import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cedulacion_ext_primerav_provider.g.dart';

@riverpod
class CedulacionExtPrimeraVez extends _$CedulacionExtPrimeraVez {
  @override
  Future<bool> build() async {
    const storage = FlutterSecureStorage();
    final value = await storage.read(key: 'token');
    if (value != null) {
      return true;
    } else {
      return false;
    }
  }
}
  /*void updateModel(ElectronicSignatureModel model) {
    state = state.copyWithFromModel(model);
  }*/

 

 /* ESignatureFirstSubModel getFirstStep() {
    return ESignatureFirstSubModel(
      userNui: state.userNui ?? '',
      personType: state.personType,
      signatureType: state.type,
      isTokenRenovation: state.isTokenRenovation,
      isACustomsAgent: state.isACustomsAgent,
      hasDeviceToken: state.hasDeviceToken,
      deviceTokenSerialNumber: state.deviceTokenSerialNumber,
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
      validityTime: personalBillingModel.validityTime ??
          SignatureValidityTimeType.oneYear,
      useCase: personalBillingModel.useCase ??
          SignatureUseCaseType.publicProcurementSystem,
    );
  }

  ESignaturePersonalBillingModel getSecondStep(MeModel meModel) {
    return ESignaturePersonalBillingModel(
      fullName: '${meModel.firstName} ${meModel.lastName}',
      phone: meModel.phone,
      email: meModel.email,
      address: state.contactAddress,
      postalCode: state.contactPostalCode ?? '',
      province: state.provinceId,
      city: state.cantonId,
      parish: state.parroquiaId,
      hasRUCIncluded: state.hasRUCIncluded,
      ruc: state.ruc,
      useCase: state.useCase,
      validityTime: state.validityTime,
    );
  }
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> signature(
  SignatureRef ref, {
  required ElectronicSignatureModel model,
}) async {
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

@riverpod
Future<ElectronicSignatureModel> signatureById(
    SignatureByIdRef ref,
    String id,
    ) async {
  final api = ref.watch(apiProvider);
  final response = (await api.signatureById(id)).data!;
  return response;
}
*/