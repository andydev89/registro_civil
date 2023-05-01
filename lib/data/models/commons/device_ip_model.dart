import 'package:json_annotation/json_annotation.dart';

part 'device_ip_model.g.dart';
@JsonSerializable()
class DeviceIpModel {
  DeviceIpModel({
    required this.ip,
  });

  factory DeviceIpModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceIpModelFromJson(json);

  final String ip;

  Map<String, dynamic> toJson() => _$DeviceIpModelToJson(this);
}
