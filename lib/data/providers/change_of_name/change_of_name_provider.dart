import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_of_name_provider.g.dart';

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>> changeOfName(
  ChangeOfNameRef ref, {
  required ChangeOfNameModel changeOfNameModel,
}) async {
  final api = ref.read(apiProvider);
  final me = await ref.watch(meProvider.future);
  final changOfNameUpdated = changeOfNameModel.copyWith(
    nui: me.identification,
  );
  final response = await api.changeOfName(changOfNameUpdated);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
