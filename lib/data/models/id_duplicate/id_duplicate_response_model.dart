

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate_reason.dart';

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
    required this.agencyId,
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
  final String provinceId;
  final String agencyId;

  Map<String, dynamic> toJson() => _$IdDuplicateResponseModelToJson(this);
}