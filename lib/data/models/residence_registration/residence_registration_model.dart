import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_dependent_relation.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_type_agreemente.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'residence_registration_model.g.dart';
part 'residence_registration_model.gform.dart';

@ReactiveFormAnnotation()
class ResidenceRegistrationFirstStepModel {
  ResidenceRegistrationFirstStepModel({
    @FormControlAnnotation(validators: [requiredValidator, length10Validator])
        this.nationalElectricUnicCode = '',
    @FormControlAnnotation<dynamic>()
        this.haveElectricLightMeter = false,
    @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
        required this.phoneNumber,
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        required this.emailAddress,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.observations,
  });

  final String nationalElectricUnicCode;
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
  final LocationModel canton;
  final LocationModel parroquia;
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

  final ResidentialHousingType houseType;
  final ResidentialTenureHousingTypeAgreemente tenure;
  final String villageOrBuildingNumber;
  final String floorNumber;
  final String appartmentNumber;
  final ResidenceType residenceType;
}

// // model to send

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class ResidenceRegistration {
  ResidenceRegistration({
    this.userId = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.observations = '',
    @FormArrayAnnotation<Residential>() this.residentials = const [],
  });

  factory ResidenceRegistration.fromJson(Map<String, dynamic> json) =>
      _$ResidenceRegistrationFromJson(json);

  final String userId;
  final String observations;
  final List<Residential> residentials;

  Map<String, dynamic> toJson() => _$ResidenceRegistrationToJson(this);

  ResidenceRegistration copyWith({
    String? userId,
    String? observations,
    List<Residential>? residentials,
  }) {
    return ResidenceRegistration(
      userId: userId ?? this.userId,
      observations: observations ?? this.observations,
      residentials: residentials ?? this.residentials,
    );
  }
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Residential {
  Residential({
    required this.electricLightMeter,
    required this.electricalCode,
    required this.province,
    required this.canton,
    required this.parroquia,
    required this.mainStreet,
    required this.backStreet,
    required this.housingType,
    required this.tenureHousingTypeAgreement,
    required this.numberVillaBuilding,
    required this.floorNumber,
    required this.departmentNumber,
    required this.type,
    required this.dependents,
  });

  factory Residential.fromJson(Map<String, dynamic> json) =>
      _$ResidentialFromJson(json);
  final bool electricLightMeter;
  final String electricalCode;
  @JsonKey(toJson: _locationToJson)
  final LocationModel province;
  @JsonKey(toJson: _locationToJson)
  final LocationModel canton;
  @JsonKey(toJson: _locationToJson)
  final LocationModel parroquia;
  final String mainStreet;
  final String backStreet;
  @JsonKey(toJson: ResidentialHousingType.toJson)
  final ResidentialHousingType housingType;
  @JsonKey(toJson: ResidentialTenureHousingTypeAgreemente.toJson)
  final ResidentialTenureHousingTypeAgreemente tenureHousingTypeAgreement;
  final String numberVillaBuilding;
  final String floorNumber;
  final String departmentNumber;
  @JsonKey(toJson: ResidenceType.toJson)
  final ResidenceType type;
  final List<Dependent> dependents;

  Map<String, dynamic> toJson() => _$ResidentialToJson(this);

  static String? _locationToJson(LocationModel? model) => model?.id;

  Residential copyWith({
    bool? electricLightMeter,
    String? electricalCode,
    LocationModel? province,
    LocationModel? canton,
    LocationModel? parroquia,
    String? mainStreet,
    String? backStreet,
    ResidentialHousingType? housingType,
    ResidentialTenureHousingTypeAgreemente? tenureHousingTypeAgreement,
    String? numberVillaBuilding,
    String? floorNumber,
    String? departmentNumber,
    ResidenceType? type,
    List<Dependent>? dependents,
  }) {
    return Residential(
      electricLightMeter: electricLightMeter ?? this.electricLightMeter,
      electricalCode: electricalCode ?? this.electricalCode,
      province: province ?? this.province,
      canton: canton ?? this.canton,
      parroquia: parroquia ?? this.parroquia,
      mainStreet: mainStreet ?? this.mainStreet,
      backStreet: backStreet ?? this.backStreet,
      housingType: housingType ?? this.housingType,
      tenureHousingTypeAgreement:
          tenureHousingTypeAgreement ?? this.tenureHousingTypeAgreement,
      numberVillaBuilding: numberVillaBuilding ?? this.numberVillaBuilding,
      floorNumber: floorNumber ?? this.floorNumber,
      departmentNumber: departmentNumber ?? this.departmentNumber,
      type: type ?? this.type,
      dependents: dependents ?? this.dependents,
    );
  }
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Dependent {
  Dependent({
    required this.nuiDependents,
    required this.relationship,
    required this.date,
    required this.name,
    required this.lastname,
    required this.state,
  });

  factory Dependent.fromJson(Map<String, dynamic> json) =>
      _$DependentFromJson(json);
  final String nuiDependents;
  @JsonKey(toJson: ResidentialDependentRelation.toJson)
  final ResidentialDependentRelation relationship;
  final String date;
  final String name;
  final String lastname;
  @JsonKey(toJson: _toJson)
  final Status state;

  Dependent copyWith({
    String? nuiDependents,
    ResidentialDependentRelation? relationship,
    String? date,
    String? name,
    String? lastname,
    Status? state,
  }) {
    return Dependent(
      nuiDependents: nuiDependents ?? this.nuiDependents,
      relationship: relationship ?? this.relationship,
      date: date ?? this.date,
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      state: state ?? this.state,
    );
  }

  static String? _toJson(Status? status) => status?.name;

  Map<String, dynamic> toJson() => _$DependentToJson(this);
}
