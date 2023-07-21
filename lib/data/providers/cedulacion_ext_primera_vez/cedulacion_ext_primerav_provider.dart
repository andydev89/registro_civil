import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/cedulacion_ext_primerav/cedulacion_ext_primerav.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'cedulacion_ext_primerav_provider.dart';

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> validarvisa(
  CedulacionExtpVMRef ref, {
  required CedulacionExtpVModel cedulacionExtpVModel,
}) async {
  final api = ref.read(apiProvider);
  final me = await ref.watch(meProvider.future);
  final response = await api.validateVisaDataRequest(cedulacionExtpVModel);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
