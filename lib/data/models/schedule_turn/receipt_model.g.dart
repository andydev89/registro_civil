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
      'user': instance.userId,
      'type': _$ProcedureTypeEnumMap[instance.procedureType]!,
      'includeMe': instance.includeMe,
      'relatives': instance.relatives,
      'paymentType': _$PaymentMethodTypeEnumMap[instance.paymentType]!,
      'schedule': instance.scheduleId,
      'time': const TimeOfDayConverter().toJson(instance.time),
    };

const _$ProcedureTypeEnumMap = {
  ProcedureType.personal: 'PERSONAL',
  ProcedureType.familiar: 'FAMILIAR',
};

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.correspondentPayment: 'CORRESPONDENT',
  PaymentMethodType.placeToPay: 'PLACE_TO_PAY',
};

RelativeModel _$RelativeModelFromJson(Map<String, dynamic> json) =>
    RelativeModel(
      identification: json['identification'] as String,
      familiarKin: $enumDecode(_$RelationshipTypeEnumMap, json['familiarKin']),
    );

Map<String, dynamic> _$RelativeModelToJson(RelativeModel instance) =>
    <String, dynamic>{
      'identification': instance.identification,
      'familiarKin': _$RelationshipTypeEnumMap[instance.familiarKin]!,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.spouseOrCohabitant: 'spouseOrCohabitant',
  RelationshipType.minorChild: 'minorChild',
  RelationshipType.brother: 'brother',
  RelationshipType.father: 'father',
  RelationshipType.mother: 'mother',
};
