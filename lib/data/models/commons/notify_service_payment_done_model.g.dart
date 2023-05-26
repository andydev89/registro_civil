// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_service_payment_done_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotifyServicePaymentDoneModel _$$_NotifyServicePaymentDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_NotifyServicePaymentDoneModel(
      transactionCode: json['transactionCode'] as String,
      paymentType: $enumDecode(_$PaymentMethodTypeEnumMap, json['paymentType']),
      paymentCode: json['paymentCode'] as String,
      civilRegistrationId: json['civilRegistrationId'] as String?,
    );

Map<String, dynamic> _$$_NotifyServicePaymentDoneModelToJson(
        _$_NotifyServicePaymentDoneModel instance) =>
    <String, dynamic>{
      'transactionCode': instance.transactionCode,
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType]!,
      'paymentCode': instance.paymentCode,
      'civilRegistrationId': instance.civilRegistrationId,
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACETOPAY',
};
