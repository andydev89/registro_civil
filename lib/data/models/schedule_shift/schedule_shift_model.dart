import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/schedule_shift_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'schedule_shift_model.gform.dart';

@ReactiveFormAnnotation()
class ScheduleShiftFirstStepModel {
  ScheduleShiftFirstStepModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.scheduleShift,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.service,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.paymentMethod,
  });

  final PaymentMethodType paymentMethod;
  final ScheduleShiftType scheduleShift;
  final ServiceType service;
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
  });

  final String state;
  final String agency;
  final DateTime date;
}
