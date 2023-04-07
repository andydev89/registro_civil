import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
part 'offers_model.g.dart';

@collection
@JsonSerializable()
class OffersModel {
  OffersModel({
    required this.simpleCertificate,
    this.cant = 1,
    this.discountConadis = false,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) =>
      _$OffersModelFromJson(json);

  Id id = Isar.autoIncrement;
  @enumerated
  late TypeSimpleCertificateEnum simpleCertificate;
  late int cant;
  late bool discountConadis;

  OffersModel operation(int cant) {
    final updatedOffer = OffersModel(
      simpleCertificate: simpleCertificate,
      cant: cant,
      discountConadis: discountConadis,
    )..id = id;
    return updatedOffer;
  }

  Map<String, dynamic> toJson() => _$OffersModelToJson(this);
}

enum OperationType { more, less }
