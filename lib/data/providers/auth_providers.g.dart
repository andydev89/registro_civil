// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerModelRivHash() => r'0711b7912b4d946b62441bdaf7ea4f2f37e1e9d4';

/// See also [RegisterModelRiv].
@ProviderFor(RegisterModelRiv)
final registerModelRivProvider =
    AutoDisposeNotifierProvider<RegisterModelRiv, RegisterModel>.internal(
  RegisterModelRiv.new,
  name: r'registerModelRivProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerModelRivHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterModelRiv = AutoDisposeNotifier<RegisterModel>;
String _$loginHash() => r'5c15a4d40f4342386092b17e7a322ec66cc20f2d';

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
String _$registerHash() => r'ef44db0f1654be7ca5c123bd2743cb4ae0f9d38b';

/// See also [Register].
@ProviderFor(Register)
final registerProvider =
    AutoDisposeAsyncNotifierProvider<Register, bool>.internal(
  Register.new,
  name: r'registerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Register = AutoDisposeAsyncNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
