// ignore_for_file: invalid_annotation_target

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
@Freezed()
class MarriageCelebrationModel with _$MarriageCelebrationModel {
  @JsonSerializable(explicitToJson: true)
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
    AgencyModel? agencyId,
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

  bool isEmptyRejectingDocuments() {
    return (firstPartner?.rejectingDocuments().isEmpty ?? true) &&
        (secondPartner?.rejectingDocuments().isEmpty ?? true);
  }

  Map<RejectingMarriage, bool> rejectingDocumentsOwner() {
    return {
      RejectingMarriage.identityCard:
          requestOwner?.identityCardSate == StateDocument.rejected,
      RejectingMarriage.powerOfAttorney:
          requestOwner?.powerOfAttorneyState == StateDocument.rejected,
    };
  }

  bool isEmptyRejectingDocumentsOwner() {
    return (requestOwner?.identityCardSate == StateDocument.approved ||
            requestOwner?.identityCardSate == null) &&
        (requestOwner?.powerOfAttorneyState == StateDocument.approved ||
            requestOwner?.powerOfAttorneyState == null);
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
      agencyId: model.agencyId,
      province: model.province,
    );
  }
}

@ReactiveFormAnnotation()
@freezed
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
@freezed
class Partner with _$Partner {
  @JsonSerializable(explicitToJson: true)
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
    MaritalStatusType? maritalStatus,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(toJson: Binary.toJsonNull, fromJson: Binary.fromJsonNull)
    Binary? hasChildren,
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

  Partner updateFromRequestOwner(RequestOwner? owner) => copyWith(
        nui: owner?.nui ?? '',
        name: owner?.name ?? '',
      );

  List<Document> rejectingDocuments() {
    return documents
        .where((element) => element.state == StateDocument.rejected)
        .toList();
  }
}

@ReactiveFormAnnotation()
@freezed
class Document with _$Document {
  const factory Document({
    @FormControlAnnotation(validators: [requiredValidator])
    required String referenceId,
    @JsonKey(
      includeFromJson: false,
      includeToJson: true,
    )
    @FormControlAnnotation<String>()
    @Default('')
    String file,
    @JsonKey(includeToJson: false) String? id,
    @JsonKey(includeToJson: false) String? name,
    @JsonKey(includeToJson: false) StateDocument? state,
    @JsonKey(includeToJson: false) String? comment,
    @JsonKey(includeToJson: false) String? documentPath,
    @JsonKey(includeToJson: false) String? rejectionTypeId,
  }) = _Document;

  const Document._();

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
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
@freezed
class DocumentsRejection with _$DocumentsRejection {
  @JsonSerializable(explicitToJson: true)
  const factory DocumentsRejection({
    String? id,
    @FormControlAnnotation<String>() String? identityCard,
    @FormControlAnnotation<String>() String? powerOfAttorney,
    @FormArrayAnnotation<Document>()
    @Default([])
    List<Document> firstPartnerDocuments,
    @FormArrayAnnotation<Document>()
    @Default([])
    List<Document> secondPartnerDocuments,
  }) = _DocumentsRejection;

  const DocumentsRejection._();

  factory DocumentsRejection.fromJson(Map<String, dynamic> json) =>
      _$DocumentsRejectionFromJson(json);
}
