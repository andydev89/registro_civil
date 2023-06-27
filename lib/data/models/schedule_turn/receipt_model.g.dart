// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) => ReceiptModel(
      userId: json['user'] as String,
      procedureType: $enumDecode(_$ProcedureTypeEnumMap, json['type']),
      includeMe: json['includeMe'] as bool,
      relatives: (json['relatives'] as List<dynamic>)
          .map((e) => RelativeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentType: $enumDecode(_$PaymentMethodTypeEnumMap, json['paymentType']),
      scheduleId: json['schedule'] as String,
      time: const TimeOfDayConverter().fromJson(json['time'] as String),
    );

Map<String, dynamic> _$ReceiptModelToJson(ReceiptModel instance) =>
    <String, dynamic>{
      'includeMe': instance.includeMe,
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType]!,
      'type': _$ProcedureTypeEnumMap[instance.procedureType]!,
      'relatives': instance.relatives,
      'schedule': instance.scheduleId,
      'time': const TimeOfDayConverter().toJson(instance.time),
      'user': instance.userId,
    };

const _$ProcedureTypeEnumMap = {
  ProcedureType.personal: 'PERSONAL',
  ProcedureType.familiar: 'FAMILY',
};

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACETOPAY',
};

RelativeModel _$RelativeModelFromJson(Map<String, dynamic> json) =>
    RelativeModel(
      identification: json['identification'] as String,
      familiarKin: $enumDecode(_$RelationshipTypeEnumMap, json['familiarKin']),
    );

Map<String, dynamic> _$RelativeModelToJson(RelativeModel instance) =>
    <String, dynamic>{
      'familiarKin': _$RelationshipTypeEnumMap[instance.familiarKin]!,
      'identification': instance.identification,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.parner: 'PARTNER',
  RelationshipType.sonOrDaughter: 'CHILD',
  RelationshipType.parent: 'PARENT',
};
