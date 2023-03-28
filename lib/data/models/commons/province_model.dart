import 'package:flutter/src/widgets/framework.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
part 'province_model.g.dart';

@JsonSerializable()
class ProvinceModel implements Translatable {
  ProvinceModel({
    required this.id,
    required this.name,
    required this.type,
  });

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  final String id;
  final String name;
  final String type;

  Map<String, dynamic> toJson() => _$ProvinceModelToJson(this);

  @override
  String translate(BuildContext context) => name;
}
