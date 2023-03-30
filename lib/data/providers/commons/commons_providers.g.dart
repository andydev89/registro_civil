// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commons_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$provincesHash() => r'c571744e328b306570d7aecff428b4821f069d8f';

/// See also [provinces].
@ProviderFor(provinces)
final provincesProvider =
    AutoDisposeFutureProvider<Result<List<LocationModel>, StatusCode>>.internal(
  provinces,
  name: r'provincesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$provincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProvincesRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCode>>;
String _$agenciesHash() => r'd4dc27c3ff72f74bb60a38f39ae16faca7ab569f';

/// See also [agencies].
@ProviderFor(agencies)
final agenciesProvider =
    AutoDisposeFutureProvider<Result<List<AgencyModel>, StatusCode>>.internal(
  agencies,
  name: r'agenciesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$agenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AgenciesRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCode>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
