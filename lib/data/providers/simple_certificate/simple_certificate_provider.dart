import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/services/services_state_type.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/status_code/status_code_type.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_model.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_response.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'simple_certificate_provider.g.dart';

@riverpod
class SimpleCertificate extends _$SimpleCertificate {
  @override
  void build() {}

  Future<Result<SimpleCertificateResponse, StatusCodeType>>
      simpleCertificateFamiliar({
    required SimpleCertificateFirstStepFamiliarModel familiarModel,
    required ServiceType type,
  }) async {
    final api = ref.watch(apiProvider);
    final user = await api.me();
    final response = await api.simpleCertificate(
      SimpleCertificateModel.fromFamily(
        type: type,
        userNui: user.data!.identification,
        typeFamily: familiarModel.relationship,
        nuiFamily: familiarModel.nui,
        isConadis: familiarModel.conadisModel.conadis,
        nuiConadis: familiarModel.conadisModel.conadisNumber,
      ),
    );
    if (response.success) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }

  Future<Result<SimpleCertificateResponse, StatusCodeType>>
      simpleCertificatePersonal({
    required NuiModel model,
    required ServiceType type,
  }) async {
    final api = ref.watch(apiProvider);
    final response = await api.simpleCertificate(
      SimpleCertificateModel.fromPersonal(
        type: type,
        userNui: model.nui,
      ),
    );
    if (response.success) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }
}

@riverpod
class Process extends _$Process {
  @override
  void build() {}

  Future<Result<ProcessResponse, StatusCodeType>> processSimpleCertificate({
    required String id,
    String observations = '',
    ServicesStateType? state,
  }) async {
    final api = ref.watch(apiProvider);
    final response = await api.process(
      ProcessModel(
        id: id,
        state: state ?? ServicesStateType.approved,
        observations: observations,
      ),
    );
    if (response.success) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }
}

@riverpod
class Cancel extends _$Cancel {
  @override
  void build() {}

  Future<Result<ProcessResponse, StatusCodeType>> cancelSimpleCertificate({
    required String id,
    String observations = '',
  }) async {
    final api = ref.watch(apiProvider);
    final response = await api.cancel(
      CancelModel(
        id: id,
        observations: observations,
      ),
    );
    if (response.success) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }
}
