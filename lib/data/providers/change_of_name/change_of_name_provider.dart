import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/change_of_name/change_of_name_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_of_name_provider.g.dart';

@riverpod
Future<Result<CommandModel, StatusCode>> changeOfName(
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
