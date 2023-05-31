import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate_reason.dart';
import 'package:registro_civil_apk/data/models/commons/agency_model.dart';
import 'package:registro_civil_apk/data/models/commons/commons.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'id_duplicate_model.g.dart';
part 'id_duplicate_model.gform.dart';
part 'id_duplicate_model.freezed.dart';

@ReactiveFormAnnotation()
@freezed
class IdDuplicateModel with _$IdDuplicateModel {
  @JsonSerializable(explicitToJson: true)
  const factory IdDuplicateModel({
    @JsonKey(includeToJson: true) IdDuplicateProcedureType? type,
    @Default('')
    @JsonKey(includeToJson: false) String? requestOwner,
    @Default('')
    String? nui,
    @Default('')
    String? birthdate,
    @JsonKey(includeToJson: true) IdDuplicateReason? reasonType,
    @JsonKey(
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
      includeFromJson: false,
    )
    @FormControlAnnotation<AgencyModel>()
    AgencyModel? agencyId,
    @Default('')
    String? provinceId,
    @Default(PaymentMethodType.placeToPay)
    @JsonKey(includeToJson: true) PaymentMethodType? paymentType,
  }) = _IdDuplicateModel;

  const IdDuplicateModel._();

  factory IdDuplicateModel.fromJson(Map<String, dynamic> json) =>
      _$IdDuplicateModelFromJson(json);
}

/*class IdDuplicateModel with _$IdDuplicateModel {
  @JsonSerializable(explicitToJson: true)
  const factory IdDuplicateModel({
    @FormControlAnnotation<ProcedureTypeSubModel>()
    ProcedureTypeSubModel? procedureType,
    @FormControlAnnotation<ProcedureReasonSubModel>()
    ProcedureReasonSubModel? procedureReason,
  }) = _IdDuplicateModel;

  const IdDuplicateModel._();

  factory IdDuplicateModel.fromJson(Map<String, dynamic> json) =>
      _$IdDuplicateModelFromJson(json);
}*/

@ReactiveFormAnnotation()
@freezed
class ProcedureTypeSubModel with _$ProcedureTypeSubModel {
  const factory ProcedureTypeSubModel({
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(name: 'procedureType')
    required IdDuplicateProcedureType idDuplicateProcedureType,
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
    @Default('')
    String nui,
    @FormControlAnnotation(validators: [requiredValidator,],)
    required DateTime birthDate,
  }) = _ProcedureTypeForm;

  const ProcedureTypeSubModel._();

  factory ProcedureTypeSubModel.fromJson(Map<String, dynamic> json) =>
      _$ProcedureTypeSubModelFromJson(json);
}

@ReactiveFormAnnotation()
@freezed
class ProcedureReasonSubModel with _$ProcedureReasonSubModel {
  @JsonSerializable(explicitToJson: true)
  const factory ProcedureReasonSubModel({
    @FormControlAnnotation(validators: [requiredValidator])
    required IdDuplicateReason reason,
    @FormControlAnnotation(validators: [requiredValidator])
    @JsonKey(toJson: LocationModel.locationToJson)
    required LocationModel province,
    @FormControlAnnotation(validators: [requiredValidator])
    required AgencyModel agency,
  }) = _ProcedureReasonForm;

  const ProcedureReasonSubModel._();

  factory ProcedureReasonSubModel.fromJson(Map<String, dynamic> json) =>
      _$ProcedureReasonSubModelFromJson(json);
}

