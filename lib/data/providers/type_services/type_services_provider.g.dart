// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_services_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$typeServicesHash() => r'e3062898f3b8314f07ef8f1b42fd61ab8c1a4e0f';

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
  TypeServicesProvider call({
    int pageNo = 0,
    int pageSize = 20,
    String filter = '',
    String sortBy = 'name',
    SortType sortType = SortType.asc,
  }) {
    return TypeServicesProvider(
      pageNo: pageNo,
      pageSize: pageSize,
      filter: filter,
      sortBy: sortBy,
      sortType: sortType,
    );
  }

  @override
  TypeServicesProvider getProviderOverride(
    covariant TypeServicesProvider provider,
  ) {
    return call(
      pageNo: provider.pageNo,
      pageSize: provider.pageSize,
      filter: provider.filter,
      sortBy: provider.sortBy,
      sortType: provider.sortType,
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
  TypeServicesProvider({
    this.pageNo = 0,
    this.pageSize = 20,
    this.filter = '',
    this.sortBy = 'name',
    this.sortType = SortType.asc,
  }) : super.internal(
          (ref) => typeServices(
            ref,
            pageNo: pageNo,
            pageSize: pageSize,
            filter: filter,
            sortBy: sortBy,
            sortType: sortType,
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

  final int pageNo;
  final int pageSize;
  final String filter;
  final String sortBy;
  final SortType sortType;

  @override
  bool operator ==(Object other) {
    return other is TypeServicesProvider &&
        other.pageNo == pageNo &&
        other.pageSize == pageSize &&
        other.filter == filter &&
        other.sortBy == sortBy &&
        other.sortType == sortType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);
    hash = _SystemHash.combine(hash, sortBy.hashCode);
    hash = _SystemHash.combine(hash, sortType.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
