import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'cart_provider.g.dart';

@Riverpod(keepAlive: true)
class Offers extends _$Offers {
  @override
  List<OffersModel> build() {
    return [];
  }

  void addOffer(OffersModel offer) {
    state = [...state, offer];
  }

  void removeOffer(OffersModel offer) {
    state = state
        .where(
          (element) =>
              element.simpleCertificate.id != offer.simpleCertificate.id,
        )
        .toList();
  }

  void updateOffer(OffersModel offer) {
    state = state
        .map(
          (e) =>
              e.simpleCertificate.id == offer.simpleCertificate.id ? offer : e,
        )
        .toList();
  }

  double price() {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.price * element.cant,
    );
  }

  double iva() {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.iva * element.cant,
    );
  }

  double discount() {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.discount * element.cant,
    );
  }

  double totalPay() => price() + iva() - discount();

  double subTotal() => price() - discount();

  void empty() {
    state = [];
  }

  TypeServiceModel convertToTypeServiceModel(BuildContext context) {
    final l10n = context.l10n;
    return TypeServiceModel(
      id: '0',
      name: l10n.carrito,
      price: price(),
      iva: iva(),
      discount: discount(),
      description: '',
      idIconoMovil: '',
      idIconoWeb: '',
      publishMovil: true,
      publishWeb: true,
      schedule: false,
      typeEnum: TypeEnumType.service,
      state: StatusType.active,
      type: ServiceType.none,
    );
  }
}
