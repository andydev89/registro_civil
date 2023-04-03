import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';

StatusCode convertToStatusCode(Map<String, dynamic>? response) {
  if (response == null) return StatusCode.s999;
  try {
    final basicResponse = ResponseModel.fromJson(response, (json) => null);
    return _getStatusCode(basicResponse.status);
  } on Exception catch (_) {
    return StatusCode.s999;
  }
}

StatusCode _getStatusCode(StatusCode statusCode) {
  return StatusCode.values.firstWhere(
    (e) => e.code == statusCode.code,
    orElse: () => StatusCode.s999,
  );
}



Future<void> initMethod() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
