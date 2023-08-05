import 'dart:convert';
import 'dart:ui';

import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_validation_provider.g.dart';

@riverpod
Future<Result<DocumentValidationResponseModel, StatusCodeType>>
    validateDocument(
  ValidateDocumentRef ref, {
  required String documentCode,
  required String issueDate,
}) async {
  final api = ref.watch(apiProvider);
  final result = await api.validateDocument(
    documentCode: documentCode,
    issueDate: issueDate,
  );
  if (result.success) {
    return Result.ok(result.data!);
  }
  return Result.err(result.status);
}
