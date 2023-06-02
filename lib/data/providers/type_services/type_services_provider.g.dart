// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$typeServicesHash() => r'bdd3899d49246e277631f8ceb2054bf0fb687738';

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

typedef TypeServicesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<TypeServiceModel>>>;

/// See also [typeServices].
@ProviderFor(typeServices)
const typeServicesProvider = TypeServicesFamily();

/// See also [typeServices].
class TypeServicesFamily extends Family<
    AsyncValue<ResponseModelPagination<List<TypeServiceModel>>>> {
  /// See also [typeServices].
  const TypeServicesFamily();

  /// See also [typeServices].
  TypeServicesProvider call(
    TypeEnumType type,
  ) {
    return TypeServicesProvider(
      type,
    );
  }

  @override
  TypeServicesProvider getProviderOverride(
    covariant TypeServicesProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'typeServicesProvider';
}

/// See also [typeServices].
class TypeServicesProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<TypeServiceModel>>> {
  /// See also [typeServices].
  TypeServicesProvider(
    this.type,
  ) : super.internal(
          (ref) => typeServices(
            ref,
            type,
          ),
          from: typeServicesProvider,
          name: r'typeServicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$typeServicesHash,
          dependencies: TypeServicesFamily._dependencies,
          allTransitiveDependencies:
              TypeServicesFamily._allTransitiveDependencies,
        );

  final TypeEnumType type;

  @override
  bool operator ==(Object other) {
    return other is TypeServicesProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$typeServicesFetchHash() => r'3edfc56076a1ebcecc9b15d925dd468fb0badb74';
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
    TypeEnumType type,
    int pageNo,
  ) {
    return TypeServicesFetchProvider(
      type,
      pageNo,
    );
  }

  @override
  TypeServicesFetchProvider getProviderOverride(
    covariant TypeServicesFetchProvider provider,
  ) {
    return call(
      provider.type,
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
    this.type,
    this.pageNo,
  ) : super.internal(
          (ref) => typeServicesFetch(
            ref,
            type,
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

  final TypeEnumType type;
  final int pageNo;

  @override
  bool operator ==(Object other) {
    return other is TypeServicesFetchProvider &&
        other.type == type &&
        other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$typeServicesFilterHash() =>
    r'240013870958a56fbad190c0e810a408c05de456';

abstract class _$TypeServicesFilter
    extends BuildlessAutoDisposeNotifier<QueryTypeService> {
  late final TypeEnumType type;

  QueryTypeService build(
    TypeEnumType type,
  );
}

/// See also [TypeServicesFilter].
@ProviderFor(TypeServicesFilter)
const typeServicesFilterProvider = TypeServicesFilterFamily();

/// See also [TypeServicesFilter].
class TypeServicesFilterFamily extends Family<QueryTypeService> {
  /// See also [TypeServicesFilter].
  const TypeServicesFilterFamily();

  /// See also [TypeServicesFilter].
  TypeServicesFilterProvider call(
    TypeEnumType type,
  ) {
    return TypeServicesFilterProvider(
      type,
    );
  }

  @override
  TypeServicesFilterProvider getProviderOverride(
    covariant TypeServicesFilterProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'typeServicesFilterProvider';
}

/// See also [TypeServicesFilter].
class TypeServicesFilterProvider extends AutoDisposeNotifierProviderImpl<
    TypeServicesFilter, QueryTypeService> {
  /// See also [TypeServicesFilter].
  TypeServicesFilterProvider(
    this.type,
  ) : super.internal(
          () => TypeServicesFilter()..type = type,
          from: typeServicesFilterProvider,
          name: r'typeServicesFilterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$typeServicesFilterHash,
          dependencies: TypeServicesFilterFamily._dependencies,
          allTransitiveDependencies:
              TypeServicesFilterFamily._allTransitiveDependencies,
        );

  final TypeEnumType type;

  @override
  bool operator ==(Object other) {
    return other is TypeServicesFilterProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  QueryTypeService runNotifierBuild(
    covariant TypeServicesFilter notifier,
  ) {
    return notifier.build(
      type,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
