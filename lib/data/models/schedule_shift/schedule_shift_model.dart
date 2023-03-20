import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/relationship_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'schedule_shift_model.gform.dart';

@ReactiveFormAnnotation()
class ScheduleShiftFirstStepPersonalModel {
  ScheduleShiftFirstStepPersonalModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.service,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.paymentMethod,
  });

  final PaymentMethodType paymentMethod;
  final ServiceType service;
}

@ReactiveFormAnnotation()
class ScheduleShiftFirstStepFamiliarModel {
  ScheduleShiftFirstStepFamiliarModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.identificationNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.service,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.relationship,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.paymentMethod,
  });

  ///Cedula
  final int identificationNumber;
  final RelationshipType relationship;
  final ServiceType service;
  final PaymentMethodType paymentMethod;
}

@ReactiveFormAnnotation()
class ScheduleShiftSecondStepModel {
  ScheduleShiftSecondStepModel({
    @FormControlAnnotation(validators: [requiredValidator]) required this.code,
  });

  final String code;
}

@ReactiveFormAnnotation()
class ScheduleShiftThirdStepModel {
  ScheduleShiftThirdStepModel({
    @FormControlAnnotation(validators: [requiredValidator]) required this.state,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
    @FormControlAnnotation(validators: [requiredValidator]) required this.date,
    @FormControlAnnotation(validators: [requiredValidator]) required this.time,
  });

  final String state;
  final String agency;
  final DateTime date;
  final TimeOfDay time;
}
