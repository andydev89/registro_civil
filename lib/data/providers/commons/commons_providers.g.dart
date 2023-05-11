// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commons_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$provincesHash() => r'fb8d719d5f01d727ff4456c5ab2653fe199b4bc1';

/// See also [provinces].
@ProviderFor(provinces)
final provincesProvider =
    AutoDisposeFutureProvider<Result<List<LocationModel>, StatusCode>>.internal(
  provinces,
  name: r'provincesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$provincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProvincesRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCode>>;
String _$cantonHash() => r'ce5df292e20aa3a619f466d1ad73267bce2180fa';

/// See also [canton].
@ProviderFor(canton)
final cantonProvider =
    AutoDisposeFutureProvider<Result<List<LocationModel>, StatusCode>>.internal(
  canton,
  name: r'cantonProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cantonHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CantonRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCode>>;
String _$parroquiaHash() => r'e3a0b940986beb2b340deb2cd9067e76c69214e8';

/// See also [parroquia].
@ProviderFor(parroquia)
final parroquiaProvider =
    AutoDisposeFutureProvider<Result<List<LocationModel>, StatusCode>>.internal(
  parroquia,
  name: r'parroquiaProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$parroquiaHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ParroquiaRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCode>>;
String _$agenciesHash() => r'ec81c4e5a5ed483d2011ce3c6398c2f9b949c1d8';

/// See also [agencies].
@ProviderFor(agencies)
final agenciesProvider =
    AutoDisposeFutureProvider<Result<List<AgencyModel>, StatusCode>>.internal(
  agencies,
  name: r'agenciesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$agenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AgenciesRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCode>>;
String _$agenciesByProvinceHash() =>
    r'f89c498948bc9d1ba4ef86acce27e40179117e40';

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
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCode>>;

/// See also [agenciesByProvince].
@ProviderFor(agenciesByProvince)
const agenciesByProvinceProvider = AgenciesByProvinceFamily();

/// See also [agenciesByProvince].
class AgenciesByProvinceFamily
    extends Family<AsyncValue<Result<List<AgencyModel>, StatusCode>>> {
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
class AgenciesByProvinceProvider
    extends AutoDisposeFutureProvider<Result<List<AgencyModel>, StatusCode>> {
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

String _$agenciesByCantonHash() => r'9a2b832724d1bb3ca37ca6704275b2fe41534670';
typedef AgenciesByCantonRef
    = AutoDisposeFutureProviderRef<Result<List<AgencyModel>, StatusCode>>;

/// See also [agenciesByCanton].
@ProviderFor(agenciesByCanton)
const agenciesByCantonProvider = AgenciesByCantonFamily();

/// See also [agenciesByCanton].
class AgenciesByCantonFamily
    extends Family<AsyncValue<Result<List<AgencyModel>, StatusCode>>> {
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
class AgenciesByCantonProvider
    extends AutoDisposeFutureProvider<Result<List<AgencyModel>, StatusCode>> {
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

String _$locationByParentHash() => r'0a48e2ed993237772bf26ea779965b5b52d04674';
typedef LocationByParentRef
    = AutoDisposeFutureProviderRef<Result<List<LocationModel>, StatusCode>>;

/// See also [locationByParent].
@ProviderFor(locationByParent)
const locationByParentProvider = LocationByParentFamily();

/// See also [locationByParent].
class LocationByParentFamily
    extends Family<AsyncValue<Result<List<LocationModel>, StatusCode>>> {
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
class LocationByParentProvider
    extends AutoDisposeFutureProvider<Result<List<LocationModel>, StatusCode>> {
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

String _$servicesHash() => r'3b3e30b328b9d103aa664002930f3d639aa4cbdc';
typedef ServicesRef
    = AutoDisposeFutureProviderRef<Result<List<TypeServiceModel>, StatusCode>>;

/// See also [services].
@ProviderFor(services)
const servicesProvider = ServicesFamily();

/// See also [services].
class ServicesFamily
    extends Family<AsyncValue<Result<List<TypeServiceModel>, StatusCode>>> {
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
    Result<List<TypeServiceModel>, StatusCode>> {
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
