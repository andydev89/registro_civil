// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/commons/commons.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'electronic_signature_model.freezed.dart';
part 'electronic_signature_model.g.dart';
part 'electronic_signature_model.gform.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ElectronicSignatureModel with _$ElectronicSignatureModel {
  const factory ElectronicSignatureModel({
    @Default(PersonType.legalRepresentative)
    @JsonKey(includeToJson: true)
        PersonType personType,
    @Default(SignatureType.file)
    @JsonKey(includeToJson: true)
        SignatureType type,
    @Default(false)
        bool isTokenRenovation,
    @Default(false)
        bool hasDeviceToken,
    String? deviceTokenSerialNumber,
    @Default(false)
        bool isACustomsAgent,
    String? userNui,
    String? contactAddress,
    String? contactPostalCode,
    @JsonKey(
      toJson: LocationModel.locationToJsonNull,
      includeToJson: true,
    )
        LocationModel? provinceId,
    @JsonKey(
      toJson: LocationModel.locationToJsonNull,
      includeToJson: true,
    )
        LocationModel? cantonId,
    @JsonKey(
      toJson: LocationModel.locationToJsonNull,
      includeToJson: true,
    )
        LocationModel? parroquiaId,
    @Default(false)
        bool hasRUCIncluded,
    String? ruc,
    @Default(SignatureValidityTimeType.oneYear)
    SignatureValidityTimeType validityTime,
    @Default(SignatureUseCaseType.publicProcurementSystem)
    @JsonKey(includeToJson: true)
        SignatureUseCaseType useCase,
  }) = _ElectronicSignatureModel;

  const ElectronicSignatureModel._();

  ElectronicSignatureModel copyWithFromModel(ElectronicSignatureModel model) {
    return copyWith(
      type: model.type,
      cantonId: model.cantonId,
      contactAddress: model.contactAddress,
      contactPostalCode: model.contactPostalCode,
      deviceTokenSerialNumber: model.deviceTokenSerialNumber,
      hasDeviceToken: model.hasDeviceToken,
      hasRUCIncluded: model.hasRUCIncluded,
      isACustomsAgent: model.isACustomsAgent,
      isTokenRenovation: model.isTokenRenovation,
      parroquiaId: model.parroquiaId,
      personType: model.personType,
      provinceId: model.provinceId,
      ruc: model.ruc,
      useCase: model.useCase,
      userNui: model.userNui,
      validityTime: model.validityTime,
    );
  }
}

@FormGroupAnnotation<ESignaturePersonalBillingModel>(
  validators: [signatureTokenValidatorGroup],
)
@ReactiveFormAnnotation()
@JsonSerializable()
class ESignatureFirstSubModel {
  ESignatureFirstSubModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.userNui = '',
    @FormControlAnnotation(validators: [requiredValidator])
        this.personType = PersonType.legalRepresentative,
    @FormControlAnnotation(validators: [requiredValidator])
        this.signatureType = SignatureType.file,
    @FormControlAnnotation<bool>() this.isTokenRenovation = false,
    @FormControlAnnotation<bool>() this.hasDeviceToken = false,
    @FormControlAnnotation<bool>() this.isACustomsAgent = false,
    @FormControlAnnotation(validators: [requiredValidator])
      this.deviceTokenSerialNumber = '',
  });

  factory ESignatureFirstSubModel.fromJson(Map<String, dynamic> json) =>
      _$ESignatureFirstSubModelFromJson(json);

  final String userNui;
  PersonType personType;
  SignatureType signatureType;
  bool? isTokenRenovation;
  bool? hasDeviceToken;
  bool? isACustomsAgent;
  String? deviceTokenSerialNumber;

  Map<String, dynamic> toJson() => _$ESignatureFirstSubModelToJson(this);


}


@FormGroupAnnotation<ESignaturePersonalBillingModel>(
  validators: [signatureRucValidatorGroup],
)
@ReactiveFormAnnotation()
@JsonSerializable()
class ESignaturePersonalBillingModel {
  ESignaturePersonalBillingModel({
    @FormControlAnnotation(validators: [requiredValidator, nameValidator])
    this.fullName = '',
    @FormControlAnnotation(validators: [requiredValidator, emailValidator])
    this.email = '',
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        length10Validator,
      ],
      asyncValidators: [phoneNumberEcuadorValidation],
    )
    this.phone = '',
    @FormControlAnnotation(validators: [requiredValidator])
    required this.address,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.postalCode,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.province,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.city,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.parish,
    //Second Tab
    @FormControlAnnotation<bool>() this.hasRUCIncluded = false,
    @FormControlAnnotation(validators: [requiredValidator])
    this.ruc = '',
    @FormControlAnnotation(validators: [requiredValidator])
    required this.validityTime,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.useCase,
  });

  factory ESignaturePersonalBillingModel.fromJson(Map<String, dynamic> json) =>
      _$ESignaturePersonalBillingModelFromJson(json);

  String? fullName;
  String? email;
  String? phone;
  String address;
  String postalCode;
  LocationModel province;
  LocationModel city;
  LocationModel parish;
  //Second Tab
  bool? hasRUCIncluded;
  String? ruc;
  SignatureValidityTimeType validityTime;
  SignatureUseCaseType useCase;

  Map<String, dynamic> toJson() => _$ESignaturePersonalBillingModelToJson(this);
}

Map<String, dynamic>? signatureTokenValidatorGroup(
    AbstractControl<dynamic> signatureModel,
    ) {
  final signature = signatureModel.value as Map<String, dynamic>;
  final hasToken = signature['hasDeviceToken'] as bool? ?? false;
  final token = signature['deviceTokenSerialNumber'] as String? ?? '';
  if (!hasToken) {
    (signatureModel as FormGroup).controls['deviceTokenSerialNumber']!
      ..removeError(ValidationMessage.required)
      ..value = '';
    return null;
  }

  if (hasToken && token.isEmpty) {
    (signatureModel as FormGroup)
        .controls['deviceTokenSerialNumber']!
        .setErrors({ValidationMessage.required: true});
    return {ValidationMessage.required: true};
  }
  return null; // Devuelve null si la validación es exitosa
}

Map<String, dynamic>? signatureRucValidatorGroup(
    AbstractControl<dynamic> signatureModel,
    ) {
  final signature = signatureModel.value as Map<String, dynamic>;
  final isRucSignature = signature['hasRUCIncluded'] as bool? ?? false;
  final ruc = signature['ruc'] as String? ?? '';
  if (!isRucSignature) {
    (signatureModel as FormGroup).controls['ruc']!
      ..removeError(ValidationMessage.required)
      ..value = '';
    return null;
  }

  if (isRucSignature && ruc.isEmpty) {
    (signatureModel as FormGroup)
        .controls['ruc']!
        .setErrors({ValidationMessage.required: true});
    return {ValidationMessage.required: true};
  }
  return null; // Devuelve null si la validación es exitosa
}
