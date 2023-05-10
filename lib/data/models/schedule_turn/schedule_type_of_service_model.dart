import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'schedule_type_of_service_model.g.dart';

@JsonSerializable()
class ScheduleTypeOfServiceModel extends Equatable {
  const ScheduleTypeOfServiceModel({
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

  factory ScheduleTypeOfServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleTypeOfServiceModelFromJson(json);

  final double discount;
  final String? iconoMovil;
  final String? iconoWeb;
  final String id;
  final double iva;
  final String name;
  final double price;
  final bool publishMovil;
  final bool publishWeb;
  final String state;
  final String typeService;

  Map<String, dynamic> toJson() => _$ScheduleTypeOfServiceModelToJson(this);
  
  @override
  List<Object?> get props => [id];
}
