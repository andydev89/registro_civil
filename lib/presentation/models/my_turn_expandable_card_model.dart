import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';

class MyTurnExpandableCardModel {
  MyTurnExpandableCardModel({
    required this.id,
    required this.typeOfService,
    required this.date,
    required this.time,
    required this.city,
    required this.agency,
  });

  final String id;
  final TypeOfServiceModel typeOfService;
  final DateTime date;
  final TimeOfDay time;
  final String city;
  final String agency;
  // TODO(alejandro): este estado debe ser un enum
}
