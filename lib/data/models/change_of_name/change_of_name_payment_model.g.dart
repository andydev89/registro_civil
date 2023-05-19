// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangeOfNamePaymentModel _$$_ChangeOfNamePaymentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChangeOfNamePaymentModel(
      id: json['id'] as String,
      transactionCode: json['transactionCode'] as String,
      paymentType: $enumDecode(_$PaymentMethodTypeEnumMap, json['paymentType']),
      paymentCode: json['paymentCode'] as String,
      civilRegistrationId: json['civilRegistrationId'] as String,
    );

Map<String, dynamic> _$$_ChangeOfNamePaymentModelToJson(
        _$_ChangeOfNamePaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transactionCode': instance.transactionCode,
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType]!,
      'paymentCode': instance.paymentCode,
      'civilRegistrationId': instance.civilRegistrationId,
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACETOPAY',
};
