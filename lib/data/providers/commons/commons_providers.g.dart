// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commons_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$provincesHash() => r'15e0651ce0a4fe6e0b3cf308565cd855063b23a4';

/// See also [provinces].
@ProviderFor(provinces)
final provincesProvider = AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>>.internal(
  provinces,
  name: r'provincesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$provincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProvincesRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;
String _$cantonHash() => r'23e9795ac06945efd1c0c39f026b05d80bb9d240';

/// See also [canton].
@ProviderFor(canton)
final cantonProvider = AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>>.internal(
  canton,
  name: r'cantonProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cantonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CantonRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;
String _$parroquiaHash() => r'a53fb707014b76a2ac542eb7e79bd04e91c2aa87';

/// See also [parroquia].
@ProviderFor(parroquia)
final parroquiaProvider = AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>>.internal(
  parroquia,
  name: r'parroquiaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$parroquiaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ParroquiaRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;
String _$agenciesHash() => r'036a9c94ad1a6e2916bb1ae462efb77e73cf1136';

/// See also [agencies].
@ProviderFor(agencies)
final agenciesProvider = AutoDisposeFutureProvider<
    Result<List<AgencyModel>, StatusCodeType>>.internal(
  agencies,
  name: r'agenciesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$agenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AgenciesRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCodeType>>;
String _$agenciesByProvinceHash() =>
    r'c8b42194b70ca72be93afd02601eb069f7f173b3';

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

typedef AgenciesByProvinceRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCodeType>>;

/// See also [agenciesByProvince].
@ProviderFor(agenciesByProvince)
const agenciesByProvinceProvider = AgenciesByProvinceFamily();

/// See also [agenciesByProvince].
class AgenciesByProvinceFamily
    extends Family<AsyncValue<Result<List<AgencyModel>, StatusCodeType>>> {
  /// See also [agenciesByProvince].
  const AgenciesByProvinceFamily();

  /// See also [agenciesByProvince].
  AgenciesByProvinceProvider call({
    required String provinceId,
  }) {
    return AgenciesByProvinceProvider(
      provinceId: provinceId,
    );
  }

  @override
  AgenciesByProvinceProvider getProviderOverride(
    covariant AgenciesByProvinceProvider provider,
  ) {
    return call(
      provinceId: provider.provinceId,
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
  String? get name => r'agenciesByProvinceProvider';
}

/// See also [agenciesByProvince].
class AgenciesByProvinceProvider extends AutoDisposeFutureProvider<
    Result<List<AgencyModel>, StatusCodeType>> {
  /// See also [agenciesByProvince].
  AgenciesByProvinceProvider({
    required this.provinceId,
  }) : super.internal(
          (ref) => agenciesByProvince(
            ref,
            provinceId: provinceId,
          ),
          from: agenciesByProvinceProvider,
          name: r'agenciesByProvinceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$agenciesByProvinceHash,
          dependencies: AgenciesByProvinceFamily._dependencies,
          allTransitiveDependencies:
              AgenciesByProvinceFamily._allTransitiveDependencies,
        );

  final String provinceId;

  @override
  bool operator ==(Object other) {
    return other is AgenciesByProvinceProvider &&
        other.provinceId == provinceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, provinceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$agenciesByCantonHash() => r'b32e78e18dc4df0991c9ad1143a13a18ba7bac56';
typedef AgenciesByCantonRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCodeType>>;

/// See also [agenciesByCanton].
@ProviderFor(agenciesByCanton)
const agenciesByCantonProvider = AgenciesByCantonFamily();

/// See also [agenciesByCanton].
class AgenciesByCantonFamily
    extends Family<AsyncValue<Result<List<AgencyModel>, StatusCodeType>>> {
  /// See also [agenciesByCanton].
  const AgenciesByCantonFamily();

  /// See also [agenciesByCanton].
  AgenciesByCantonProvider call({
    required String cantonId,
  }) {
    return AgenciesByCantonProvider(
      cantonId: cantonId,
    );
  }

  @override
  AgenciesByCantonProvider getProviderOverride(
    covariant AgenciesByCantonProvider provider,
  ) {
    return call(
      cantonId: provider.cantonId,
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
  String? get name => r'agenciesByCantonProvider';
}

/// See also [agenciesByCanton].
class AgenciesByCantonProvider extends AutoDisposeFutureProvider<
    Result<List<AgencyModel>, StatusCodeType>> {
  /// See also [agenciesByCanton].
  AgenciesByCantonProvider({
    required this.cantonId,
  }) : super.internal(
          (ref) => agenciesByCanton(
            ref,
            cantonId: cantonId,
          ),
          from: agenciesByCantonProvider,
          name: r'agenciesByCantonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$agenciesByCantonHash,
          dependencies: AgenciesByCantonFamily._dependencies,
          allTransitiveDependencies:
              AgenciesByCantonFamily._allTransitiveDependencies,
        );

  final String cantonId;

  @override
  bool operator ==(Object other) {
    return other is AgenciesByCantonProvider && other.cantonId == cantonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cantonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$locationByParentHash() => r'def306b0726f4f133f93c38b3f3192ae054432a0';
typedef LocationByParentRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;

/// See also [locationByParent].
@ProviderFor(locationByParent)
const locationByParentProvider = LocationByParentFamily();

/// See also [locationByParent].
class LocationByParentFamily
    extends Family<AsyncValue<Result<List<LocationModel>, StatusCodeType>>> {
  /// See also [locationByParent].
  const LocationByParentFamily();

  /// See also [locationByParent].
  LocationByParentProvider call({
    required String parentId,
  }) {
    return LocationByParentProvider(
      parentId: parentId,
    );
  }

  @override
  LocationByParentProvider getProviderOverride(
    covariant LocationByParentProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'locationByParentProvider';
}

/// See also [locationByParent].
class LocationByParentProvider extends AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>> {
  /// See also [locationByParent].
  LocationByParentProvider({
    required this.parentId,
  }) : super.internal(
          (ref) => locationByParent(
            ref,
            parentId: parentId,
          ),
          from: locationByParentProvider,
          name: r'locationByParentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationByParentHash,
          dependencies: LocationByParentFamily._dependencies,
          allTransitiveDependencies:
              LocationByParentFamily._allTransitiveDependencies,
        );

  final String parentId;

  @override
  bool operator ==(Object other) {
    return other is LocationByParentProvider && other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$provincesNoAuthHash() => r'523924b502069d98d27d953b08edc93cc6a2a23a';

/// See also [provincesNoAuth].
@ProviderFor(provincesNoAuth)
final provincesNoAuthProvider = AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>>.internal(
  provincesNoAuth,
  name: r'provincesNoAuthProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$provincesNoAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProvincesNoAuthRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;
String _$locationByParentNoAuthHash() =>
    r'6e73bbddeeaa6a4aa669fe8a6b81e0e623df130d';
typedef LocationByParentNoAuthRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCodeType>>;

/// See also [locationByParentNoAuth].
@ProviderFor(locationByParentNoAuth)
const locationByParentNoAuthProvider = LocationByParentNoAuthFamily();

/// See also [locationByParentNoAuth].
class LocationByParentNoAuthFamily
    extends Family<AsyncValue<Result<List<LocationModel>, StatusCodeType>>> {
  /// See also [locationByParentNoAuth].
  const LocationByParentNoAuthFamily();

  /// See also [locationByParentNoAuth].
  LocationByParentNoAuthProvider call({
    required String parentId,
  }) {
    return LocationByParentNoAuthProvider(
      parentId: parentId,
    );
  }

  @override
  LocationByParentNoAuthProvider getProviderOverride(
    covariant LocationByParentNoAuthProvider provider,
  ) {
    return call(
      parentId: provider.parentId,
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
  String? get name => r'locationByParentNoAuthProvider';
}

/// See also [locationByParentNoAuth].
class LocationByParentNoAuthProvider extends AutoDisposeFutureProvider<
    Result<List<LocationModel>, StatusCodeType>> {
  /// See also [locationByParentNoAuth].
  LocationByParentNoAuthProvider({
    required this.parentId,
  }) : super.internal(
          (ref) => locationByParentNoAuth(
            ref,
            parentId: parentId,
          ),
          from: locationByParentNoAuthProvider,
          name: r'locationByParentNoAuthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$locationByParentNoAuthHash,
          dependencies: LocationByParentNoAuthFamily._dependencies,
          allTransitiveDependencies:
              LocationByParentNoAuthFamily._allTransitiveDependencies,
        );

  final String parentId;

  @override
  bool operator ==(Object other) {
    return other is LocationByParentNoAuthProvider &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$agenciesByCantonNoAuthHash() =>
    r'ad2d4d173ef3cf3091e3ac5928f37c06d3be0fbe';
typedef AgenciesByCantonNoAuthRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCodeType>>;

/// See also [agenciesByCantonNoAuth].
@ProviderFor(agenciesByCantonNoAuth)
const agenciesByCantonNoAuthProvider = AgenciesByCantonNoAuthFamily();

/// See also [agenciesByCantonNoAuth].
class AgenciesByCantonNoAuthFamily
    extends Family<AsyncValue<Result<List<AgencyModel>, StatusCodeType>>> {
  /// See also [agenciesByCantonNoAuth].
  const AgenciesByCantonNoAuthFamily();

  /// See also [agenciesByCantonNoAuth].
  AgenciesByCantonNoAuthProvider call({
    required String cantonId,
  }) {
    return AgenciesByCantonNoAuthProvider(
      cantonId: cantonId,
    );
  }

  @override
  AgenciesByCantonNoAuthProvider getProviderOverride(
    covariant AgenciesByCantonNoAuthProvider provider,
  ) {
    return call(
      cantonId: provider.cantonId,
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
  String? get name => r'agenciesByCantonNoAuthProvider';
}

/// See also [agenciesByCantonNoAuth].
class AgenciesByCantonNoAuthProvider extends AutoDisposeFutureProvider<
    Result<List<AgencyModel>, StatusCodeType>> {
  /// See also [agenciesByCantonNoAuth].
  AgenciesByCantonNoAuthProvider({
    required this.cantonId,
  }) : super.internal(
          (ref) => agenciesByCantonNoAuth(
            ref,
            cantonId: cantonId,
          ),
          from: agenciesByCantonNoAuthProvider,
          name: r'agenciesByCantonNoAuthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$agenciesByCantonNoAuthHash,
          dependencies: AgenciesByCantonNoAuthFamily._dependencies,
          allTransitiveDependencies:
              AgenciesByCantonNoAuthFamily._allTransitiveDependencies,
        );

  final String cantonId;

  @override
  bool operator ==(Object other) {
    return other is AgenciesByCantonNoAuthProvider &&
        other.cantonId == cantonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cantonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$servicesHash() => r'184637a77f15dd0b017de579f1a04117dc764984';
typedef ServicesRef = AutoDisposeFutureProviderRef<
    Result<List<TypeServiceModel>, StatusCodeType>>;

/// See also [services].
@ProviderFor(services)
const servicesProvider = ServicesFamily();

/// See also [services].
class ServicesFamily
    extends Family<AsyncValue<Result<List<TypeServiceModel>, StatusCodeType>>> {
  /// See also [services].
  const ServicesFamily();

  /// See also [services].
  ServicesProvider call({
    bool? bookable,
  }) {
    return ServicesProvider(
      bookable: bookable,
    );
  }

  @override
  ServicesProvider getProviderOverride(
    covariant ServicesProvider provider,
  ) {
    return call(
      bookable: provider.bookable,
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
  String? get name => r'servicesProvider';
}

/// See also [services].
class ServicesProvider extends AutoDisposeFutureProvider<
    Result<List<TypeServiceModel>, StatusCodeType>> {
  /// See also [services].
  ServicesProvider({
    this.bookable,
  }) : super.internal(
          (ref) => services(
            ref,
            bookable: bookable,
          ),
          from: servicesProvider,
          name: r'servicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$servicesHash,
          dependencies: ServicesFamily._dependencies,
          allTransitiveDependencies: ServicesFamily._allTransitiveDependencies,
        );

  final bool? bookable;

  @override
  bool operator ==(Object other) {
    return other is ServicesProvider && other.bookable == bookable;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookable.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deviceIpHash() => r'60f4718591b9394bcbb2b58e0ea540af3a79b042';

/// See also [deviceIp].
@ProviderFor(deviceIp)
final deviceIpProvider = AutoDisposeFutureProvider<DeviceIpModel>.internal(
  deviceIp,
  name: r'deviceIpProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deviceIpHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeviceIpRef = AutoDisposeFutureProviderRef<DeviceIpModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
