import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';

part 'type_services_model.g.dart';

@JsonSerializable()
class TypeServiceModel {
  TypeServiceModel({
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

  final int id;
  final String name;
  final String description;
  final double price;
  final double iva;
  final double discount;
  final Status state;
  final bool publishWeb;
  final bool publishMovil;
  final String? path;
  final String iconoWeb;
  final String iconoMovil;
  @JsonKey(toJson: TypeService.toJson)
  final TypeService type;
  final bool schedule;

  Map<String, dynamic> toJson() => _$TypeServiceModelToJson(this);
}
