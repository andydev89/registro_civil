import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/services/services_state_type.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/orders_rejecting_reason_type.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/relationship_simple_certificate_type.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'simple_certificate_model.gform.dart';
part 'simple_certificate_model.g.dart';

@ReactiveFormAnnotation()
class SimpleCertificateFirstStepFamiliarModel {
  SimpleCertificateFirstStepFamiliarModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
    @FormControlAnnotation(validators: [requiredValidator])
        required this.relationship,
    required this.conadisModel,
  });

  final String nui;
  final RelationshipSimpleCertificateType relationship;
  final ConadisModel conadisModel;
}

@FormGroupAnnotation<ConadisModel>(validators: [conadisNumberValidatorGroup])
class ConadisModel {
  ConadisModel({
    @FormControlAnnotation<dynamic>() this.conadis = false,
    @FormControlAnnotation<String>() this.conadisNumber = '',
  });

  final bool conadis;
  final String conadisNumber;
}

@ReactiveFormAnnotation()
class RejectInformation {
  RejectInformation({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.rejectReason,
    @FormControlAnnotation(validators: [requiredValidator])
        required this.rejectDescription,
  });

  final OrdersRejectingReasonType rejectReason;
  final String rejectDescription;
}

@JsonSerializable(explicitToJson: true)
class SimpleCertificateModel {
  SimpleCertificateModel({
    required this.type,
    required this.userNui,
    required this.isFamily,
    required this.typeFamily,
    required this.nuiFamily,
    required this.isConadis,
    required this.nuiConadis,
  });

  SimpleCertificateModel.fromFamily({
    required this.type,
    required this.userNui,
    required this.typeFamily,
    required this.nuiFamily,
    required this.isConadis,
    required this.nuiConadis,
  }) : isFamily = true;

  SimpleCertificateModel.fromPersonal({
    required this.type,
    required this.userNui,
  })  : typeFamily = RelationshipSimpleCertificateType.staff,
        isFamily = false,
        nuiFamily = '',
        isConadis = false,
        nuiConadis = '';

  factory SimpleCertificateModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleCertificateModelFromJson(json);
  @JsonKey(toJson: ServiceType.toJson)
  final ServiceType type;
  final String userNui;
  final bool isFamily;
  @JsonKey(toJson: RelationshipSimpleCertificateType.toJson)
  final RelationshipSimpleCertificateType typeFamily;
  final String nuiFamily;
  final bool isConadis;
  final String nuiConadis;

  Map<String, dynamic> toJson() => _$SimpleCertificateModelToJson(this);
}

@JsonSerializable()
class ProcessModel {
  ProcessModel({
    required this.id,
    required this.state,
    required this.observations,
  });

  factory ProcessModel.fromJson(Map<String, dynamic> json) =>
      _$ProcessModelFromJson(json);
  final String id;
  final ServicesStateType state;
  final String observations;

  Map<String, dynamic> toJson() => _$ProcessModelToJson(this);
}

@JsonSerializable()
class CancelModel {
  CancelModel({
    required this.id,
    required this.observations,
  });

  factory CancelModel.fromJson(Map<String, dynamic> json) =>
      _$CancelModelFromJson(json);
  final String id;
  final String observations;

  Map<String, dynamic> toJson() => _$CancelModelToJson(this);
}
