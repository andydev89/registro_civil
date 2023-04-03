import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/auth/auth_response.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/providers/isar/isar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
class RegisterModelRiv extends _$RegisterModelRiv {
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
        accessToken: response.data!.jwtToken,
        tokenType: 'Bearer',
        expiresIn: response.data!.usefulLifeInMillis,
      );
      await fresh.setToken(oauthToken);
      ref.read(userProvider.notifier).saveLogin(loginModel);
      state = const AsyncData(true);
      return const Result.ok(true);
    } else {
      state = const AsyncData(false);
      return Result.err(response.status);
    }
  }

  Future<void> logout() async {
    final fresh = ref.watch(freshProvider);
    await fresh.revokeToken();
    await fresh.clearToken();
    ref.read(userProvider.notifier).clear();
    state = const AsyncData(false);
  }

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

@riverpod
class Register extends _$Register {
  @override
  Future<bool> build() async {
    return false;
  }

  Future<Result<bool, StatusCode>> register(RegisterModel model) async {
    final api = ref.watch(apiProvider);
    final response = await api.register(model);
    return <bool, Result<bool, StatusCode>>{
      true: const Result.ok(true),
      false: Result.err(response.status),
    }[response.status == StatusCode.s200]!;
  }
}

@riverpod
Future<OAuth2Token?> refreshToken(
  RefreshTokenRef ref,
  String token,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.refreshToken(token);
  if (response.status == StatusCode.s200) {
    final oauthToken = OAuth2Token(
      accessToken: response.data!.jwtToken,
      tokenType: 'Bearer',
      expiresIn: response.data!.usefulLifeInMillis,
    );
    return oauthToken;
  } else {
    return null;
  }
}
