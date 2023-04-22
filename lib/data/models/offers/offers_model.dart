import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
part 'offers_model.g.dart';

@JsonSerializable()
class OffersModel {
  OffersModel({
    required this.simpleCertificate,
    this.cant = 1,
    this.discountConadis = false,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) =>
      _$OffersModelFromJson(json);

  late TypeServiceModel simpleCertificate;
  late int cant;
  late bool discountConadis;

  OffersModel operation(int cant) {
    final updatedOffer = OffersModel(
      simpleCertificate: simpleCertificate,
      cant: cant,
      discountConadis: discountConadis,
    );
    return updatedOffer;
  }

  Map<String, dynamic> toJson() => _$OffersModelToJson(this);
}

enum OperationType { more, less }
