import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/json_converters/time_of_day_converter.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_type_of_service_model.dart';
part 'schedule_model.g.dart';

@JsonSerializable()
class ScheduleModel extends Equatable {
  const ScheduleModel({
    required this.id,
    required this.stock,
    required this.date,
    required this.startTime,
    required this.endingTime,
    required this.agency,
    required this.typeOfService,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleModelFromJson(json);

  final AgencyModel agency;
  final DateTime date;
  @TimeOfDayConverter()
  final TimeOfDay endingTime;

  final String id;
  @TimeOfDayConverter()
  final TimeOfDay startTime;

  final int stock;
  final ScheduleTypeOfServiceModel typeOfService;

  Map<String, dynamic> toJson() => _$ScheduleModelToJson(this);

  @override
  List<Object?> get props => [id];
}
