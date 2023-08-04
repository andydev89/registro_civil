// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'document_validation_model.g.dart';

part 'document_validation_model.gform.dart';

part 'document_validation_model.freezed.dart';

@Freezed(fromJson: false)
@JsonSerializable(explicitToJson: true)
@ReactiveFormAnnotation()
class DocumentValidationModel with _$DocumentValidationModel {
  const factory DocumentValidationModel({
    @FormControlAnnotation(validators: [requiredValidator, length11Validator])
    @Default('')
        String documentCode,
    @FormControlAnnotation(validators: [requiredValidator])
        required DateTime issueDate,
  }) = _DocumentValidationModel;

  factory DocumentValidationModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentValidationModelFromJson(json);

  const DocumentValidationModel._();
}

@Freezed(fromJson: false)
@JsonSerializable(explicitToJson: true)
class DocumentValidationResponseModel with _$DocumentValidationResponseModel {
  const factory DocumentValidationResponseModel({
    String? emisor,
    String? datosAdicionales,
    String? url,
    String? codError,
    String? desError,
    String? numeroCertificado,
    required String resultado,
    required int numeroVerificaciones,
    DateTime? fechaVigencia,
  }) = _DocumentValidationResponseModel;

  factory DocumentValidationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentValidationResponseModelFromJson(json);

  const DocumentValidationResponseModel._();
}
