import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/commons/relationship_type.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'schedule_turn_model.gform.dart';

@ReactiveFormAnnotation()
class ScheduleTurnFirstStepPersonalModel {
  ScheduleTurnFirstStepPersonalModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.paymentMethod,
  });

  final PaymentMethodType paymentMethod;
}

@ReactiveFormAnnotation()
class ScheduleTurnFirstStepFamiliarModel {
  ScheduleTurnFirstStepFamiliarModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.paymentMethod,
    @FormControlAnnotation<dynamic>() this.scheduleForMe = false,
    @FormArrayAnnotation<dynamic>(validators: [requiredValidator])
        this.family = const [],
  });

  final PaymentMethodType paymentMethod;
  final bool scheduleForMe;
  final List<FamiliarFormModel> family;
}

@FormGroupAnnotation<dynamic>()
class FamiliarFormModel {
  FamiliarFormModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.identificationNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        this.relationship,
  });

  ///Cedula
  final String? identificationNumber;
  final RelationshipType? relationship;
}

@ReactiveFormAnnotation()
class ScheduleTurnSecondStepModel {
  ScheduleTurnSecondStepModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
    @FormControlAnnotation(validators: [requiredValidator]) required this.date,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.scheduleId,
    @FormControlAnnotation(validators: [requiredValidator]) required this.time,
    @FormControlAnnotation<dynamic>() this.initialTime,
    @FormControlAnnotation<dynamic>() this.endTime,
  });

  final LocationModel province;
  final AgencyModel agency;
  final DateTime date;
  final String scheduleId;
  final TimeOfDay time;
  final TimeOfDay? initialTime;
  final TimeOfDay? endTime;
}
