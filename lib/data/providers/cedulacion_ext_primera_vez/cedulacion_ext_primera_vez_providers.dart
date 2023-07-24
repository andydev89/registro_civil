import 'package:oxidized/oxidized.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cedulacion_ext_primera_vez_providers.g.dart';

@riverpod
class Validarvisa extends _$Validarvisa {
  Validarvisa build() {
    return Validarvisa();
  }

  Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> validarvisa(
    CedulacionExtpVModel model,
  ) async {
    final api = ref.read(apiProvider);
    // final me = await ref.watch(meProvider.future);

    final response = await api.validateVisaDataRequest(model);
    return response.success
        ? Result.ok(response.data! as CommandWithTransactionCodeModel)
        : Result.err(response.status);
  }
}
