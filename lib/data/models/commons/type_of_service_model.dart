import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
part 'type_of_service_model.g.dart';

@JsonSerializable()
class TypeOfServiceModel implements Translatable {
  TypeOfServiceModel({
    required this.id,
    required this.name,
    required this.price,
    required this.iva,
    required this.discount,
    required this.state,
    required this.publishWeb,
    required this.publishMovil,
    required this.iconoWeb,
    required this.iconoMovil,
    required this.typeService,
  });

  factory TypeOfServiceModel.fromJson(Map<String, dynamic> json) =>
      _$TypeOfServiceModelFromJson(json);

  final double discount;
  final String? iconoMovil;
  final String? iconoWeb;
  final int id;
  final double iva;
  final String name;
  final double price;
  final bool publishMovil;
  final bool publishWeb;
  final String state;
  final String typeService;

  Map<String, dynamic> toJson() => _$TypeOfServiceModelToJson(this);

  @override
  String translate(BuildContext context) => name;
}
