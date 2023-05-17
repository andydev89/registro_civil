import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/sources/source.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final fresh = ref.watch(freshProvider);
  return Dio()
    ..options.baseUrl = baseUrl
    ..options.validateStatus = (status) {
      // TODO(alejandro): esto cambiarlo cuando el back corrija el error
      //de devolver 500 en autenticacion incorrecta
      return true;
    }
    ..interceptors.add(fresh)
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        compact: false,
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
      // final uri = response?.realUri;
      // ignore: avoid_dynamic_calls
      final status = response?.data['status'];
      // final shouldRefresh = status == 401 &&
      //     (uri!.path.contains('identity/api/auth/refresh') == false);
      // return shouldRefresh;
      if (status == 401) {
        ref.read(loginProvider.notifier).logout();
        showAlert(
          'Debe estar autenticado',
          TypeAlert.warning,
        );
      }
      return false;
    },
    refreshToken: (token, client) async {
      // final oauthToken =
      //     await ref.read(refreshTokenProvider(token!.accessToken).future);
      // if (oauthToken != null) {
      //   return oauthToken;
      // } else {
      //   await ref.read(loginProvider.notifier).logout();
      //   return token;
      // }
      await ref.read(loginProvider.notifier).logout();
      return token!;
    },
  );
}
