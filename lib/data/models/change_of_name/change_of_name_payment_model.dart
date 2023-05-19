import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'change_of_name_payment_model.g.dart';
part 'change_of_name_payment_model.freezed.dart';

@freezed
class ChangeOfNamePaymentModel with _$ChangeOfNamePaymentModel {
  const factory ChangeOfNamePaymentModel({
    required String id,
    required String transactionCode,
    required PaymentMethodType paymentType,
    required String paymentCode,
    required String civilRegistrationId,
  }) = _ChangeOfNamePaymentModel;

  factory ChangeOfNamePaymentModel.fromJson(Map<String, dynamic> json) =>
      _$ChangeOfNamePaymentModelFromJson(json);
}
