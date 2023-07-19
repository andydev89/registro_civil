// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'birth_abroad_model.g.dart';
part 'birth_abroad_model.freezed.dart';

@Freezed(fromJson: false)
@JsonSerializable(explicitToJson: true)
class BirthAbroadModel with _$BirthAbroadModel {
  const factory BirthAbroadModel({
    @Default(ForeignType.resident)
    @JsonKey(
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
    String? provinceId,
    String? cantonId,
    String? agencyId,
  }) = _BirthAbroadModel;

  factory BirthAbroadModel.fromJson(Map<String, dynamic> json) =>
      _$BirthAbroadModelFromJson(json);

  const BirthAbroadModel._();

/*BirthAbroadModel copyWithFromModel(BirthAbroadModel model) {
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
  }*/
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

@Freezed()
class Certificate with _$Certificate {
  const factory Certificate({
    String? name,
    String? file,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);

  const Certificate._();
}
