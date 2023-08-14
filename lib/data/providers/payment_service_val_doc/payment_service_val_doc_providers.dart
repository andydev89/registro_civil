import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_service_val_doc_providers.g.dart';

@riverpod
class PaymentServiceValidationDoc extends _$PaymentServiceValidationDoc {
  Future<Result<CommandWithTransactionCodeModel, StatusCodeType>>
      documentValidation(
    PaymentServiceValidacionDocModel model,
  ) async {
    final user = await ref.read(meProvider.future);

    final modelc = PaymentValidationDocModel(
      user: user.id,
      agency: model.agency.id,
      province: model.province.id,
    );
    // modelc
    final api = ref.watch(apiProvider);

    final response = await api.documentValidation(
      model: modelc,
    );
    return response.success
        ? Result.ok(response.data!)
        : Result.err(response.status);
  }

  @override
  PaymentServiceValidationDoc build() {
    return PaymentServiceValidationDoc();
  }
}
