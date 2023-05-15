// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_registration_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$residenceRegistrationHash() =>
    r'58e838d6268c3f0c63f271e6bc7d3a8b45fce09c';

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
String _$residentialPHash() => r'e4f43f76796f434544b66f36846cf05ebcb57ad4';

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
String _$resRegHash() => r'660eb22062309711cf6eebc3eb787d6a262cd2c8';

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
