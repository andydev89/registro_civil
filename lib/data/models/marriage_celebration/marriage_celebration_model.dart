import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'marriage_celebration_model.g.dart';
part 'marriage_celebration_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class MarriageCelebrationModel {
  MarriageCelebrationModel({
    required this.requestOwnerType,
    required this.agencyId,
    required this.requestOwner,
    required this.isOutside,
    required this.outside,
    required this.firstWitness,
    required this.secondWitness,
    required this.firstPartner,
    required this.secondPartner,
  });

  factory MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageCelebrationModelFromJson(json);
  final String requestOwnerType;
  final String agencyId;
  final RequestOwner requestOwner;
  final bool isOutside;
  final Outside? outside;
  final Witness firstWitness;
  final Witness secondWitness;
  final Partner firstPartner;
  final Partner secondPartner;

  Map<String, dynamic> toJson() => _$MarriageCelebrationModelToJson(this);

  MarriageCelebrationModel copyWith({
    String? requestOwnerType,
    String? agencyId,
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
      agencyId: agencyId ?? this.agencyId,
      requestOwner: requestOwner ?? this.requestOwner,
      isOutside: isOutside ?? this.isOutside,
      outside: outside ?? this.outside,
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
    @FormControlAnnotation(validators: [requiredValidator])
        required this.name,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.phone,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.email,
    this.identityCard,
    this.powerOfAttorney,
  });

  factory RequestOwner.fromJson(Map<String, dynamic> json) =>
      _$RequestOwnerFromJson(json);
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
    @FormControlAnnotation(validators: [requiredValidator]) required this.nui,
    @FormControlAnnotation(validators: [requiredValidator]) required this.name,
  });

  factory Witness.fromJson(Map<String, dynamic> json) =>
      _$WitnessFromJson(json);
  final String nui;
  final String name;

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
    required this.childrenRelationship,
    required this.conadis,
    this.conadisNumber,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.documents,
  });

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
  final String nui;
  final String name;
  final String maritalStatus;
  final bool hasChildren;
  final String childrenRelationship;
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
