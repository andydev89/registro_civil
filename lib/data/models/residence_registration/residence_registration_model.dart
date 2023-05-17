// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_dependent_relation_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_agreemente_type.dart';
import 'package:registro_civil_apk/data/enum/services/service_status_type.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'residence_registration_model.g.dart';
part 'residence_registration_model.gform.dart';
part 'residence_registration_model.freezed.dart';

@ReactiveFormAnnotation()
@Freezed(toJson: true)
class ResidenceRegistration with _$ResidenceRegistration {
  const factory ResidenceRegistration({
    @FormControlAnnotation<String>()
    @Default('')
    @JsonKey(includeToJson: true, includeFromJson: false)
        String userId,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String observations,
    @FormArrayAnnotation<Residential>()
    @Default([])
        List<Residential> residentials,
    @Default(StatusType.active)
    @FormControlAnnotation<StatusType>()
    @JsonKey(includeToJson: false, includeFromJson: true)
        StatusType state,
  }) = _ResidenceRegistration;

  const ResidenceRegistration._();

  factory ResidenceRegistration.fromJson(Map<String, dynamic> json) =>
      _$ResidenceRegistrationFromJson(json);
}

@Freezed(toJson: true)
@ReactiveFormAnnotation()
class Residential with _$Residential {
  const factory Residential({
    @FormControlAnnotation(validators: [requiredValidator])
    @Default(false)
        bool electricLightMeter,
    @FormControlAnnotation<String>() @Default('') String electricalCode,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(toJson: LocationModel.locationToJson)
        required LocationModel province,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(toJson: LocationModel.locationToJson)
        required LocationModel canton,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(toJson: LocationModel.locationToJson)
        required LocationModel parroquia,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String mainStreet,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String backStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidentialHousingType housingType,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidentialTenureHousingAgreementeType
            tenureHousingTypeAgreement,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String numberVillaBuilding,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String floorNumber,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
        String departmentNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidenceType type,
    @FormArrayAnnotation<Dependent>() @Default([]) List<Dependent> dependents,
    @JsonKey(includeToJson: false, includeFromJson: true)
    @FormControlAnnotation<String>()
    @Default('')
        String id,
  }) = _Residential;

  const Residential._();

  factory Residential.fromJson(Map<String, dynamic> json) =>
      _$ResidentialFromJson(json);

  @JsonKey(includeToJson: false, includeFromJson: false)
  String get address => '$mainStreet, $backStreet #$numberVillaBuilding';

  @JsonKey(includeToJson: false, includeFromJson: false)
  String get reisdentialId => '${province.id}${canton.id}${parroquia.id}'
      '$mainStreet$backStreet$numberVillaBuilding$floorNumber$departmentNumber';

  Residential copyWithFromFirstStepResidenceModel(
    FirstStepResidenceModel firstStepResidenceModel,
  ) {
    return copyWith(
      electricLightMeter: electricLightMeter,
      electricalCode: electricalCode,
      province: firstStepResidenceModel.province,
      canton: firstStepResidenceModel.canton,
      parroquia: firstStepResidenceModel.parroquia,
      mainStreet: firstStepResidenceModel.mainStreet,
      backStreet: firstStepResidenceModel.backStreet,
      housingType: housingType,
      tenureHousingTypeAgreement: tenureHousingTypeAgreement,
      numberVillaBuilding: numberVillaBuilding,
      floorNumber: floorNumber,
      departmentNumber: departmentNumber,
      type: type,
      dependents: dependents,
      id: id,
    );
  }

  Residential copyWithFromSecondStepResidenceModel(
    SecondStepResidenceModel secondStepResidenceModel,
  ) {
    return copyWith(
      electricLightMeter: secondStepResidenceModel.electricLightMeter,
      electricalCode: secondStepResidenceModel.electricalCode,
      province: province,
      canton: canton,
      parroquia: parroquia,
      mainStreet: mainStreet,
      backStreet: backStreet,
      housingType: secondStepResidenceModel.housingType,
      tenureHousingTypeAgreement:
          secondStepResidenceModel.tenureHousingTypeAgreement,
      numberVillaBuilding: secondStepResidenceModel.numberVillaBuilding,
      floorNumber: secondStepResidenceModel.floorNumber,
      departmentNumber: secondStepResidenceModel.departmentNumber,
      type: secondStepResidenceModel.type,
      dependents: dependents,
      id: id,
    );
  }
}

@Freezed(toJson: true)
@ReactiveFormAnnotation()
class Dependent with _$Dependent {
  const factory Dependent({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        required String nuiDependents,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidentialDependentRelationType relationship,
    @FormControlAnnotation<String>()
        required String date,
    @FormControlAnnotation(validators: [requiredValidator])
        required String name,
    @FormControlAnnotation(validators: [requiredValidator])
        required String lastname,
    @FormControlAnnotation<StatusType>()
    @Default(StatusType.active)
        StatusType state,
    @JsonKey(includeToJson: false, includeFromJson: true)
    @FormControlAnnotation<String>()
    @Default('')
        String id,
  }) = _Dependent;

  const Dependent._();

  factory Dependent.fromJson(Map<String, dynamic> json) =>
      _$DependentFromJson(json);
}

@freezed
@ReactiveFormAnnotation()
class FirstStepResidenceModel with _$FirstStepResidenceModel {
  const factory FirstStepResidenceModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required String backStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required LocationModel canton,
    @FormControlAnnotation(validators: [requiredValidator])
        required String mainStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required LocationModel parroquia,
    @FormControlAnnotation(validators: [requiredValidator])
        required LocationModel province,
  }) = _FirstStepResidenceModel;

  factory FirstStepResidenceModel.fromJson(Map<String, dynamic> json) =>
      _$FirstStepResidenceModelFromJson(json);

  const FirstStepResidenceModel._();

  factory FirstStepResidenceModel.fromResidential(Residential residential) =>
      FirstStepResidenceModel(
        backStreet: residential.backStreet,
        canton: residential.canton,
        mainStreet: residential.mainStreet,
        parroquia: residential.parroquia,
        province: residential.province,
      );
}

@freezed
@ReactiveFormAnnotation()
class SecondStepResidenceModel with _$SecondStepResidenceModel {
  factory SecondStepResidenceModel({
    @FormControlAnnotation<bool>() required bool electricLightMeter,
    @FormControlAnnotation<String>() required String electricalCode,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidentialHousingType housingType,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidentialTenureHousingAgreementeType
            tenureHousingTypeAgreement,
    @FormControlAnnotation(validators: [requiredValidator])
        required String numberVillaBuilding,
    @FormControlAnnotation(validators: [requiredValidator])
        required String floorNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required String departmentNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required ResidenceType type,
  }) = _SecondStepResidenceModel;

  const SecondStepResidenceModel._();

  factory SecondStepResidenceModel.fromResidential(Residential residential) =>
      SecondStepResidenceModel(
        electricLightMeter: residential.electricLightMeter,
        electricalCode: residential.electricalCode,
        housingType: residential.housingType,
        tenureHousingTypeAgreement: residential.tenureHousingTypeAgreement,
        numberVillaBuilding: residential.numberVillaBuilding,
        floorNumber: residential.floorNumber,
        departmentNumber: residential.departmentNumber,
        type: residential.type,
      );

  factory SecondStepResidenceModel.fromJson(Map<String, dynamic> json) =>
      _$SecondStepResidenceModelFromJson(json);
}
