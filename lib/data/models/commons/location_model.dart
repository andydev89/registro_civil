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
    required String type,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  const LocationModel._(); // Added constructor

  @override
  String translate(BuildContext context) => name;

  static String locationToJson(LocationModel instance) => instance.id;
}
