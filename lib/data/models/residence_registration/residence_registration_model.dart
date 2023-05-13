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
@JsonSerializable(explicitToJson: true)
class ResidenceRegistration {
  ResidenceRegistration({
    @FormControlAnnotation(validators: [requiredValidator]) this.userId = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.observations = '',
    @FormArrayAnnotation<Residential>(validators: [requiredValidator])
        this.residentials = const [],
    @FormControlAnnotation<Status>() this.state=Status.active,
  });

  factory ResidenceRegistration.fromJson(Map<String, dynamic> json) =>
      _$ResidenceRegistrationFromJson(json);

  final String observations;
  final List<Residential> residentials;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final String userId;
  @JsonKey(includeToJson: false, includeFromJson: true)
  final Status state;

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
      state:state,
    );
  }
}

// @JsonSerializable()
// class UserResidence {
//   UserResidence({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.identification,
//     required this.email,
//     required this.phone,
//   });

//   factory UserResidence.fromJson(Map<String, dynamic> json) =>
//       _$UserResidenceFromJson(json);

//   final String id;
//   final String firstName;
//   final String lastName;
//   final String identification;
//   final String email;
//   final String phone;

//   Map<String, dynamic> toJson() => _$UserResidenceToJson(this);
// }

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class Residential {
  Residential({
    @FormControlAnnotation(validators: [requiredValidator])
        this.electricLightMeter = false,
    @FormControlAnnotation<String>() this.electricalCode = '',
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.canton,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.parroquia,
    @FormControlAnnotation(validators: [requiredValidator])
        this.mainStreet = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.backStreet = '',
    @FormControlAnnotation(validators: [requiredValidator])
        required this.housingType,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.tenureHousingTypeAgreement,
    @FormControlAnnotation(validators: [requiredValidator])
        this.numberVillaBuilding = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.floorNumber = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.departmentNumber = '',
    @FormControlAnnotation(validators: [requiredValidator]) required this.type,
    @FormArrayAnnotation<Dependent>() this.dependents = const [],
   @FormControlAnnotation<String>() this.id='',
  });

  factory Residential.fromJson(Map<String, dynamic> json) =>
      _$ResidentialFromJson(json);

  @JsonKey(includeToJson: false, includeFromJson: true)
  final String id;
  final String electricalCode;
  final bool electricLightMeter;
  @JsonKey(toJson: _locationToJson)
  final LocationModel canton;
  final String departmentNumber;
  final List<Dependent> dependents;
  final String floorNumber;
  @JsonKey(toJson: ResidentialHousingType.toJson)
  final ResidentialHousingType housingType;
  final String mainStreet;
  final String backStreet;
  final String numberVillaBuilding;
  @JsonKey(toJson: _locationToJson)
  final LocationModel parroquia;

  @JsonKey(toJson: _locationToJson)
  final LocationModel province;

  @JsonKey(toJson: ResidentialTenureHousingTypeAgreemente.toJson)
  final ResidentialTenureHousingTypeAgreemente tenureHousingTypeAgreement;

  @JsonKey(toJson: ResidenceType.toJson)
  final ResidenceType type;

  String get address => '$mainStreet, $backStreet #$numberVillaBuilding';

  Map<String, dynamic> toJson() => _$ResidentialToJson(this);

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
      id:id,
    );
  }

  Residential copyWithFromFirstStepResidenceModel(
    FirstStepResidenceModel firstStepResidenceModel,
  ) {
    return Residential(
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
      id:id,
    );
  }

  Residential copyWithFromSecondStepResidenceModel(
    SecondStepResidenceModel secondStepResidenceModel,
  ) {
    return Residential(
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
      id:id,
    );
  }

  static String? _locationToJson(LocationModel? model) => model?.id;
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Dependent {
  Dependent({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.nuiDependents,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.relationship,
    @FormControlAnnotation(validators: [requiredValidator]) required this.date,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.lastname,
    @FormControlAnnotation(validators: [requiredValidator]) required this.state,
    @FormControlAnnotation<String>() this.id='',
  });

  factory Dependent.fromJson(Map<String, dynamic> json) =>
      _$DependentFromJson(json);

  @JsonKey(includeToJson: false, includeFromJson: true)
  final String id;
  final String date;
  final String lastname;
  final String name;
  final String nuiDependents;
  @JsonKey(toJson: ResidentialDependentRelation.toJson)
  final ResidentialDependentRelation relationship;

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
      id:id,
    );
  }

  Map<String, dynamic> toJson() => _$DependentToJson(this);

  static String? _toJson(Status? status) => status?.name;
}

@ReactiveFormAnnotation()
class AceptAgreement {
  AceptAgreement({
    @FormControlAnnotation(validators: [trueValidator]) this.acept = false,
  });

  final bool acept;
}

@ReactiveFormAnnotation()
class FirstStepResidenceModel {
  FirstStepResidenceModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.canton,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.parroquia,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.mainStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.backStreet,
  });

  FirstStepResidenceModel.fromResidential(Residential residential)
      : province = residential.province,
        canton = residential.canton,
        parroquia = residential.parroquia,
        mainStreet = residential.mainStreet,
        backStreet = residential.backStreet;

  final String backStreet;
  @JsonKey(toJson: _locationToJson)
  final LocationModel canton;

  final String mainStreet;
  @JsonKey(toJson: _locationToJson)
  final LocationModel parroquia;

  @JsonKey(toJson: _locationToJson)
  final LocationModel province;

  static String? _locationToJson(LocationModel? model) => model?.id;
}

@ReactiveFormAnnotation()
class SecondStepResidenceModel {
  SecondStepResidenceModel({
    @FormControlAnnotation<bool>() required this.electricLightMeter,
    @FormControlAnnotation<String>() required this.electricalCode,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.housingType,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.tenureHousingTypeAgreement,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.numberVillaBuilding,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.floorNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.departmentNumber,
    @FormControlAnnotation(validators: [requiredValidator]) required this.type,
  });

  SecondStepResidenceModel.fromResidential(Residential residential)
      : electricLightMeter = residential.electricLightMeter,
        electricalCode = residential.electricalCode,
        housingType = residential.housingType,
        tenureHousingTypeAgreement = residential.tenureHousingTypeAgreement,
        numberVillaBuilding = residential.numberVillaBuilding,
        floorNumber = residential.floorNumber,
        departmentNumber = residential.departmentNumber,
        type = residential.type;

  final String departmentNumber;
  final bool electricLightMeter;
  final String electricalCode;
  final String floorNumber;
  @JsonKey(toJson: ResidentialHousingType.toJson)
  final ResidentialHousingType housingType;

  final String numberVillaBuilding;
  @JsonKey(toJson: ResidentialTenureHousingTypeAgreemente.toJson)
  final ResidentialTenureHousingTypeAgreemente tenureHousingTypeAgreement;

  @JsonKey(toJson: ResidenceType.toJson)
  final ResidenceType type;
}
