import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';

part 'agency_model.g.dart';

@JsonSerializable()
class AgencyModel extends Equatable implements Translatable {
  const AgencyModel({
    required this.id,
    required this.name,
    required this.description,
    required this.country,
    required this.province,
    required this.canton,
    required this.parroquia,
    required this.region,
    required this.state,
    this.latitude,
    this.longitude,
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
  final String region;
  final String? latitude;
  final String? longitude;
  final String state;

  double? get lat => latitude != null ? double.tryParse(latitude!) : null;
  double? get lon => longitude != null ? double.tryParse(longitude!) : null;

  Map<String, dynamic> toJson() => _$AgencyModelToJson(this);

  @override
  String translate(BuildContext context) => name;

  @override
  List<Object?> get props => [id];
}
