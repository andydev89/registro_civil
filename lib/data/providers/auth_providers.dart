import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  Future<Result<bool, StatusCode>> login(LoginModel loginModel) async {
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
      state = const AsyncData(true);
      return const Result.ok(true);
    } else {
      state = const AsyncData(false);
      return Result.err(response.status);
    }
  }

  Future<void> logout() async {
    //TODO ahcer request a logout en el api
    final fresh = ref.watch(freshProvider);
    await fresh.revokeToken();
    await fresh.clearToken();
    state = const AsyncData(false);
  }

  // Future<bool> get isLoggedIn async {
  //   const storage = FlutterSecureStorage();
  //   final value = await storage.read(key: 'token');
  //   if (value != null) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  Future<bool> build() async {
    const storage = FlutterSecureStorage();
    final value = await storage.read(key: 'token');
    if (value != null) {
      return true;
    } else {
      return false;
    }
  }
}
