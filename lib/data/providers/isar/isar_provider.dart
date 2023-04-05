import 'package:isar/isar.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/data/models/auth/login_model.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/offers/offers_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_provider.g.dart';

@Riverpod(keepAlive: true)
Isar isar(IsarRef ref) {
  return Isar.openSync([
    RegisterModelSchema,
    OffersModelSchema,
  ]);
}

@riverpod
class User extends _$User {
  @override
  RegisterModel build() {
    final isar = ref.watch(isarProvider);
    final user = isar.registerModels.getSync(0) ?? RegisterModel();
    return user;
  }

  void save(RegisterModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.registerModels.putSync(model));
    state = model;
  }

  void saveLogin(LoginModel model) {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(
      () => isar.registerModels.putSync(
        RegisterModel(
          nui: model.identification,
        ),
      ),
    );
    state = state.copyWith(nui: model.identification);
  }

  void clear() {
    final isar = ref.watch(isarProvider);
    isar.writeTxnSync(() => isar.registerModels.deleteSync(0));
    state = RegisterModel();
  }
}

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
    state = [...state, model];
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
