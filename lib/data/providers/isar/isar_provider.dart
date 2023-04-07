import 'package:isar/isar.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

@Riverpod(keepAlive: true)
Isar isar(IsarRef ref) {
  return Isar.openSync([
    // MeModelSchema,
    OffersModelSchema,
  ]);
}

// @Riverpod(keepAlive: true)
// class Me extends _$Me {
//   @override
//   MeModel build() {
//     final isar = ref.watch(isarProvider);
//     final me = ref.watch(meApiProvider);
//     if (me.isLoading) return MeModel();
//     final model = me.asData!.value;
//     isar.meModels.putSync(model);
//     return model;
//   }

//   void save(MeModel model) {
//     final isar = ref.watch(isarProvider);
//     isar.writeTxnSync(() => isar.meModels.putSync(model));
//     state = model;
//   }

//   void saveLogin(String nui) {
//     final isar = ref.watch(isarProvider);
//     final user = (isar.meModels.getSync(0) ?? MeModel())
//       ..copyWith(identification: nui);
//     isar.writeTxnSync(() => isar.meModels.putSync(user));
//     state = user;
//   }

//   void clear() {
//     final isar = ref.watch(isarProvider);
//     isar.writeTxnSync(() => isar.meModels.deleteSync(0));
//     state = MeModel();
//   }
// }

@riverpod
class Offers extends _$Offers {
  @override
  List<OffersModel> build() {
    final isar = ref.watch(isarProvider);
    return isar.offersModels.where().findAllSync();
  }

  void save(OffersModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.offersModels.putSync(model));
    state = [...isar.offersModels.where().findAllSync()];
  }

  void delete(OffersModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.offersModels.deleteSync(model.id));
    state = state.where((element) => element.id != model.id).toList();
  }
}

@riverpod
double subtotal(SubtotalRef ref) {
  final offers = ref.watch(offersProvider);
  return offers.fold(
    0,
    (previousValue, element) =>
        previousValue + element.cant * element.simpleCertificate.price,
  );
}

@riverpod
double iva(IvaRef ref) {
  final offers = ref.watch(offersProvider);
  return offers.fold(
    0,
    (previousValue, element) =>
        previousValue + element.cant * element.simpleCertificate.iva,
  );
}

@riverpod
double discountConadis(DiscountConadisRef ref) {
  final offers = ref.watch(offersProvider);
  return offers.fold(
    0,
    (previousValue, element) =>
        previousValue +
        element.cant *
            (element.discountConadis
                ? element.simpleCertificate.discountConadis
                : 0),
  );
}

@riverpod
double totalPay(TotalPayRef ref) {
  final subtotal = ref.watch(subtotalProvider);
  final iva = ref.watch(ivaProvider);
  final discountConadis = ref.watch(discountConadisProvider);
  return subtotal + iva - discountConadis;
}
