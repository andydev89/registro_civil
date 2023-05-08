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
    @FormControlAnnotation(validators: [requiredValidator])
        required this.electricLightMeter,
    @FormControlAnnotation<String>() required this.electricalCode,
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
    @FormArrayAnnotation<Dependent>() required this.dependents,
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

  String get address => '$mainStreet, $backStreet #$numberVillaBuilding';

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
    @FormControlAnnotation(validators: [requiredValidator])
        required this.nuiDependents,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.relationship,
    @FormControlAnnotation(validators: [requiredValidator]) required this.date,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.lastname,
    @FormControlAnnotation(validators: [requiredValidator]) required this.state,
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

@ReactiveFormAnnotation()
class AceptAgreement {
  AceptAgreement({
   @FormControlAnnotation(validators: [trueValidator]) this.acept = false,
  });

  final bool acept;
}
