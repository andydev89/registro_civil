// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_registration_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$residenceRegistrationHash() =>
    r'3a623a175cbb53e9647e39014cd4e6146d1de781';

/// See also [residenceRegistration].
@ProviderFor(residenceRegistration)
final residenceRegistrationProvider =
    AutoDisposeFutureProvider<ResidenceRegistration>.internal(
  residenceRegistration,
  name: r'residenceRegistrationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$residenceRegistrationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ResidenceRegistrationRef
    = AutoDisposeFutureProviderRef<ResidenceRegistration>;
String _$residentialPHash() => r'791c723298722eecae16a530aa0ae5f866cd923d';

/// See also [ResidentialP].
@ProviderFor(ResidentialP)
final residentialPProvider =
    AutoDisposeNotifierProvider<ResidentialP, Residential>.internal(
  ResidentialP.new,
  name: r'residentialPProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$residentialPHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ResidentialP = AutoDisposeNotifier<Residential>;
String _$resRegHash() => r'7f53f67f4d63c6e3850ff0a685e7dbf39b2e87ba';

/// See also [ResReg].
@ProviderFor(ResReg)
final resRegProvider =
    AutoDisposeNotifierProvider<ResReg, ResidenceRegistration>.internal(
  ResReg.new,
  name: r'resRegProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$resRegHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ResReg = AutoDisposeNotifier<ResidenceRegistration>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
