import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:registro_civil_apk/data/sources/api.dart';
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
  return Api(dio, baseUrl: 'http://registro-civil-api.ddns.net/');
}
