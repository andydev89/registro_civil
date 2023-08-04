import 'dart:convert';
import 'dart:ui';

import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'document_validation_provider.g.dart';

@riverpod
Future<DocumentValidationResponseModel> validateDocument(
  ValidateDocumentRef ref, {
  required String documentCode,
  required String issueDate,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.validateDocument(
    documentCode: documentCode,
    issueDate: issueDate,
  );
  return response;
}
