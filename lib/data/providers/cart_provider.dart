import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
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

  double get price {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.price * element.cant,
    );
  }

  double get iva {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.iva * element.cant,
    );
  }

  double get discount {
    return state.fold<double>(
      0,
      (previousValue, element) =>
          previousValue + element.simpleCertificate.discount * element.cant,
    );
  }

  double get total => (price * iva / 100) - discount;

  void empty() {
    state = [];
  }
}
