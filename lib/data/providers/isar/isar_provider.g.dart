// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isarHash() => r'36debdbcfa32401ce76d9094d8727283f34a5e29';

/// See also [isar].
@ProviderFor(isar)
final isarProvider = Provider<Isar>.internal(
  isar,
  name: r'isarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsarRef = ProviderRef<Isar>;
String _$subtotalHash() => r'29e4abf65f759b7362598689d841758d9b7f50dd';

/// See also [subtotal].
@ProviderFor(subtotal)
final subtotalProvider = AutoDisposeProvider<double>.internal(
  subtotal,
  name: r'subtotalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$subtotalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SubtotalRef = AutoDisposeProviderRef<double>;
String _$ivaHash() => r'0390c5e80851019d8b7ffc660ff4b9a2a0ed951b';

/// See also [iva].
@ProviderFor(iva)
final ivaProvider = AutoDisposeProvider<double>.internal(
  iva,
  name: r'ivaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ivaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IvaRef = AutoDisposeProviderRef<double>;
String _$discountConadisHash() => r'5f5259890c105b3c19f23f0a3d85ffc8508f2f6e';

/// See also [discountConadis].
@ProviderFor(discountConadis)
final discountConadisProvider = AutoDisposeProvider<double>.internal(
  discountConadis,
  name: r'discountConadisProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$discountConadisHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DiscountConadisRef = AutoDisposeProviderRef<double>;
String _$totalPayHash() => r'8118cae219c7edd39c94c042454c7d9f11c5fd4f';

/// See also [totalPay].
@ProviderFor(totalPay)
final totalPayProvider = AutoDisposeProvider<double>.internal(
  totalPay,
  name: r'totalPayProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalPayHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TotalPayRef = AutoDisposeProviderRef<double>;
String _$userHash() => r'8879e1c2e6593c2d27cfa1f73bbf4804e3221736';

/// See also [User].
@ProviderFor(User)
final userProvider = AutoDisposeNotifierProvider<User, RegisterModel>.internal(
  User.new,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$User = AutoDisposeNotifier<RegisterModel>;
String _$offersHash() => r'60a6a95a365b9f0e738163445804d8a4499479df';

/// See also [Offers].
@ProviderFor(Offers)
final offersProvider =
    AutoDisposeNotifierProvider<Offers, List<OffersModel>>.internal(
  Offers.new,
  name: r'offersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$offersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Offers = AutoDisposeNotifier<List<OffersModel>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
