import 'package:fresh_dio/fresh_dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/sources/api.dart';
import 'package:registro_civil_apk/data/sources/ss_token_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final fresh = ref.watch(freshProvider);
  return Dio()
    ..options.baseUrl = 'http://api.registro-civil.ddns.net/'
    ..options.validateStatus = (status) {
      //TODO esto cambiarlo cuando el back corrija el error de devolver 500 en autenticacion incorrecta
      return true;
    }
    ..interceptors.add(fresh)
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
}

@riverpod
Api api(ApiRef ref) {
  final dio = ref.watch(dioProvider);
  return Api(dio);
}

@riverpod
Fresh<OAuth2Token> fresh(FreshRef ref) {
  return Fresh.oAuth2(
    tokenStorage: SSTokenStorage(),
    shouldRefresh: (response) {
      final uri = response?.realUri;
      final status = response?.data['status'];
      final shouldRefresh =
          status == 401 && !uri!.path.contains('identity/api/auth/refresh');
      if (!shouldRefresh) {
        ref.read(loginProvider.notifier).logout();
      }
      return shouldRefresh;
    },
    refreshToken: (token, client) async {
      final oauthToken =
          await ref.read(refreshTokenProvider(token!.accessToken).future);
      if (oauthToken != null) {
        return oauthToken;
      } else {
        await ref.read(loginProvider.notifier).logout();
        return token;
      }
    },
  );
}
