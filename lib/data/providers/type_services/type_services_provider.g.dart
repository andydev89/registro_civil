// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$typeServicesHash() => r'63e7dc1c281cb351ed62898481f06a61e6cbb5ef';

/// See also [typeServices].
@ProviderFor(typeServices)
final typeServicesProvider = AutoDisposeFutureProvider<
    ResponseModelPagination<List<TypeServiceModel>>>.internal(
  typeServices,
  name: r'typeServicesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$typeServicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TypeServicesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<TypeServiceModel>>>;
String _$typeServicesFetchHash() => r'782885fb2c166e42180cad9dd7615619c6b8ec1c';

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

typedef TypeServicesFetchRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<TypeServiceModel>>>;

/// See also [typeServicesFetch].
@ProviderFor(typeServicesFetch)
const typeServicesFetchProvider = TypeServicesFetchFamily();

/// See also [typeServicesFetch].
class TypeServicesFetchFamily extends Family<
    AsyncValue<ResponseModelPagination<List<TypeServiceModel>>>> {
  /// See also [typeServicesFetch].
  const TypeServicesFetchFamily();

  /// See also [typeServicesFetch].
  TypeServicesFetchProvider call(
    int pageNo,
  ) {
    return TypeServicesFetchProvider(
      pageNo,
    );
  }

  @override
  TypeServicesFetchProvider getProviderOverride(
    covariant TypeServicesFetchProvider provider,
  ) {
    return call(
      provider.pageNo,
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
  String? get name => r'typeServicesFetchProvider';
}

/// See also [typeServicesFetch].
class TypeServicesFetchProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<TypeServiceModel>>> {
  /// See also [typeServicesFetch].
  TypeServicesFetchProvider(
    this.pageNo,
  ) : super.internal(
          (ref) => typeServicesFetch(
            ref,
            pageNo,
          ),
          from: typeServicesFetchProvider,
          name: r'typeServicesFetchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$typeServicesFetchHash,
          dependencies: TypeServicesFetchFamily._dependencies,
          allTransitiveDependencies:
              TypeServicesFetchFamily._allTransitiveDependencies,
        );

  final int pageNo;

  @override
  bool operator ==(Object other) {
    return other is TypeServicesFetchProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$typeServicesFilterHash() =>
    r'966ac5554a15e513687585d413eea12ad9a267b9';

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
