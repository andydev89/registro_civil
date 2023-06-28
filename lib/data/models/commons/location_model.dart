import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';

part 'location_model.g.dart';

part 'location_model.freezed.dart';

@freezed
class LocationModel with _$LocationModel, Translatable {
  const factory LocationModel({
    required String id,
    required String name,
    String? type,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  const LocationModel._(); // Added constructor

  @override
  String translate(BuildContext context) => name;

  static String locationToJson(LocationModel instance) => instance.id;
  static String? locationToJsonNull(LocationModel? instance) => instance?.id;
}

@freezed
class LocationAgencyModel with _$LocationAgencyModel, Translatable {
  const factory LocationAgencyModel({
    required String agencyId,
    required String name,
  }) = _LocationAgencyModel;

  factory LocationAgencyModel.fromJson(Map<String, dynamic> json) =>
      _$LocationAgencyModelFromJson(json);

  const LocationAgencyModel._();

  @override
  String translate(BuildContext context) => name;

  static String? locationToJson(LocationAgencyModel? instance) =>
      instance?.agencyId;
}
