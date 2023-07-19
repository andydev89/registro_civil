// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';

part 'birth_abroad_list_model.g.dart';
part 'birth_abroad_list_model.freezed.dart';

@Freezed(fromJson: false)
@JsonSerializable(explicitToJson: true)
class BirthAbroadListModel with _$BirthAbroadListModel {
  const factory BirthAbroadListModel({
    @Default('')
    String id,
    @Default(ForeignType.resident)
    @JsonKey(
      includeToJson: true,
    )
    ForeignType type,
    @Default(RegisterOwnerType.attorney)
    @JsonKey(includeToJson: true)
    RegisterOwnerType registerOwnerType,
    String? requestOwnerId,
    String? requestOwnerIdentification,
    String? name,
    String? identification,
    String? email,
    String? phone,
    String? birthCertificateId,
    String? identityId,
    String? powerOfAttorneyId,
    String? provinceId,
    String? cantonId,
    String? agencyId,
    @JsonKey(includeFromJson: true)
    @Default(
      StateDocument.pending,
    )
    StateDocument state,
    DateTime? createAt,
    DateTime? updatedAt,
  }) = _BirthAbroadListModel;

  factory BirthAbroadListModel.fromJson(Map<String, dynamic> json) =>
      _$BirthAbroadListModelFromJson(json);

  const BirthAbroadListModel._();

/*BirthAbroadListModel copyWithFromModel(BirthAbroadListModel model) {
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

class QueryBirthAbroad {
  QueryBirthAbroad({
    this.pageNo = 0,
    this.pageSize = 20,
    this.filter = '',
  });

  final int pageNo;
  final int pageSize;
  final String filter;

  QueryBirthAbroad copyWith({
    int? pageNo,
    int? pageSize,
    String? filter,
  }) {
    return QueryBirthAbroad(
      pageNo: pageNo ?? this.pageNo,
      pageSize: pageSize ?? this.pageSize,
      filter: filter ?? this.filter,
    );
  }
}
