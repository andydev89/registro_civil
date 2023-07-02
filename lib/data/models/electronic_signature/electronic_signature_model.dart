import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/models/commons/commons.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'electronic_signature_model.g.dart';

part 'electronic_signature_model.gform.dart';

part 'electronic_signature_model.freezed.dart';

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
    int? validityTime,
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
  });

  factory ESignatureFirstSubModel.fromJson(Map<String, dynamic> json) =>
      _$ESignatureFirstSubModelFromJson(json);

  final String userNui;
  PersonType personType;
  SignatureType signatureType;
  bool? isTokenRenovation;
  bool? hasDeviceToken;
  bool? isACustomsAgent;

  Map<String, dynamic> toJson() => _$ESignatureFirstSubModelToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class ESignaturePersonalModel {
  ESignaturePersonalModel({
    @FormControlAnnotation(validators: [requiredValidator])
    this.fullName = '',
    @FormControlAnnotation(validators: [requiredValidator])
    this.email = '',
    @FormControlAnnotation(validators: [requiredValidator])
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
  });

  factory ESignaturePersonalModel.fromJson(Map<String, dynamic> json) =>
      _$ESignaturePersonalModelFromJson(json);

  final String? fullName;
  final String? email;
  final String? phone;
  final String address;
  final String postalCode;
  final LocationModel province;
  final LocationModel city;
  final LocationModel parish;

  Map<String, dynamic> toJson() => _$ESignaturePersonalModelToJson(this);
}

@ReactiveFormAnnotation()
@JsonSerializable()
class ESignatureBillingModel {
  ESignatureBillingModel({
    @FormControlAnnotation<bool>() this.hasRUCIncluded = false,
    this.ruc,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.validityTime,
    @FormControlAnnotation(validators: [requiredValidator])
    required this.useCase,
  });

  factory ESignatureBillingModel.fromJson(Map<String, dynamic> json) =>
      _$ESignatureBillingModelFromJson(json);

  final bool? hasRUCIncluded;
  final String? ruc;
  final int validityTime;
  final SignatureUseCaseType useCase;

  Map<String, dynamic> toJson() => _$ESignatureBillingModelToJson(this);
}
