
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';

part 'agency_model.g.dart';

@JsonSerializable()
class AgencyModel implements Translatable {
  AgencyModel({
    required this.id,
    required this.name,
    required this.description,
    required this.country,
    required this.province,
    required this.canton,
    required this.parroquia,
    required this.city,
    required this.region,
    this.latitude,
    this.longitude,
    required this.state,
  });

  factory AgencyModel.fromJson(Map<String, dynamic> json) =>
      _$AgencyModelFromJson(json);

  final String id;
  final String name;
  final String description;
  final LocationModel country;
  final LocationModel province;
  final LocationModel canton;
  final LocationModel parroquia;
  final LocationModel city;
  final LocationModel region;
  final double? latitude;
  final double? longitude;
  final String state;

  Map<String, dynamic> toJson() => _$AgencyModelToJson(this);

  @override
  String translate(BuildContext context) => name;
}
