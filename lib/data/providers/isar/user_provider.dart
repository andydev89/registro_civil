import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/isar/isar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_provider.g.dart';

@riverpod
class User extends _$User {
  @override
  RegisterModel build() {
    final isar = ref.watch(isarProvider);
    final user = isar.registerModels.getSync(0) ?? RegisterModel();
    return user;
  }

  void save(RegisterModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.registerModels.putSync(model));
    state = model;
  }

  void saveLogin(LoginModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(
      () => isar.registerModels.putSync(
        RegisterModel(
          nui: model.identification,
        ),
      ),
    );
    state = state.copyWith(nui: model.identification);
  }

  void clear() {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.registerModels.deleteSync(0));
    state = RegisterModel();
  }
}
