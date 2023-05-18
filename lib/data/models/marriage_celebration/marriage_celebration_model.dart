import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/binary_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/rejecting_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/state_marriage_type.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'marriage_celebration_model.g.dart';
part 'marriage_celebration_model.gform.dart';
part 'marriage_celebration_model.freezed.dart';

@ReactiveFormAnnotation()
@Freezed(toJson: true)
class MarriageCelebrationModel with _$MarriageCelebrationModel {
  const factory MarriageCelebrationModel({
    @FormControlAnnotation<MarriageCelebrationType>()
    @Default(MarriageCelebrationType.attorney)
    MarriageCelebrationType requestOwnerType,
    @JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false,
    )
    @FormControlAnnotation<AgencyModel>()
    AgencyModel? agencyID,
    @JsonKey(includeToJson: false) LocationModel? province,
    @JsonKey(includeToJson: false) LocationModel? agency,
    @FormControlAnnotation<Witness>() Witness? firstWitness,
    @FormControlAnnotation<Witness>() Witness? secondWitness,
    Partner? firstPartner,
    Partner? secondPartner,
    RequestOwner? requestOwner,
    @FormControlAnnotation<bool>() @Default(false) bool isOutside,
    Outside? outside,
    @JsonKey(includeToJson: false) StateMarriageType? state,
    @JsonKey(includeToJson: false) String? id,
  }) = _MarriageCelebrationModel;

  const MarriageCelebrationModel._();

  factory MarriageCelebrationModel.fromJson(Map<String, dynamic> json) =>
      _$MarriageCelebrationModelFromJson(json);

  Map<RejectingMarriage, List<Document>> rejectingDocuments() {
    return {
      RejectingMarriage.firstPartnerDocuments: [
        ...?firstPartner?.rejectingDocuments()
      ],
      RejectingMarriage.secondPartnerDocuments: [
        ...?secondPartner?.rejectingDocuments()
      ],
    };
  }

  Map<RejectingMarriage, bool> rejectingDocumentsOwner() {
    return {
      RejectingMarriage.identityCard:
          requestOwner?.identityCardSate == StateDocument.rejected,
      RejectingMarriage.powerOfAttorney:
          requestOwner?.powerOfAttorneyState == StateDocument.rejected,
    };
  }

  MarriageCelebrationModel copyWithFromModel(MarriageCelebrationModel model) {
    return copyWith(
      requestOwnerType: model.requestOwnerType,
      agency: model.agency,
      requestOwner: model.requestOwner,
      isOutside: model.isOutside,
      outside: model.outside,
      firstWitness: model.firstWitness,
      secondWitness: model.secondWitness,
      firstPartner: model.firstPartner,
      secondPartner: model.secondPartner,
      state: model.state,
      id: model.id,
      agencyID: model.agencyID,
      province: model.province,
    );
  }
}

@ReactiveFormAnnotation()
@Freezed(toJson: true)
class RequestOwner with _$RequestOwner {
  const factory RequestOwner({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
    @Default('')
    String nui,
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
    @Default('')
    String name,
    @FormControlAnnotation(
      validators: [requiredValidator, length10Validator],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
    @Default('')
    String phone,
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
    @Default('')
    String email,
    @FormControlAnnotation<String>() String? identityCard,
    @FormControlAnnotation<String>() String? powerOfAttorney,
    @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending,
    )
    @FormControlAnnotation<StateDocument>()
    StateDocument? identityCardSate,
    @JsonKey(
      includeToJson: false,
      includeFromJson: true,
      unknownEnumValue: StateDocument.pending,
    )
    @FormControlAnnotation<StateDocument>()
    StateDocument? powerOfAttorneyState,
  }) = _RequestOwner;

  const RequestOwner._();

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
}

@ReactiveFormAnnotation()
@freezed
class Outside with _$Outside {
  const factory Outside({
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
    String latitude,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
    String longitude,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
    String principalStreet,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default('')
    String secondaryStreet,
  }) = _Outside;

  const Outside._();

  factory Outside.fromJson(Map<String, dynamic> json) =>
      _$OutsideFromJson(json);
}

@ReactiveFormAnnotation()
@freezed
class Witness with _$Witness {
  const factory Witness({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
    @Default('')
    String nui,
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
    @Default('')
    String name,
  }) = _Witness;

  const Witness._();

  factory Witness.fromJson(Map<String, dynamic> json) =>
      _$WitnessFromJson(json);

  Witness copyWithFromWitness(Witness witness) {
    return copyWith(
      nui: witness.nui,
      name: witness.name,
    );
  }
}

@FormGroupAnnotation<Partner>(
  validators: [conadisNumberValidatorGroup, childrenRelationshipValidatorGroup],
)
@ReactiveFormAnnotation()
@Freezed(toJson: true)
class Partner with _$Partner {
  const factory Partner({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
    @Default('')
    String nui,
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
    @Default('')
    String name,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default(MaritalStatusType.single)
    MaritalStatusType maritalStatus,
    @FormControlAnnotation(validators: [requiredValidator])
    @Default(Binary.no)
    @JsonKey(toJson: Binary.toJson, fromJson: Binary.fromJson)
    Binary hasChildren,
    @FormControlAnnotation<ChildrenRelationShipType>()
    ChildrenRelationShipType? childrenRelationship,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(name: 'hasConadis')
    @Default(false)
    bool conadis,
    @FormControlAnnotation<String>()
    @JsonKey(
      name: 'conadisNui',
    )
    @Default('')
    String conadisNumber,
    @FormArrayAnnotation<Document>() @Default([]) List<Document> documents,
  }) = _Partner;

  const Partner._();

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);

  Partner copyWithFromPartner(Partner partner) => copyWith(
        nui: partner.nui,
        name: partner.name,
        maritalStatus: partner.maritalStatus,
        hasChildren: partner.hasChildren,
        childrenRelationship: partner.childrenRelationship,
        conadis: partner.conadis,
        conadisNumber: partner.conadisNumber,
        documents: partner.documents,
      );

  Partner updateFromWitness(Witness? witness) => copyWith(
        nui: witness?.nui ?? '',
        name: witness?.name ?? '',
      );

  List<Document> rejectingDocuments() {
    return documents
        .where((element) => element.state == StateDocument.rejected)
        .toList();
  }
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

@ReactiveFormAnnotation()
@JsonSerializable()
class DocumentsRejection {
  DocumentsRejection({
    this.id,
    @FormControlAnnotation<String>() this.identityCard,
    @FormControlAnnotation<String>() this.powerOfAttorney,
    @FormArrayAnnotation<Document>() this.firstPartnerDocuments = const [],
    @FormArrayAnnotation<Document>() this.secondPartnerDocuments = const [],
  });

  factory DocumentsRejection.fromJson(Map<String, dynamic> json) =>
      _$DocumentsRejectionFromJson(json);

  final String? id;
  final String? identityCard;
  final String? powerOfAttorney;
  final List<Document> firstPartnerDocuments;
  final List<Document> secondPartnerDocuments;

  DocumentsRejection copyWith({
    String? id,
  }) =>
      DocumentsRejection(
        id: id ?? this.id,
        identityCard: identityCard,
        powerOfAttorney: powerOfAttorney,
        firstPartnerDocuments: firstPartnerDocuments,
        secondPartnerDocuments: secondPartnerDocuments,
      );

  Map<String, dynamic> toJson() => _$DocumentsRejectionToJson(this);
}
