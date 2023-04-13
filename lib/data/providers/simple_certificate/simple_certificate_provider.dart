import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
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

  Future<Result<SimpleCertificateResponse, StatusCode>> simpleCertificateFamiliar({
    required SimpleCertificateFirstStepFamiliarModel familiarModel,
    required TypeSimpleCertificateEnum type,
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
    if (response.status == StatusCode.s200) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }

  Future<Result<SimpleCertificateResponse, StatusCode>> simpleCertificatePersonal({
    required NuiModel model,
    required TypeSimpleCertificateEnum type,
  }) async {
    final api = ref.watch(apiProvider);
    final response = await api.simpleCertificate(
      SimpleCertificateModel.fromPersonal(
        type: type,
        userNui: model.nui,
      ),
    );
    if (response.status == StatusCode.s200) {
      return Result.ok(response.data!);
    }
    return Result.err(response.status);
  }
}
