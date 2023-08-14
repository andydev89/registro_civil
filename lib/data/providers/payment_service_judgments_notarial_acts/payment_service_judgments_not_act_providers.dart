import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_service_judgments_not_act_providers.g.dart';

@riverpod
Future<Result<List<PaymentofservicesModel>, StatusCodeType>> getservices(
  GetservicesRef ref,
) async {
  final api = ref.watch(apiProvider);

  final response = await api.getservicesPaymentSjudgments();
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
Future<Result<CommandWithTransactionCodeModel, StatusCodeType>>
    createpaymentofservices(
  CreatepaymentofservicesRef ref,
  PaymentServiceJudgmentsNotarialActsModel model,
) async {
  final user = await ref.read(meProvider.future);

  final modelc = CreatePaymentofservicesModel(
    user: user.id,
    services: [model.service],
    agency: model.agency.id,
    province: model.province.id,
  );
  // modelc
  final api = ref.watch(apiProvider);

  final response = await api.createapaymentservices(
    model: modelc,
  );
  return response.success
      ? Result.ok(response.data!)
      : Result.err(response.status);
}

@riverpod
class CreateaPaymentservices extends _$CreateaPaymentservices {
  Future<Result<CommandWithTransactionCodeModel, StatusCodeType>>
      createpaymentofservices(
    PaymentServiceJudgmentsNotarialActsModel model,
  ) async {
    final user = await ref.read(meProvider.future);

    final modelc = CreatePaymentofservicesModel(
      user: user.id,
      services: [model.service],
      agency: model.agency.id,
      province: model.province.id,
    );
    // modelc
    final api = ref.watch(apiProvider);

    final response = await api.createapaymentservices(
      model: modelc,
    );
    return response.success
        ? Result.ok(response.data!)
        : Result.err(response.status);
  }

  @override
  CreateaPaymentservices build() {
    return CreateaPaymentservices();
  }
}
