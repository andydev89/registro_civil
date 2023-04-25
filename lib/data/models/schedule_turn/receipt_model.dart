import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/commons/procedure_type.dart';
import 'package:registro_civil_apk/data/enum/commons/relationship_type.dart';
import 'package:registro_civil_apk/data/json_converters/time_of_day_converter.dart';
part 'receipt_model.g.dart';

///Este objeto se envia para confirmar la reserva de un turno
@JsonSerializable()
class ReceiptModel {
  ReceiptModel({
    required this.userId,
    required this.procedureType,
    required this.includeMe,
    required this.relatives,
    required this.paymentType,
    required this.scheduleId,
    required this.time,
  });

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);

  final bool includeMe;
  final PaymentMethodType paymentType;
  @JsonKey(name: 'type')
  final ProcedureType procedureType;

  final List<RelativeModel> relatives;
  @JsonKey(name: 'schedule')
  final String scheduleId;

  @TimeOfDayConverter()
  final TimeOfDay time;

  @JsonKey(name: 'user')
  final String userId;

  Map<String, dynamic> toJson() => _$ReceiptModelToJson(this);
}

@JsonSerializable()
class RelativeModel {
  RelativeModel({
    required this.identification,
    required this.familiarKin,
  });

  factory RelativeModel.fromJson(Map<String, dynamic> json) =>
      _$RelativeModelFromJson(json);

  final RelationshipType familiarKin;
  final String identification;

  Map<String, dynamic> toJson() => _$RelativeModelToJson(this);
}

@JsonSerializable()
class BookedReceiptModel {
  BookedReceiptModel({
    required this.id,
    required this.transactionCode,
  });

  factory BookedReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$BookedReceiptModelFromJson(json);

  final List<String> id;
  final String transactionCode;

  Map<String, dynamic> toJson() => _$BookedReceiptModelToJson(this);
}
