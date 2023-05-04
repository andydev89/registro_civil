import 'dart:convert';
import 'dart:io';

import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/responses/basic_response_model.dart';
import 'package:registro_civil_apk/data/providers/isar_providers.dart';

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
  await initIsar();
  await FkUserAgent.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

Future<File> createPdfFileFromBase64(String base64Pdf) async {
  final bytes = base64Decode(base64Pdf);
  final directory = await getTemporaryDirectory();
  final pdfFile = File('${directory.path}/tempPdf.pdf');
  await pdfFile.writeAsBytes(bytes, flush: true);
  return pdfFile;
}

// create image from base64

Future<File> createImageFileFromBase64(String base64Image) async {
  Uint8List bytes;
  if (isValidBase64Image(base64Image)) {
    bytes = base64Decode(base64Image);
  } else {
    // Carga la imagen predeterminada de los activos
    final byteData = await rootBundle.load(Assets.jpg.empty.path);
    bytes = byteData.buffer.asUint8List();
  }

  final directory = await getTemporaryDirectory();
  final imageFile = File('${directory.path}/${base64Image.hashCode}.jpg');
  await imageFile.writeAsBytes(bytes, flush: true);
  return imageFile;
}

bool isValidBase64Image(String base64Image) {
  try {
    final bytes = base64Decode(base64Image);
    final image = decodeImage(bytes);
    return image != null;
  } catch (e) {
    return false;
  }
}
