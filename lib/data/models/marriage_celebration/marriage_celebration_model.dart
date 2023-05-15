import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/binary_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'marriage_celebration_model.g.dart';
part 'marriage_celebration_model.gform.dart';

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class MarriageCelebrationModel {
  MarriageCelebrationModel({
    @FormControlAnnotation<MarriageCelebrationType>()
        this.requestOwnerType = MarriageCelebrationType.attorney,
    @FormControlAnnotation<AgencyModel>() this.agency,
    @FormControlAnnotation<RequestOwner>() this.requestOwner,
    @FormControlAnnotation<Witness>() this.firstWitness,
    @FormControlAnnotation<Witness>() this.secondWitness,
    this.firstPartner,
    this.secondPartner,
    @FormControlAnnotation<bool>() this.isOutside = false,
    this.outside,
    this.state,
    this.id,
  });

  factory MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageCelebrationModelFromJson(json);

  @JsonKey(toJson: _agencyToJson, name: 'agencyId')
  final AgencyModel? agency;

  final Partner? firstPartner;
  final Witness? firstWitness;
  @JsonKey(includeToJson: false)
  final String? id;

  final bool isOutside;
  final Outside? outside;
  final RequestOwner? requestOwner;
  @JsonKey(
    includeFromJson: false,
    includeToJson: true,
  )
  final MarriageCelebrationType requestOwnerType;

  final Partner? secondPartner;
  final Witness? secondWitness;
  @JsonKey(includeToJson: false)
  final StateMarriage? state;

  Map<int, List<Document>> rejectingDocuments() {
    return {
      0: [...?firstPartner?.rejectingDocuments()],
      1: [...?secondPartner?.rejectingDocuments()],
    };
  }

  Map<String, dynamic> toJson() => _$MarriageCelebrationModelToJson(this);

  MarriageCelebrationModel copyWith({
    MarriageCelebrationType? requestOwnerType,
    AgencyModel? agency,
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
      outside: outside ?? this.outside,
      firstWitness: firstWitness ?? this.firstWitness,
      secondWitness: secondWitness ?? this.secondWitness,
      firstPartner: firstPartner ?? this.firstPartner,
      secondPartner: secondPartner ?? this.secondPartner,
    );
  }

  static String _agencyToJson(AgencyModel? agency) {
    return agency?.id ?? '';
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
        name: model.firstName.isNotEmpty && model.lastName.isNotEmpty
            ? '${model.firstName} ${model.lastName}'
            : '',
        phone: model.phone,
        email: model.email,
      );

  final String email;
  final String? identityCard;
  final String name;
  final String nui;
  final String phone;
  final String? powerOfAttorney;

  Map<String, dynamic> toJson() => _$RequestOwnerToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class Outside {
  Outside({
    @FormControlAnnotation(validators: [requiredValidator]) this.latitude = '',
    @FormControlAnnotation(validators: [requiredValidator]) this.longitude = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.principalStreet = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.secondaryStreet = '',
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

  final String name;
  final String nui;

  Map<String, dynamic> toJson() => _$WitnessToJson(this);
}

@FormGroupAnnotation<Partner>(
  validators: [conadisNumberValidatorGroup, childrenRelationshipValidatorGroup],
)
@ReactiveFormAnnotation()
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
        this.nui = '',
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
        this.name = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.maritalStatus,
    @FormControlAnnotation(validators: [requiredValidator])
        this.hasChildren,
    @FormControlAnnotation<ChildrenRelationShip>()
        this.childrenRelationship,
    @FormControlAnnotation(validators: [requiredValidator])
        this.conadis = false,
    @FormControlAnnotation<String>()
        this.conadisNumber = '',
    @FormArrayAnnotation<Document>()
        this.documents = const [],
  });

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);

  @JsonKey(
      includeFromJson: false,
      includeToJson: true,
      toJson: ChildrenRelationShip.toJson)
  final ChildrenRelationShip? childrenRelationship;

  @JsonKey(
    name: 'hasConadis',
    includeFromJson: false,
    includeToJson: true,
  )
  final bool conadis;

  @JsonKey(
    name: 'conadisNui',
    includeFromJson: false,
    includeToJson: true,
  )
  final String conadisNumber;

  final List<Document> documents;

  @JsonKey(includeFromJson: false, includeToJson: true, toJson: Binary.toJson)
  final Binary? hasChildren;

  @JsonKey(toJson: MaritalStatus.toJson)
  final MaritalStatus? maritalStatus;
  final String name;
  final String nui;

  Partner copyWith({
    String? nui,
    String? name,
    MaritalStatus? maritalStatus,
    Binary? hasChildren,
    ChildrenRelationShip? childrenRelationship,
    bool? conadis,
    String? conadisNumber,
    List<Document>? documents,
  }) =>
      Partner(
        nui: nui ?? this.nui,
        name: name ?? this.name,
        maritalStatus: maritalStatus ?? this.maritalStatus,
        hasChildren: hasChildren ?? this.hasChildren,
        childrenRelationship: childrenRelationship ?? this.childrenRelationship,
        conadis: conadis ?? this.conadis,
        conadisNumber: conadisNumber ?? this.conadisNumber,
        documents: documents ?? this.documents,
      );

  Partner updateFromWitness(Witness? witness) => copyWith(
        nui: witness?.nui,
        name: witness?.name,
      );

  List<Document> rejectingDocuments() {
    return documents
        .where((element) => element.state == StateDocument.rejected)
        .toList();
  }

  Map<String, dynamic> toJson() => _$PartnerToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable(explicitToJson: true)
class Document {
  Document({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.referenceId,
    @FormControlAnnotation<String>() this.file = '',
    this.id,
    this.name,
    this.state,
    this.comment,
    this.documentPath,
    this.rejectionTypeId,
  });

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  @JsonKey(includeToJson: false)
  final String? comment;

  @JsonKey(includeToJson: false)
  final String? documentPath;

  @JsonKey(
    includeFromJson: false,
    includeToJson: true,
  )
  final String file;

  @JsonKey(includeToJson: false)
  final String? id;

  @JsonKey(includeToJson: false)
  final String? name;

  final String referenceId;

  @JsonKey(includeToJson: false)
  final String? rejectionTypeId;

  @JsonKey(includeToJson: false)
  final StateDocument? state;

  Document copyWith({
    String? referenceId,
    String? file,
  }) =>
      Document(
        referenceId: referenceId ?? this.referenceId,
        file: file ?? this.file,
        id: id,
        name: name,
        state: state,
        comment: comment,
        documentPath: documentPath,
        rejectionTypeId: rejectionTypeId,
      );

  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}

@ReactiveFormAnnotation()
class SelectAgency {
  SelectAgency({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.agency,
  });

  final AgencyModel agency;
  final LocationModel province;
}

@JsonSerializable()
class DocumentsRejection {
  DocumentsRejection({
    required this.id,
    required this.firstPartnerDocuments,
    required this.secondPartnerDocuments,
  });

  factory DocumentsRejection.fromJson(Map<String, dynamic> json) =>
      _$DocumentsRejectionFromJson(json);

  final List<Document> firstPartnerDocuments;
  final String id;
  final List<Document> secondPartnerDocuments;

  Map<String, dynamic> toJson() => _$DocumentsRejectionToJson(this);
}
