// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$refreshTokenHash() => r'ae5945f554b48591e13f42c3c4bd5dc1eaa05e23';

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

typedef RefreshTokenRef = AutoDisposeFutureProviderRef<OAuth2Token?>;

/// See also [refreshToken].
@ProviderFor(refreshToken)
const refreshTokenProvider = RefreshTokenFamily();

/// See also [refreshToken].
class RefreshTokenFamily extends Family<AsyncValue<OAuth2Token?>> {
  /// See also [refreshToken].
  const RefreshTokenFamily();

  /// See also [refreshToken].
  RefreshTokenProvider call(
    String token,
  ) {
    return RefreshTokenProvider(
      token,
    );
  }

  @override
  RefreshTokenProvider getProviderOverride(
    covariant RefreshTokenProvider provider,
  ) {
    return call(
      provider.token,
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
  String? get name => r'refreshTokenProvider';
}

/// See also [refreshToken].
class RefreshTokenProvider extends AutoDisposeFutureProvider<OAuth2Token?> {
  /// See also [refreshToken].
  RefreshTokenProvider(
    this.token,
  ) : super.internal(
          (ref) => refreshToken(
            ref,
            token,
          ),
          from: refreshTokenProvider,
          name: r'refreshTokenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$refreshTokenHash,
          dependencies: RefreshTokenFamily._dependencies,
          allTransitiveDependencies:
              RefreshTokenFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is RefreshTokenProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$authenticationStatusHash() =>
    r'edc3d445215bf33e1dce629b06671316396db051';

/// See also [authenticationStatus].
@ProviderFor(authenticationStatus)
final authenticationStatusProvider =
    AutoDisposeStreamProvider<AuthenticationStatus>.internal(
  authenticationStatus,
  name: r'authenticationStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticationStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthenticationStatusRef
    = AutoDisposeStreamProviderRef<AuthenticationStatus>;
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
String _$loginHash() => r'6603c8783cdc35ee690c00f1e4a57fe9b4be2576';

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
