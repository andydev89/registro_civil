import 'package:registro_civil_apk/data/models/register_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
Future<bool> register(RegisterRef ref, RegisterModel registerModel) async {
  final api = ref.watch(apiProvider);
  final response = await api.register(registerModel: registerModel);
  return response.statusCode == 200;
}
