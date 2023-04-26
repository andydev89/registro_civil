import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/payment/place_to_pay_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'payment_providers.g.dart';

@riverpod
Future<Result<dynamic, StatusCode>> createPlaceToPayTransaction(
  CreatePlaceToPayTransactionRef ref, {
  required PlaceToPayModel placeToPayModel,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.createPlaceToPayTransaction(placeToPayModel);
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}
