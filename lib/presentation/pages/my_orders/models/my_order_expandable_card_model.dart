import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_status.dart';
import 'package:registro_civil_apk/data/enum/commons/preocedure_status.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';

class MyOrderExpandableCardModel {
  MyOrderExpandableCardModel({
    required this.id,
    required this.typeOfService,
    required this.date,
    required this.nut,
    required this.unitaryValue,
    required this.subtotal,
    required this.iva,
    required this.discount,
    required this.total,
    required this.paymentStatus,
    required this.proceduresStatus,
  });

  final int id;
  final TypeOfServiceModel typeOfService;
  final DateTime date;
  final String nut;
  final double unitaryValue;
  final double subtotal;
  final double iva;
  final double discount;
  final double total;
  final PaymentStatus paymentStatus;
  final ProceduresStatus proceduresStatus;
}
