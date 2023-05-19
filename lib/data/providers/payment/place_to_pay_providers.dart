import 'dart:async';
import 'dart:developer';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'place_to_pay_providers.g.dart';

@riverpod
Future<Result<PlaceToPayReferenceModel, StatusCodeType>>
    createPlaceToPayTransaction(
  CreatePlaceToPayTransactionRef ref, {
  required PlaceToPayModel placeToPayModel,
  required String transactionCode,
}) async {
  final api = ref.watch(apiProvider);
  final response = await api.createPlaceToPayTransaction(placeToPayModel);
  if (response.success) {
    final isar = ref.watch(isarProvider);
    final serviceType =
        ServiceType.fromJson(placeToPayModel.payment.serviceType);
    final placeToPay = response.copyWith(
      serviceType: serviceType,
      transactionCode: transactionCode,
    );
    isar.writeTxnSync(() => isar.placeToPayReferenceModels.putSync(placeToPay));
    ref.read(checkPendingTransactionsProvider);
    return Result.ok(response);
  } else {
    return const Result.err(StatusCodeType.s400);
  }
}

@riverpod
Future<Result<bool, StatusCodeType>> isPlaceToPayTransactionCompleted(
  IsPlaceToPayTransactionCompletedRef ref, {
  required PlaceToPayReferenceModel placeToPayReference,
}) async {
  try {
    final api = ref.watch(apiProvider);
    final response = await api.checkPlaceToPayTransaction(
      placeToPayReference.paymentGatewayReference,
    );
    if (response != null && response.currentStatus != null) {
      if (response.currentStatus == TransactionStatusType.approved) {
        if (placeToPayReference.serviceType != null &&
            placeToPayReference.transactionCode != null) {
          ref.watch(
            notifyCompletePaymentToServicesProvider(
              placeToPayTransactionDetails: response,
              serviceType: placeToPayReference.serviceType!,
              transactionCode: placeToPayReference.transactionCode!,
            ),
          );
          return const Result.ok(
            true,
          );
        }
        return const Result.ok(
          false,
        );
      } else {
        return const Result.ok(
          false,
        );
      }
    } else {
      return const Result.err(StatusCodeType.s400);
    }
  } catch (e) {
    return const Result.err(StatusCodeType.s400);
  }
}

@riverpod
Future<void> notifyCompletePaymentToServices(
  NotifyCompletePaymentToServicesRef ref, {
  required ServiceType serviceType,
  required PlaceToPayTransactionDetailsModel placeToPayTransactionDetails,
  required String transactionCode,
}) async {
  final api = ref.watch(apiProvider);
  final notifyServicePaymentDone = NotifyServicePaymentDoneModel(
    civilRegistrationId: placeToPayTransactionDetails.civilRegistrationId,
    transactionCode: transactionCode,
    paymentType: PaymentMethodType.placeToPay,
    paymentCode: placeToPayTransactionDetails.reference,
  );
  if (serviceType == ServiceType.changeOfName) {
    await api.notifyPaymentOfChangeOfName(
      notifyServicePaymentDone,
    );
  } else if (serviceType == ServiceType.schedule) {
    await api.notifyPaymentOfSchedule(
      notifyServicePaymentDone,
    );
  }
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
            () => isar.placeToPayReferenceModels.deleteSync(element.id),
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
      () => isar.placeToPayReferenceModels.deleteSync(placeToPayReference.id),
    );
    state.remove(placeToPayReference);
  }

  @override
  List<PlaceToPayReferenceModel> build() {
    return [];
  }
}
