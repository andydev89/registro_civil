// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$typeServicesHash() => r'8a5db4bfe834c27fb939692af4815b876e532733';

/// See also [typeServices].
@ProviderFor(typeServices)
final typeServicesProvider =
    AutoDisposeFutureProvider<List<TypeServiceModel>>.internal(
  typeServices,
  name: r'typeServicesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$typeServicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TypeServicesRef = AutoDisposeFutureProviderRef<List<TypeServiceModel>>;
String _$typeServicesFilterHash() =>
    r'35077bacdb19c97ace44a4bb320fd3ba0b216513';

/// See also [TypeServicesFilter].
@ProviderFor(TypeServicesFilter)
final typeServicesFilterProvider =
    AutoDisposeNotifierProvider<TypeServicesFilter, QueryTypeService>.internal(
  TypeServicesFilter.new,
  name: r'typeServicesFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$typeServicesFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TypeServicesFilter = AutoDisposeNotifier<QueryTypeService>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
