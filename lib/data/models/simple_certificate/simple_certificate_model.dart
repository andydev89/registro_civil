import 'package:json_annotation/json_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/services/services_state_enum.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/refecting_reason_enum.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/relationship_simple_certificate_enum.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
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
  final RelationshipSimpleCertificateEnum relationship;
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

  final OrdersRejectingReason rejectReason;
  final String rejectDescription;
}

@JsonSerializable()
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
  })  : typeFamily = RelationshipSimpleCertificateEnum.staff,
        isFamily = false,
        nuiFamily = '',
        isConadis = false,
        nuiConadis = '';

  factory SimpleCertificateModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleCertificateModelFromJson(json);
  final TypeSimpleCertificateEnum type;
  final String userNui;
  final bool isFamily;
  final RelationshipSimpleCertificateEnum typeFamily;
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
  final int id;
  final ServicesState state;
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
  final int id;
  final String observations;

  Map<String, dynamic> toJson() => _$CancelModelToJson(this);
}
