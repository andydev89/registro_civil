import 'dart:async';
import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/commons/transaction_status.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/payment/place_to_pay_model.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:registro_civil_apk/data/providers/isar_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'payment_providers.g.dart';

@riverpod
Future<Result<PlaceToPayReferenceModel, StatusCode>>
    createPlaceToPayTransaction(
  CreatePlaceToPayTransactionRef ref, {
  required PlaceToPayModel placeToPayModel,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.createPlaceToPayTransaction(placeToPayModel);
  if (response.success) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.placeToPayReferenceModels.putSync(response));
    ref.read(checkPendingTransactionsProvider);
    return Result.ok(response);
  } else {
    return const Result.err(StatusCode.s400);
  }
}

@riverpod
Future<Result<bool, StatusCode>> isPlaceToPayTransactionCompleted(
  IsPlaceToPayTransactionCompletedRef ref, {
  required PlaceToPayReferenceModel placeToPayReference,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api
      .checkPlaceToPayTransaction(placeToPayReference.paymentGatewayReference);
  return response != null && response.currentStatus != null
      ? Result.ok(response.currentStatus == TransactionStatus.approved)
      : const Result.err(StatusCode.s400);
}

@riverpod
Future<void> checkPendingTransactions(
  CheckPendingTransactionsRef ref,
) async {
  final isar = ref.watch(isarProvider);
  final transactions = isar.placeToPayReferenceModels.where().findAllSync();
  for (final element in transactions) {
    final status = await ref.watch(
      isPlaceToPayTransactionCompletedProvider(placeToPayReference: element)
          .future,
    );
    status.when(
      ok: (transactionCompleted) {
        if (transactionCompleted) {
          isar.writeTxnSync(
            () => isar.placeToPayReferenceModels.deleteSync(element.id!),
          );
          ref.read(transactionsStatusProvider.notifier).addTransaction(element);
        }
      },
      err: (error) =>
          log('error: $error', name: 'Check Pending Transactions Provider'),
    );
  }
}

@riverpod
void executeCheckingPendingTransactions(
  ExecuteCheckingPendingTransactionsRef ref,
) {
  ref.read(checkPendingTransactionsProvider);
  Timer.periodic(const Duration(minutes: 5), (timer) {
    log(
      'Se ejecuto checkPendingTransactions cada 5 minutos',
      name: 'Check Pending Transactions Provider',
    );
    ref.read(checkPendingTransactionsProvider);
  });
}

@riverpod
class TransactionsStatus extends _$TransactionsStatus {
  void addTransaction(PlaceToPayReferenceModel placeToPayReference) {
    state = [...state, placeToPayReference];
  }

  void removeTransaction(PlaceToPayReferenceModel placeToPayReference) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(
      () => isar.placeToPayReferenceModels.deleteSync(placeToPayReference.id!),
    );
    state.remove(placeToPayReference);
  }

  @override
  List<PlaceToPayReferenceModel> build() {
    return [];
  }
}
