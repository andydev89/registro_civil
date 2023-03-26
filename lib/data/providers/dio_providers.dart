import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/sources/api.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio()
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        queryParameters: true,
        requestBody: true,
        responseHeader: true,
        showCUrl: true,
      ),
    );
}

@riverpod
Api api(ApiRef ref) {
  final dio = ref.watch(dioProvider);
  return Api(dio, baseUrl: 'http://api.registro-civil.ddns.net/');
}

class MyNotificationInterceptor implements Interceptor {
  MyNotificationInterceptor(this.context);
  final BuildContext context;

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    if (statusCode != null && statusCode >= 400 && statusCode < 600) {
      showAlert(
        _getStatusCode(statusCode).translate(context),
        TypeAlert.error,
      );
    }
    handler.next(err);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    final statusCode = response.statusCode;
    if (statusCode != null && statusCode! >= 200 && statusCode! < 300) {
      showAlert(
        _getStatusCode(statusCode).translate(context),
        TypeAlert.success,
      );
    }
    return handler.next(response);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return handler.next(options);
  }

  StatusCodes _getStatusCode(int statusCode) {
    return StatusCodes.values.firstWhere(
      (e) => e.toText == 's$statusCode',
      orElse: () => StatusCodes.s999,
    );
  }
}
