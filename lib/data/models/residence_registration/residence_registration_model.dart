import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'residence_registration_model.gform.dart';

@ReactiveFormAnnotation()
class ResidenceRegistrationFirstStepModel {
  ResidenceRegistrationFirstStepModel({
    @FormControlAnnotation(validators: [requiredValidator])
        this.nationalElectricUnicCode,
    @FormControlAnnotation<dynamic>() this.haveElectricLightMeter = false,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.phoneNumber,
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        required this.emailAddress,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.observations,
  });

  final int? nationalElectricUnicCode;
  final bool haveElectricLightMeter;
  final String phoneNumber;
  final String emailAddress;
  final String observations;
}

@ReactiveFormAnnotation()
class ResidenceRegistrationSecondStepModel {
  ResidenceRegistrationSecondStepModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.canton,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.parroquia,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.primaryStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.secondaryStreet,
  });

  final LocationModel province;
  final String canton;
  final String parroquia;
  final String primaryStreet;
  final String secondaryStreet;
}

@ReactiveFormAnnotation()
class ResidenceRegistrationThirdStepModel {
  ResidenceRegistrationThirdStepModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.houseType,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.tenure,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.villageOrBuildingNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.floorNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.appartmentNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.residenceType,
  });

  final String houseType;
  //TODO: hacerlo un enum
  ///Tenencia
  final String tenure;
  final String villageOrBuildingNumber;
  final String floorNumber;
  final String appartmentNumber;
  //TODO: hacerlo un enum
  final String residenceType;
}
