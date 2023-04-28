import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'marriage_celebration_model.g.dart';
part 'marriage_celebration_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class MarriageCelebrationModel {
  MarriageCelebrationModel({
    @FormControlAnnotation(validators: [requiredValidator])
        this.requestOwnerType,
    @FormControlAnnotation(validators: [requiredValidator]) this.agency,
    @FormControlAnnotation(validators: [requiredValidator]) this.requestOwner,
    @FormControlAnnotation(validators: [requiredValidator]) this.firstWitness,
    @FormControlAnnotation(validators: [requiredValidator]) this.secondWitness,
    this.firstPartner,
    this.secondPartner,
    @FormControlAnnotation(validators: [requiredValidator])
        this.isOutside = false,
    this.outside,
  });

  factory MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageCelebrationModelFromJson(json);
  final MarriageCelebrationType? requestOwnerType;
  @JsonKey(toJson: _agencyToJson, name: 'agencyId')
  final Agency? agency;
  final RequestOwner? requestOwner;
  final bool isOutside;
  final Outside? outside;
  final Witness? firstWitness;
  final Witness? secondWitness;
  final Partner? firstPartner;
  final Partner? secondPartner;

  static String _agencyToJson(Agency? agency) {
    return agency?.id ?? '';
  }

  Map<String, dynamic> toJson() => _$MarriageCelebrationModelToJson(this);

  MarriageCelebrationModel copyWith({
    MarriageCelebrationType? requestOwnerType,
    Agency? agency,
    RequestOwner? requestOwner,
    bool? isOutside,
    Outside? outside,
    Witness? firstWitness,
    Witness? secondWitness,
    Partner? firstPartner,
    Partner? secondPartner,
  }) {
    return MarriageCelebrationModel(
      requestOwnerType: requestOwnerType ?? this.requestOwnerType,
      agency: agency ?? this.agency,
      requestOwner: requestOwner ?? this.requestOwner,
      isOutside: isOutside ?? this.isOutside,
      outside: outside,
      firstWitness: firstWitness ?? this.firstWitness,
      secondWitness: secondWitness ?? this.secondWitness,
      firstPartner: firstPartner ?? this.firstPartner,
      secondPartner: secondPartner ?? this.secondPartner,
    );
  }
}

@ReactiveFormAnnotation()
@JsonSerializable()
class RequestOwner {
  RequestOwner({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        required this.nui,
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
        required this.name,
    @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
        required this.phone,
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
        required this.email,
    @FormControlAnnotation<String>()
        this.identityCard,
    @FormControlAnnotation<String>()
        this.powerOfAttorney,
  });

  factory RequestOwner.fromJson(Map<String, dynamic> json) =>
      _$RequestOwnerFromJson(json);

  factory RequestOwner.fromMe(MeModel model) => RequestOwner(
        nui: model.identification,
        name: '${model.firstName} ${model.lastName}',
        phone: '',
        email: model.email,
      );

  final String nui;
  final String name;
  final String phone;
  final String email;
  final String? identityCard;
  final String? powerOfAttorney;

  Map<String, dynamic> toJson() => _$RequestOwnerToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Outside {
  Outside({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.latitude,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.longitude,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.principalStreet,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.secondaryStreet,
  });

  factory Outside.fromJson(Map<String, dynamic> json) =>
      _$OutsideFromJson(json);
  final String latitude;
  final String longitude;
  final String principalStreet;
  final String secondaryStreet;

  Map<String, dynamic> toJson() => _$OutsideToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Witness {
  Witness({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
        this.name = '',
  });

  factory Witness.fromJson(Map<String, dynamic> json) =>
      _$WitnessFromJson(json);
  final String nui;
  final String name;

  @JsonKey(includeToJson: false)
  bool get isValid => FormGroup(
        {
          'nui': FormControl<String>(
            value: nui,
            validators: [
              requiredValidator,
              ecuadorDniValidator,
              length10Validator,
            ],
          ),
          'name': FormControl<String>(
            value: name,
            validators: [
              requiredValidator,
              nameValidator,
            ],
          ),
        },
      ).valid;

  Map<String, dynamic> toJson() => _$WitnessToJson(this);
}

@FormGroupAnnotation<Partner>(
  validators: [conadisNumberValidatorGroup, childrenRelationshipValidatorGroup],
)
@JsonSerializable(explicitToJson: true)
class Partner {
  Partner({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        required this.nui,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.name,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.maritalStatus,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.hasChildren,
    @FormControlAnnotation(validators: [requiredValidator])
        this.childrenRelationship,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.conadis,
    this.conadisNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.documents,
  });

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
  final String nui;
  final String name;
  final MaritalStatus maritalStatus;
  final bool hasChildren;
  final ChildrenRelationShip? childrenRelationship;
  @JsonKey(name: 'hasConadis')
  final bool conadis;
  @JsonKey(name: 'conadisNui')
  final String? conadisNumber;
  final List<Document> documents;

  Map<String, dynamic> toJson() => _$PartnerToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Document {
  Document({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.referenceId,
    @FormControlAnnotation(validators: [requiredValidator]) required this.file,
  });

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
  final String referenceId;
  final String file;

  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
