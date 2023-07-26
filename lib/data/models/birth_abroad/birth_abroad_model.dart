// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/models/auth/auth.dart';
import 'package:registro_civil_apk/data/models/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/models/commons/commons.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';

part 'birth_abroad_model.g.dart';

part 'birth_abroad_model.freezed.dart';

part 'birth_abroad_model.gform.dart';

@Freezed(fromJson: false)
@JsonSerializable(explicitToJson: true)
class BirthAbroadModel with _$BirthAbroadModel {
  const factory BirthAbroadModel({
    @Default(ForeignType.resident)
    @JsonKey(
      name: 'type',
      includeToJson: true,
    )
        ForeignType foreignType,
    @Default(RegisterOwnerType.attorney)
    @JsonKey(includeToJson: true)
        RegisterOwnerType registerOwnerType,
    String? requestOwner,
    RegisterOwner? registerOwner,
    Certificate? birthCertificate,
    Certificate? identity,
    Certificate? powerOfAttorney,
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
      toJson: AgencyModel.agencyToJson,
      includeToJson: true,
    )
        AgencyModel? agencyId,
  }) = _BirthAbroadModel;

  factory BirthAbroadModel.fromJson(Map<String, dynamic> json) =>
      _$BirthAbroadModelFromJson(json);

  const BirthAbroadModel._();

  BirthAbroadModel copyWithFromListModel(BirthAbroadListModel model) {
    return copyWith(
      foreignType: model.type,
      registerOwnerType: model.registerOwnerType,
      requestOwner: model.requestOwnerId,
      registerOwner: RegisterOwner(
        name: model.name,
        identification: model.identification,
        email: model.email,
        phone: model.phone,
      ),
      birthCertificate: Certificate(id: model.birthCertificateId),
      identity: Certificate(id: model.identityId),
      powerOfAttorney: Certificate(id: model.powerOfAttorneyId),
      provinceId: LocationModel(id: model.provinceId ?? '', name: ''),
      cantonId: LocationModel(id: model.cantonId ?? '', name: ''),
      agencyId: AgencyModel.fromLocationModel(
        LocationModel(id: model.agencyId ?? '', name: ''),
      ),
    );
  }
}

@ReactiveFormAnnotation()
@freezed
class RegisterOwnerSubModel with _$RegisterOwnerSubModel {
  const factory RegisterOwnerSubModel({
    @FormControlAnnotation(validators: [requiredValidator])
        RegisterOwnerType? registerOwnerType,
    @FormControlAnnotation<String>(
      validators: [
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        String? identification,
    @FormControlAnnotation<String>()
        String? passport,
    @FormControlAnnotation(
      validators: [
        requiredValidator,
      ],
    )
        String? name,
    @FormControlAnnotation<String>(
      validators: [
        requiredValidator,
      ],
    )
        String? email,
    @FormControlAnnotation<String>(
      validators: [
        requiredValidator,
      ],
    )
        String? phone,
  }) = _RegisterOwnerForm;

  const RegisterOwnerSubModel._();

  factory RegisterOwnerSubModel.fromMe(MeModel model) => RegisterOwnerSubModel(
        name: '${model.firstName} ${model.lastName}',
        phone: model.phone,
        email: model.email,
      );

  factory RegisterOwnerSubModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterOwnerSubModelFromJson(json);
}

@Freezed()
class RegisterOwner with _$RegisterOwner {
  const factory RegisterOwner({
    String? name,
    String? identification,
    String? email,
    String? phone,
  }) = _RegisterOwner;

  factory RegisterOwner.fromJson(Map<String, dynamic> json) =>
      _$RegisterOwnerFromJson(json);

  const RegisterOwner._();
}

@FormGroupAnnotation<DocumentsSubModel>(
  validators: [powerOfAttorneyValidatorGroup],
)
@ReactiveFormAnnotation()
@freezed
class DocumentsSubModel with _$DocumentsSubModel {
  const factory DocumentsSubModel({
    @FormControlAnnotation<RegisterOwnerType>()
    @Default(RegisterOwnerType.attorney)
        RegisterOwnerType registerOwnerType,
    @FormControlAnnotation<Certificate>(validators: [requiredValidator])
        Certificate? birthCertificate,
    @FormControlAnnotation<Certificate>(validators: [requiredValidator])
        Certificate? identity,
    @FormControlAnnotation<Certificate>(validators: [requiredValidator])
        Certificate? powerOfAttorney,
  }) = _DocumentsForm;

  const DocumentsSubModel._();

  factory DocumentsSubModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentsSubModelFromJson(json);
}

@ReactiveFormAnnotation()
@freezed
class LocationSubModel with _$LocationSubModel {
  const factory LocationSubModel({
    @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
        LocationModel? province,
    @FormControlAnnotation<LocationModel>(validators: [requiredValidator])
        LocationModel? canton,
    @FormControlAnnotation<AgencyModel>(validators: [requiredValidator])
        AgencyModel? agency,
  }) = _LocationForm;

  const LocationSubModel._();

  factory LocationSubModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSubModelFromJson(json);
}

@Freezed()
class Certificate with _$Certificate implements Translatable {
  const factory Certificate({
    String? id,
    String? name,
    String? file,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);

  const Certificate._();

  @override
  String translate(BuildContext context) {
    return '';
  }
}

Map<String, dynamic>? powerOfAttorneyValidatorGroup(
  AbstractControl<dynamic> birthAbroadModel,
) {
  final birthAbroad = birthAbroadModel.value as Map<String, dynamic>;
  final regOwnerType = birthAbroad['registerOwnerType'] as RegisterOwnerType?;
  final isAttorney = regOwnerType == RegisterOwnerType.attorney;
  // final token = birthAbroad['deviceTokenSerialNumber'] as String? ?? '';
  if (!isAttorney && regOwnerType != null) {
    (birthAbroadModel as FormGroup).controls['powerOfAttorney']!
      ..removeError(ValidationMessage.required)
      ..value = null;
    return null;
  }

  return null; // Devuelve null si la validación es exitosa
}
