import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/json_converters/time_of_day_converter.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_model.dart';
part 'user_schedule_model.g.dart';

@JsonSerializable()
class UserScheduleModel {
  UserScheduleModel({
    required this.id,
    required this.receiptCode,
    required this.trasactionCode,
    required this.type,
    required this.state,
    required this.paymentType,
    required this.ownerIdentification,
    required this.ownerFullName,
    required this.time,
    required this.userId,
    required this.schedule,
  });

  factory UserScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$UserScheduleModelFromJson(json);

  final String id;
  final String ownerFullName;
  final String ownerIdentification;
  final PaymentMethodType paymentType;
  final String receiptCode;
  final ScheduleModel schedule;
  final StateEnum state;

  @TimeOfDayConverter()
  final TimeOfDay time;

  final String trasactionCode;
  // TODO(alejandro): deberia ser enum
  final String type;

  @JsonKey(name: 'user')
  final String userId;

  Map<String, dynamic> toJson() => _$UserScheduleModelToJson(this);
}
