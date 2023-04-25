// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserScheduleModel _$UserScheduleModelFromJson(Map<String, dynamic> json) =>
    UserScheduleModel(
      id: json['id'] as String,
      receiptCode: json['receiptCode'] as String,
      trasactionCode: json['trasactionCode'] as String,
      type: json['type'] as String,
      state: json['state'] as String,
      paymentType: $enumDecode(_$PaymentMethodTypeEnumMap, json['paymentType']),
      ownerIdentification: json['ownerIdentification'] as String,
      ownerFullName: json['ownerFullName'] as String,
      time: const TimeOfDayConverter().fromJson(json['time'] as String),
      userId: json['user'] as String,
      schedule:
          ScheduleModel.fromJson(json['schedule'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScheduleModelToJson(UserScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerFullName': instance.ownerFullName,
      'ownerIdentification': instance.ownerIdentification,
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType]!,
      'receiptCode': instance.receiptCode,
      'schedule': instance.schedule,
      'state': instance.state,
      'time': const TimeOfDayConverter().toJson(instance.time),
      'trasactionCode': instance.trasactionCode,
      'type': instance.type,
      'user': instance.userId,
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACETOPAY',
};
