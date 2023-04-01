import 'package:isar/isar.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

@riverpod
Isar isar(IsarRef ref) {
  return Isar.openSync([
    RegisterModelSchema,
  ]);
}
