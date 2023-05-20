// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$operatorsHash() => r'ff8f87308e27d7ba642dcb82aa3cf75db4fb7165';

/// See also [operators].
@ProviderFor(operators)
final operatorsProvider = AutoDisposeFutureProvider<
    Result<List<TelephoneOperatorModel>, StatusCodeType>>.internal(
  operators,
  name: r'operatorsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$operatorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OperatorsRef = AutoDisposeFutureProviderRef<
    Result<List<TelephoneOperatorModel>, StatusCodeType>>;
String _$refreshTokenHash() => r'ddd53a3be89bc8f59daa47cb81125b2c685ff90d';

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
String _$meHash() => r'78550005f432d5bf00a66d4017611ce705adb01c';

/// See also [me].
@ProviderFor(me)
final meProvider = AutoDisposeFutureProvider<MeModel>.internal(
  me,
  name: r'meProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$meHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MeRef = AutoDisposeFutureProviderRef<MeModel>;
String _$loginHash() => r'525f84bb0aa64c1bae1bcc775c58c910ebefa194';

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
String _$registerValidateCitizenHash() =>
    r'9bc3f4eb0b39249a07efed00b4bd1607c0c70323';

/// See also [RegisterValidateCitizen].
@ProviderFor(RegisterValidateCitizen)
final registerValidateCitizenProvider = AutoDisposeNotifierProvider<
    RegisterValidateCitizen, CitizenModel?>.internal(
  RegisterValidateCitizen.new,
  name: r'registerValidateCitizenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerValidateCitizenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterValidateCitizen = AutoDisposeNotifier<CitizenModel?>;
String _$registerDataHash() => r'e2bbf15ab1a32d5be07b48d93ff728a205a95a73';

/// See also [RegisterData].
@ProviderFor(RegisterData)
final registerDataProvider =
    AutoDisposeNotifierProvider<RegisterData, CommandModel?>.internal(
  RegisterData.new,
  name: r'registerDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterData = AutoDisposeNotifier<CommandModel?>;
String _$registerCodeHash() => r'6961c4cf38c5b39fb86ec65612a9baae223626bf';

/// See also [RegisterCode].
@ProviderFor(RegisterCode)
final registerCodeProvider =
    AutoDisposeNotifierProvider<RegisterCode, bool>.internal(
  RegisterCode.new,
  name: r'registerCodeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$registerCodeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterCode = AutoDisposeNotifier<bool>;
String _$citizenHash() => r'dc0b3322d18a205d93a0f631314c79f334fbf602';

/// See also [Citizen].
@ProviderFor(Citizen)
final citizenProvider =
    AutoDisposeNotifierProvider<Citizen, CitizenModel>.internal(
  Citizen.new,
  name: r'citizenProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$citizenHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Citizen = AutoDisposeNotifier<CitizenModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
