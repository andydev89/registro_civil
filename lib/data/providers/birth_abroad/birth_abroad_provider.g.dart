// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$birthsAbroadHash() => r'dc7a3b7e29d2e71849b04a7a5207bbbccb76ab48';

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

typedef BirthsAbroadRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<BirthAbroadListModel>>>;

/// See also [birthsAbroad].
@ProviderFor(birthsAbroad)
const birthsAbroadProvider = BirthsAbroadFamily();

/// See also [birthsAbroad].
class BirthsAbroadFamily extends Family<
    AsyncValue<ResponseModelPagination<List<BirthAbroadListModel>>>> {
  /// See also [birthsAbroad].
  const BirthsAbroadFamily();

  /// See also [birthsAbroad].
  BirthsAbroadProvider call({
    int? pageNo,
  }) {
    return BirthsAbroadProvider(
      pageNo: pageNo,
    );
  }

  @override
  BirthsAbroadProvider getProviderOverride(
    covariant BirthsAbroadProvider provider,
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
  String? get name => r'birthsAbroadProvider';
}

/// See also [birthsAbroad].
class BirthsAbroadProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<BirthAbroadListModel>>> {
  /// See also [birthsAbroad].
  BirthsAbroadProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => birthsAbroad(
            ref,
            pageNo: pageNo,
          ),
          from: birthsAbroadProvider,
          name: r'birthsAbroadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$birthsAbroadHash,
          dependencies: BirthsAbroadFamily._dependencies,
          allTransitiveDependencies:
              BirthsAbroadFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is BirthsAbroadProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$createBirthAbroadHash() => r'eb029e882a0b8651dbc86c0080d3c1c7eb4a7c9c';
typedef CreateBirthAbroadRef = AutoDisposeFutureProviderRef<
    Result<CommandWithTransactionCodeModel, StatusCodeType>>;

/// See also [createBirthAbroad].
@ProviderFor(createBirthAbroad)
const createBirthAbroadProvider = CreateBirthAbroadFamily();

/// See also [createBirthAbroad].
class CreateBirthAbroadFamily extends Family<
    AsyncValue<Result<CommandWithTransactionCodeModel, StatusCodeType>>> {
  /// See also [createBirthAbroad].
  const CreateBirthAbroadFamily();

  /// See also [createBirthAbroad].
  CreateBirthAbroadProvider call({
    required BirthAbroadModel model,
  }) {
    return CreateBirthAbroadProvider(
      model: model,
    );
  }

  @override
  CreateBirthAbroadProvider getProviderOverride(
    covariant CreateBirthAbroadProvider provider,
  ) {
    return call(
      model: provider.model,
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
  String? get name => r'createBirthAbroadProvider';
}

/// See also [createBirthAbroad].
class CreateBirthAbroadProvider extends AutoDisposeFutureProvider<
    Result<CommandWithTransactionCodeModel, StatusCodeType>> {
  /// See also [createBirthAbroad].
  CreateBirthAbroadProvider({
    required this.model,
  }) : super.internal(
          (ref) => createBirthAbroad(
            ref,
            model: model,
          ),
          from: createBirthAbroadProvider,
          name: r'createBirthAbroadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createBirthAbroadHash,
          dependencies: CreateBirthAbroadFamily._dependencies,
          allTransitiveDependencies:
              CreateBirthAbroadFamily._allTransitiveDependencies,
        );

  final BirthAbroadModel model;

  @override
  bool operator ==(Object other) {
    return other is CreateBirthAbroadProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$birthAbroadByIdHash() => r'733d98d40dbf496f6ffc50d08c54b6294e8feae5';
typedef BirthAbroadByIdRef = AutoDisposeFutureProviderRef<BirthAbroadListModel>;

/// See also [birthAbroadById].
@ProviderFor(birthAbroadById)
const birthAbroadByIdProvider = BirthAbroadByIdFamily();

/// See also [birthAbroadById].
class BirthAbroadByIdFamily extends Family<AsyncValue<BirthAbroadListModel>> {
  /// See also [birthAbroadById].
  const BirthAbroadByIdFamily();

  /// See also [birthAbroadById].
  BirthAbroadByIdProvider call(
    String id,
  ) {
    return BirthAbroadByIdProvider(
      id,
    );
  }

  @override
  BirthAbroadByIdProvider getProviderOverride(
    covariant BirthAbroadByIdProvider provider,
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
  String? get name => r'birthAbroadByIdProvider';
}

/// See also [birthAbroadById].
class BirthAbroadByIdProvider
    extends AutoDisposeFutureProvider<BirthAbroadListModel> {
  /// See also [birthAbroadById].
  BirthAbroadByIdProvider(
    this.id,
  ) : super.internal(
          (ref) => birthAbroadById(
            ref,
            id,
          ),
          from: birthAbroadByIdProvider,
          name: r'birthAbroadByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$birthAbroadByIdHash,
          dependencies: BirthAbroadByIdFamily._dependencies,
          allTransitiveDependencies:
              BirthAbroadByIdFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is BirthAbroadByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$documentByIdHash() => r'dff464353fc91eed9684b168262e9eb6b42918d7';
typedef DocumentByIdRef
    = AutoDisposeFutureProviderRef<Result<Certificate, StatusCodeType>>;

/// See also [documentById].
@ProviderFor(documentById)
const documentByIdProvider = DocumentByIdFamily();

/// See also [documentById].
class DocumentByIdFamily
    extends Family<AsyncValue<Result<Certificate, StatusCodeType>>> {
  /// See also [documentById].
  const DocumentByIdFamily();

  /// See also [documentById].
  DocumentByIdProvider call({
    required String id,
  }) {
    return DocumentByIdProvider(
      id: id,
    );
  }

  @override
  DocumentByIdProvider getProviderOverride(
    covariant DocumentByIdProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'documentByIdProvider';
}

/// See also [documentById].
class DocumentByIdProvider
    extends AutoDisposeFutureProvider<Result<Certificate, StatusCodeType>> {
  /// See also [documentById].
  DocumentByIdProvider({
    required this.id,
  }) : super.internal(
          (ref) => documentById(
            ref,
            id: id,
          ),
          from: documentByIdProvider,
          name: r'documentByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$documentByIdHash,
          dependencies: DocumentByIdFamily._dependencies,
          allTransitiveDependencies:
              DocumentByIdFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is DocumentByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$birthAbroadHash() => r'26ea0f47aec2da939f682488b3b9e42110c1d21e';

/// See also [BirthAbroad].
@ProviderFor(BirthAbroad)
final birthAbroadProvider =
    AutoDisposeNotifierProvider<BirthAbroad, BirthAbroadModel>.internal(
  BirthAbroad.new,
  name: r'birthAbroadProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$birthAbroadHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BirthAbroad = AutoDisposeNotifier<BirthAbroadModel>;
String _$birthAbroadFilterHash() => r'434ea99898c4ce1e55516bb5e491798811e825fd';

/// See also [BirthAbroadFilter].
@ProviderFor(BirthAbroadFilter)
final birthAbroadFilterProvider =
    AutoDisposeNotifierProvider<BirthAbroadFilter, QueryBirthAbroad>.internal(
  BirthAbroadFilter.new,
  name: r'birthAbroadFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$birthAbroadFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BirthAbroadFilter = AutoDisposeNotifier<QueryBirthAbroad>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
