import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_type_of_service_model.dart';

class MyTurnExpandableCardModel {
  MyTurnExpandableCardModel({
    required this.id,
    required this.typeOfService,
    required this.date,
    required this.time,
    required this.city,
    required this.agency,
    required this.state,
  });

  final String id;
  final ScheduleTypeOfServiceModel typeOfService;
  final DateTime date;
  final TimeOfDay time;
  final String city;
  final String agency;
  final String state;
  // TODO(alejandro): este estado debe ser un enum
}
