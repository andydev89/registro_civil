// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkRegisterHash() => r'9db151bca3f65539cf170e74b1febed69e45573e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef CheckRegisterRef = AutoDisposeFutureProviderRef<bool>;

/// See also [checkRegister].
@ProviderFor(checkRegister)
const checkRegisterProvider = CheckRegisterFamily();

/// See also [checkRegister].
class CheckRegisterFamily extends Family<AsyncValue<bool>> {
  /// See also [checkRegister].
  const CheckRegisterFamily();

  /// See also [checkRegister].
  CheckRegisterProvider call(
    RegisterModel registerModel,
  ) {
    return CheckRegisterProvider(
      registerModel,
    );
  }

  @override
  CheckRegisterProvider getProviderOverride(
    covariant CheckRegisterProvider provider,
  ) {
    return call(
      provider.registerModel,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'checkRegisterProvider';
}

/// See also [checkRegister].
class CheckRegisterProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [checkRegister].
  CheckRegisterProvider(
    this.registerModel,
  ) : super.internal(
          (ref) => checkRegister(
            ref,
            registerModel,
          ),
          from: checkRegisterProvider,
          name: r'checkRegisterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkRegisterHash,
          dependencies: CheckRegisterFamily._dependencies,
          allTransitiveDependencies:
              CheckRegisterFamily._allTransitiveDependencies,
        );

  final RegisterModel registerModel;

  @override
  bool operator ==(Object other) {
    return other is CheckRegisterProvider &&
        other.registerModel == registerModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, registerModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$loginHash() => r'a40512868ffe6001c8c5d645b28890be9ca97c3b';
typedef LoginRef = AutoDisposeFutureProviderRef<String?>;

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<String?>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call(
    LoginModel loginModel,
  ) {
    return LoginProvider(
      loginModel,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      provider.loginModel,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [login].
  LoginProvider(
    this.loginModel,
  ) : super.internal(
          (ref) => login(
            ref,
            loginModel,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
        );

  final LoginModel loginModel;

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.loginModel == loginModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$registerHash() => r'75468e669720d1c9961b3f38d4c957d2976d83b2';

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
