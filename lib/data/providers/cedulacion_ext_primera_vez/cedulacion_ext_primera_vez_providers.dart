import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cedulacion_ext_primera_vez_providers.g.dart';

@riverpod
class ValidarVisa extends _$ValidarVisa {
  Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> validarvisa(
    CedulacionExtpVModel? model,
  ) async {
    final api = ref.watch(apiProvider);

    final response = await api.validateVisaDataRequest(model!);
    return response.success
        ? Result.ok(response.data! as CommandWithTransactionCodeModel)
        : Result.err(response.status);
  }

  @override
  ValidarVisa build() {
    return ValidarVisa();
  }
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> validandovisa(
  ValidandovisaRef ref, {
  CedulacionExtpVModel? model,
}) async {
  final api = ref.read(apiProvider);

  final response = await api.validateVisaDataRequest(model!);
  return response.success
      ? Result.ok(response.data! as CommandWithTransactionCodeModel)
      : Result.err(response.status);
}
