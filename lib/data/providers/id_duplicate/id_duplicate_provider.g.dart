// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_duplicate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$duplicatesHash() => r'9ee12bcae211206695b1067fb389ee93ba16aad9';

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

typedef DuplicatesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<IdDuplicateResponseModel>>>;

/// See also [duplicates].
@ProviderFor(duplicates)
const duplicatesProvider = DuplicatesFamily();

/// See also [duplicates].
class DuplicatesFamily extends Family<
    AsyncValue<ResponseModelPagination<List<IdDuplicateResponseModel>>>> {
  /// See also [duplicates].
  const DuplicatesFamily();

  /// See also [duplicates].
  DuplicatesProvider call({
    int? pageNo,
  }) {
    return DuplicatesProvider(
      pageNo: pageNo,
    );
  }

  @override
  DuplicatesProvider getProviderOverride(
    covariant DuplicatesProvider provider,
  ) {
    return call(
      pageNo: provider.pageNo,
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
  String? get name => r'duplicatesProvider';
}

/// See also [duplicates].
class DuplicatesProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<IdDuplicateResponseModel>>> {
  /// See also [duplicates].
  DuplicatesProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => duplicates(
            ref,
            pageNo: pageNo,
          ),
          from: duplicatesProvider,
          name: r'duplicatesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$duplicatesHash,
          dependencies: DuplicatesFamily._dependencies,
          allTransitiveDependencies:
              DuplicatesFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is DuplicatesProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$duplicateByIdHash() => r'8812972139a1484dfee0dc99017de88875a9cd00';
typedef DuplicateByIdRef = AutoDisposeFutureProviderRef<IdDuplicateModel>;

/// See also [duplicateById].
@ProviderFor(duplicateById)
const duplicateByIdProvider = DuplicateByIdFamily();

/// See also [duplicateById].
class DuplicateByIdFamily extends Family<AsyncValue<IdDuplicateModel>> {
  /// See also [duplicateById].
  const DuplicateByIdFamily();

  /// See also [duplicateById].
  DuplicateByIdProvider call(
    String id,
  ) {
    return DuplicateByIdProvider(
      id,
    );
  }

  @override
  DuplicateByIdProvider getProviderOverride(
    covariant DuplicateByIdProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'duplicateByIdProvider';
}

/// See also [duplicateById].
class DuplicateByIdProvider
    extends AutoDisposeFutureProvider<IdDuplicateModel> {
  /// See also [duplicateById].
  DuplicateByIdProvider(
    this.id,
  ) : super.internal(
          (ref) => duplicateById(
            ref,
            id,
          ),
          from: duplicateByIdProvider,
          name: r'duplicateByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$duplicateByIdHash,
          dependencies: DuplicateByIdFamily._dependencies,
          allTransitiveDependencies:
              DuplicateByIdFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is DuplicateByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$idDuplicateHash() => r'aff533add481527a28ddd7111cd2f41d1b1c253f';

/// See also [IdDuplicate].
@ProviderFor(IdDuplicate)
final idDuplicateProvider =
    AutoDisposeNotifierProvider<IdDuplicate, IdDuplicateModel>.internal(
  IdDuplicate.new,
  name: r'idDuplicateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$idDuplicateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IdDuplicate = AutoDisposeNotifier<IdDuplicateModel>;
String _$idDuplicateApiHash() => r'e950d746f081d62400891c465663a4229f05eea7';

/// See also [IdDuplicateApi].
@ProviderFor(IdDuplicateApi)
final idDuplicateApiProvider =
    AutoDisposeNotifierProvider<IdDuplicateApi, void>.internal(
  IdDuplicateApi.new,
  name: r'idDuplicateApiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$idDuplicateApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IdDuplicateApi = AutoDisposeNotifier<void>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
