import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
part 'offers_model.g.dart';

@collection
@JsonSerializable()
class OffersModel {
  OffersModel({
    required this.simpleCertificate,
    required this.cant,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) =>
      _$OffersModelFromJson(json);

  Id id = Isar.autoIncrement;
  @enumerated
  late TypeSimpleCertificateEnum simpleCertificate;
  late int cant;

  OffersModel operation({
    required OperationType operation,
  }) {
    switch (operation) {
      case OperationType.more:
        return OffersModel(
          simpleCertificate: simpleCertificate,
          cant: cant + 1,
        );
      case OperationType.less:
        return OffersModel(
          simpleCertificate: simpleCertificate,
          cant: cant > 1 ? cant - 1 : 1,
        );
    }
  }

  Map<String, dynamic> toJson() => _$OffersModelToJson(this);
}

enum OperationType { more, less }
