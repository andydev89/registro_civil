// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerHash() => r'a2eac1b6c8695b3c1fadc944c7629cbe4e606495';

/// See also [Register].
@ProviderFor(Register)
final registerProvider =
    AutoDisposeNotifierProvider<Register, RegisterModel>.internal(
  Register.new,
  name: r'registerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Register = AutoDisposeNotifier<RegisterModel>;
String _$loginHash() => r'278bcae11f1ffc5899e0896e378a50c73d11d451';

/// See also [Login].
@ProviderFor(Login)
final loginProvider =
    AutoDisposeNotifierProvider<Login, Result<bool, StatusCode>>.internal(
  Login.new,
  name: r'loginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Login = AutoDisposeNotifier<Result<bool, StatusCode>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
