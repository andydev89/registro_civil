import 'package:fresh_dio/fresh_dio.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
class Register extends _$Register {
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

  @override
  RegisterModel build() {
    return RegisterModel();
  }
}

@riverpod
class Login extends _$Login {
  Future<void> login(LoginModel loginModel) async {
    final api = ref.watch(apiProvider);
    final response = await api.login(loginModel);
    final fresh = ref.watch(freshProvider);
    if (response.status == StatusCode.s200) {
      final oauthToken = OAuth2Token(
        accessToken: response.data!.first.jwtToken, tokenType: 'Bearer',
        //TODO pasar el refresh token
        // refreshToken: response.result!.refreshToken,
      );
      await fresh.setToken(oauthToken);
      state = const Result.ok(true);
    } else {
      state = Result.err(response.status);
    }
  }

  bool get isLoggedIn {
    return state.when(
      ok: (p0) => p0,
      err: (p0) => false,
    );
  }

  Future<void> logout() async {
    final fresh = ref.watch(freshProvider);
    await fresh.revokeToken();
    state = const Result.ok(false);
  }

  @override
  Result<bool, StatusCode> build() {
    //TODO aqui devolver el user local, si no redireccionar para el login
    return const Result.ok(false);
  }
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
