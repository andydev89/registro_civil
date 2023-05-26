import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';

part 'type_services_model.g.dart';

@JsonSerializable()
class TypeServiceModel implements Translatable {
  const TypeServiceModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.iva,
    required this.discount,
    required this.state,
    required this.publishWeb,
    required this.publishMovil,
    this.path,
    required this.iconoWeb,
    required this.iconoMovil,
    required this.type,
    required this.schedule,
  });

  factory TypeServiceModel.fromJson(Map<String, dynamic> json) =>
      _$TypeServiceModelFromJson(json);

  final String description;
  final double discount;
  final String iconoMovil;
  final String iconoWeb;
  final String id;
  final double iva;
  final String name;
  final String? path;
  final double price;
  final bool publishMovil;
  final bool publishWeb;
  final bool schedule;
  final StatusType state;
  @JsonKey(toJson: ServiceType.toJson, fromJson: ServiceType.fromJson)
  final ServiceType type;

  @override
  String translate(BuildContext context) => name;

  Map<String, dynamic> toJson() => _$TypeServiceModelToJson(this);

  double get total => price + iva - discount;

  bool get isFreeService => price == 0;
}
