import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:registro_civil_apk/data/models/payment/place_to_pay_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'isar_providers.g.dart';

Future<void> initIsar() async {
  final dir = await getApplicationDocumentsDirectory();
  await Isar.open(
    [
      PlaceToPayReferenceModelSchema,
    ],
    directory: dir.path,
  );
}

@Riverpod(keepAlive: true)
Isar isar(IsarRef ref) {
  return Isar.getInstance()!;
}
