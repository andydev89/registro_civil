// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gmap_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getPlaceFromLatLngHash() =>
    r'5365a395a32904dbd032338729eb5592637e815d';

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

typedef GetPlaceFromLatLngRef
    = AutoDisposeFutureProviderRef<List<GoogleGeocodingResult>>;

/// See also [getPlaceFromLatLng].
@ProviderFor(getPlaceFromLatLng)
const getPlaceFromLatLngProvider = GetPlaceFromLatLngFamily();

/// See also [getPlaceFromLatLng].
class GetPlaceFromLatLngFamily
    extends Family<AsyncValue<List<GoogleGeocodingResult>>> {
  /// See also [getPlaceFromLatLng].
  const GetPlaceFromLatLngFamily();

  /// See also [getPlaceFromLatLng].
  GetPlaceFromLatLngProvider call(
    LatLng latLng,
  ) {
    return GetPlaceFromLatLngProvider(
      latLng,
    );
  }

  @override
  GetPlaceFromLatLngProvider getProviderOverride(
    covariant GetPlaceFromLatLngProvider provider,
  ) {
    return call(
      provider.latLng,
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
  String? get name => r'getPlaceFromLatLngProvider';
}

/// See also [getPlaceFromLatLng].
class GetPlaceFromLatLngProvider
    extends AutoDisposeFutureProvider<List<GoogleGeocodingResult>> {
  /// See also [getPlaceFromLatLng].
  GetPlaceFromLatLngProvider(
    this.latLng,
  ) : super.internal(
          (ref) => getPlaceFromLatLng(
            ref,
            latLng,
          ),
          from: getPlaceFromLatLngProvider,
          name: r'getPlaceFromLatLngProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaceFromLatLngHash,
          dependencies: GetPlaceFromLatLngFamily._dependencies,
          allTransitiveDependencies:
              GetPlaceFromLatLngFamily._allTransitiveDependencies,
        );

  final LatLng latLng;

  @override
  bool operator ==(Object other) {
    return other is GetPlaceFromLatLngProvider && other.latLng == latLng;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latLng.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$gmapHash() => r'9a0de9d07fb0fc51c33b41de4b266e1a0199a273';

/// See also [Gmap].
@ProviderFor(Gmap)
final gmapProvider =
    AutoDisposeAsyncNotifierProvider<Gmap, GoogleGeocodingResult>.internal(
  Gmap.new,
  name: r'gmapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gmapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Gmap = AutoDisposeAsyncNotifier<GoogleGeocodingResult>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
