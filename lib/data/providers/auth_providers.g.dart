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
String _$loginHash() => r'4c7007f56a123c29b66a8fb0f59ce6130140659e';

/// See also [Login].
@ProviderFor(Login)
final loginProvider = AutoDisposeAsyncNotifierProvider<Login, bool>.internal(
  Login.new,
  name: r'loginProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Login = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
