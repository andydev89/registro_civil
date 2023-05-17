import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
part 'offers_model.g.dart';

@JsonSerializable()
class OffersModel {
  const OffersModel({
    required this.simpleCertificate,
    this.cant = 1,
    this.discountConadis = false,
  });

  factory OffersModel.fromJson(Map<String, dynamic> json) =>
      _$OffersModelFromJson(json);

  final TypeServiceModel simpleCertificate;
  final int cant;
  final bool discountConadis;

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
