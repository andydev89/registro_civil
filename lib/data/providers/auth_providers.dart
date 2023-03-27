import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
class Register extends _$Register {
  @override
  RegisterModel build() {
    return RegisterModel();
  }

  void updateNui(NuiModel nui) {
    state = state.copyWith(nui: nui.nui);
  }

  void updateEnterData(EnterDataModel enterData) {
    state = state.copyWith(
      email: enterData.email,
      phone: enterData.phoneNumber,
    );
  }

  void updatePassword(PasswordModel password) {
    state = state.copyWith(
      password: password.confirmPassword!.confirmPassword,
    );
  }

  // void _reset() => state = RegisterModel();
}

// @riverpod
// Future<bool> checkRegister(
//     CheckRegisterRef ref, RegisterModel registerModel) async {
//   final api = ref.watch(apiProvider);
//   await Future.delayed(const Duration(seconds: 2), () {});
//   // final response = await api.register(registerModel);
//   // return response.statusCode == 200;
//   return false;
// }

@riverpod
Future<String?> login(LoginRef ref, LoginModel loginModel) async {
  final api = ref.watch(apiProvider);
  final response = await api.login(loginModel);
  if (response.status == 200) {
    return response.data?.first.jwtToken;
  }
  return null;
}

final isLoggedIn = ValueNotifier(false);

// @riverpod
// class IsLoggedIn extends _$IsLoggedIn {
//   @override
//   bool build() {
//     return false;
//   }

//   @override
//   bool get state;

//   @override
//    set state(bool value) {
//     state = value;
//   }
// }
