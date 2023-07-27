

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate_reason.dart';
import 'package:registro_civil_apk/data/models/commons/commons.dart';

part 'id_duplicate_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IdDuplicateResponseModel {
  IdDuplicateResponseModel({
    required this.id,
    required this.type,
    required this.requestOwnerId,
    required this.nui,
    required this.birthDate,
    required this.reasonType,
    required this.createAt,
    required this.updatedAt,
    this.printedAt,
    this.deliveredAt,
    this.operatorId,
    required this.state,
    required this.provinceId,
    this.agency,
  });

  factory IdDuplicateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$IdDuplicateResponseModelFromJson(json);

  final String id;
  final String type;
  final String requestOwnerId;
  final String nui;
  final DateTime birthDate;
  final IdDuplicateReason reasonType;
  final DateTime createAt;
  final DateTime updatedAt;
  final dynamic printedAt;
  final dynamic deliveredAt;
  final dynamic operatorId;
  final StateMarriageType state;
  @JsonKey(
    fromJson: LocationModel.provinceFromJson,
    includeFromJson: true,
  )
  final LocationModel? provinceId;
  @JsonKey(
    fromJson: LocationModel.agencyFromJson,
    includeFromJson: true,
  )
  final LocationModel? agency;

  Map<String, dynamic> toJson() => _$IdDuplicateResponseModelToJson(this);
}

class QueryDuplicate {
  QueryDuplicate({
    this.pageNo = 0,
    this.pageSize = 20,
    this.filter = '',
  });

  final int pageNo;
  final int pageSize;
  final String filter;

  QueryDuplicate copyWith({
    int? pageNo,
    int? pageSize,
    String? filter,
  }) {
    return QueryDuplicate(
      pageNo: pageNo ?? this.pageNo,
      pageSize: pageSize ?? this.pageSize,
      filter: filter ?? this.filter,
    );
  }
}
