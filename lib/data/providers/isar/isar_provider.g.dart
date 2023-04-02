// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isarHash() => r'4acb3adae7fa7c7262c9db95f8e93188ba617033';

/// See also [isar].
@ProviderFor(isar)
final isarProvider = AutoDisposeProvider<Isar>.internal(
  isar,
  name: r'isarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsarRef = AutoDisposeProviderRef<Isar>;
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
String _$offersHash() => r'3aeb4651c280f2307e2598ed84086012a1e9cf5c';

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
