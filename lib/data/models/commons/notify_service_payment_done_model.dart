import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'notify_service_payment_done_model.g.dart';
part 'notify_service_payment_done_model.freezed.dart';

@freezed
class NotifyServicePaymentDoneModel with _$NotifyServicePaymentDoneModel {
  const factory NotifyServicePaymentDoneModel({
    required String transactionCode,
    required PaymentMethodType paymentType,

    ///Se utiliza para cuando es pago corresponsal, en place to pay es la referencia
    required String paymentCode,

    ///En pago corresponsal es null
    required String? civilRegistrationId,
  }) = _NotifyServicePaymentDoneModel;

  factory NotifyServicePaymentDoneModel.fromJson(Map<String, dynamic> json) =>
      _$NotifyServicePaymentDoneModelFromJson(json);
}
