
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
part 'location_model.g.dart';

@JsonSerializable()
class LocationModel implements Translatable {
  LocationModel({
    required this.id,
    required this.name,
    required this.type,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  final String id;
  final String name;
  final String type;

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  String translate(BuildContext context) => name;
}
