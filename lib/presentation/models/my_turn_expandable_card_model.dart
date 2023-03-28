import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/schedule_turn/service_type.dart';

class MyTurnExpandableCardModel {
  MyTurnExpandableCardModel({
    required this.id,
    required this.service,
    required this.date,
    required this.time,
    required this.city,
    required this.agency,
    required this.state,
  });

  final int id;
  final ServiceType service;
  final DateTime date;
  final TimeOfDay time;
  final String city;
  final String agency;
  // TODO(alejandro): este estado debe ser un enum
  final String state;
}
