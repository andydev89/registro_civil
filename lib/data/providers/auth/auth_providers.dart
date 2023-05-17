import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_providers.g.dart';

@riverpod
class Login extends _$Login {
  Future<Result<bool, StatusCodeType>> login(LoginModel loginModel) async {
    final api = ref.watch(apiProvider);
    final response = await api.login(loginModel);
    final fresh = ref.watch(freshProvider);
    if (response.status == StatusCodeType.s200) {
      final oauthToken = OAuth2Token(
        accessToken: response.data!.jwtToken,
        tokenType: 'Bearer',
        expiresIn: response.data!.usefulLifeInMillis,
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
    final fresh = ref.watch(freshProvider);
    await fresh.revokeToken();
    await fresh.clearToken();
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
class RegisterValidateCitizen extends _$RegisterValidateCitizen {
  @override
  RegisterCitizenModel? build() {
    return null;
  }

  Future<Result<RegisterCitizenModel, StatusCodeType>> registerValidateCitizen(
    NuiModel model,
  ) async {
    final api = ref.watch(apiProvider);
    final response = await api.registerValidateNui(model);
    if (response.status == StatusCodeType.s200) {
      state = response.data;
      return Result.ok(state!);
    }
    return Result.err(response.status);
  }
}

@riverpod
class RegisterData extends _$RegisterData {
  @override
  CommandModel? build() {
    return null;
  }

  Future<Result<CommandModel, StatusCodeType>> registerData(
    EnterDataModel model,
  ) async {
    final api = ref.watch(apiProvider);
    final response = await api.registerData(model);
    if (response.status == StatusCodeType.s200) {
      state = response.data;
      return Result.ok(state!);
    }
    return Result.err(response.status);
  }
}

@riverpod
class RegisterCode extends _$RegisterCode {
  @override
  bool build() {
    return false;
  }

  Future<Result<bool, StatusCodeType>> registerCode(
    RegisterModel model,
  ) async {
    final api = ref.watch(apiProvider);
    final response = await api.registerCode(model);
    if (response.status == StatusCodeType.s200) {
      return const Result.ok(true);
    }
    return Result.err(response.status);
  }
}

@riverpod
class Citizen extends _$Citizen {
  @override
  RegisterCitizenModel build() {
    return const RegisterCitizenModel();
  }

  void setCitizen(RegisterCitizenModel model) {
    state = state.copyWithFromModel(model);
  }
}

@riverpod
Future<Result<List<TelephoneOperatorModel>, StatusCodeType>> operators(
  OperatorsRef ref,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.telephoneOperator(0, 20);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<OAuth2Token?> refreshToken(
  RefreshTokenRef ref,
  String token,
) async {
  final api = ref.watch(apiProvider);
  final response = await api.refreshToken(token);
  if (response.status == StatusCodeType.s200) {
    final oauthToken = OAuth2Token(
      accessToken: response.data!.jwtToken,
      tokenType: 'Bearer',
      expiresIn: response.data!.usefulLifeInMillis,
    );
    return oauthToken;
  } else {
    await ref.read(loginProvider.notifier).logout();
    return null;
  }
}

@riverpod
Stream<AuthenticationStatus> authenticationStatus(AuthenticationStatusRef ref) {
  return ref.watch(freshProvider).authenticationStatus;
}

@riverpod
Future<MeModel> me(MeRef ref) async {
  final api = ref.watch(apiProvider);
  final response = await api.me();
  if (response.status == StatusCodeType.s200) {
    return response.data!;
  }
  return MeModel();
}
