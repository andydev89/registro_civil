// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$birthsAbroadHash() => r'29f4013ab8a8db59d2e5100c4a2228e0c985feb2';

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

String _$createBirthAbroadHash() => r'20043bd3c13ab093956cee8f85962c7837819c37';
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

String _$birthAbroadByIdHash() => r'c1515318221d7bd779840f5d6d4727ffe0dd169f';
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
    String id, {
    ForeignType type = ForeignType.resident,
  }) {
    return BirthAbroadByIdProvider(
      id,
      type: type,
    );
  }

  @override
  BirthAbroadByIdProvider getProviderOverride(
    covariant BirthAbroadByIdProvider provider,
  ) {
    return call(
      provider.id,
      type: provider.type,
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
    this.id, {
    this.type = ForeignType.resident,
  }) : super.internal(
          (ref) => birthAbroadById(
            ref,
            id,
            type: type,
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
  final ForeignType type;

  @override
  bool operator ==(Object other) {
    return other is BirthAbroadByIdProvider &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$documentByIdHash() => r'baf996f9dfb48d9639c09e4f4ca3869f99f6df71';
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
    ForeignType type = ForeignType.resident,
  }) {
    return DocumentByIdProvider(
      id: id,
      type: type,
    );
  }

  @override
  DocumentByIdProvider getProviderOverride(
    covariant DocumentByIdProvider provider,
  ) {
    return call(
      id: provider.id,
      type: provider.type,
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
    this.type = ForeignType.resident,
  }) : super.internal(
          (ref) => documentById(
            ref,
            id: id,
            type: type,
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
  final ForeignType type;

  @override
  bool operator ==(Object other) {
    return other is DocumentByIdProvider &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$editBirthAbroadDocsHash() =>
    r'd3aa315c55e4693edf3cb906006d604b2e44467b';
typedef EditBirthAbroadDocsRef
    = AutoDisposeFutureProviderRef<Result<CommandModel, StatusCodeType>>;

/// See also [editBirthAbroadDocs].
@ProviderFor(editBirthAbroadDocs)
const editBirthAbroadDocsProvider = EditBirthAbroadDocsFamily();

/// See also [editBirthAbroadDocs].
class EditBirthAbroadDocsFamily
    extends Family<AsyncValue<Result<CommandModel, StatusCodeType>>> {
  /// See also [editBirthAbroadDocs].
  const EditBirthAbroadDocsFamily();

  /// See also [editBirthAbroadDocs].
  EditBirthAbroadDocsProvider call({
    required BirthAbroadDocumentModel model,
    ForeignType type = ForeignType.resident,
  }) {
    return EditBirthAbroadDocsProvider(
      model: model,
      type: type,
    );
  }

  @override
  EditBirthAbroadDocsProvider getProviderOverride(
    covariant EditBirthAbroadDocsProvider provider,
  ) {
    return call(
      model: provider.model,
      type: provider.type,
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
  String? get name => r'editBirthAbroadDocsProvider';
}

/// See also [editBirthAbroadDocs].
class EditBirthAbroadDocsProvider
    extends AutoDisposeFutureProvider<Result<CommandModel, StatusCodeType>> {
  /// See also [editBirthAbroadDocs].
  EditBirthAbroadDocsProvider({
    required this.model,
    this.type = ForeignType.resident,
  }) : super.internal(
          (ref) => editBirthAbroadDocs(
            ref,
            model: model,
            type: type,
          ),
          from: editBirthAbroadDocsProvider,
          name: r'editBirthAbroadDocsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editBirthAbroadDocsHash,
          dependencies: EditBirthAbroadDocsFamily._dependencies,
          allTransitiveDependencies:
              EditBirthAbroadDocsFamily._allTransitiveDependencies,
        );

  final BirthAbroadDocumentModel model;
  final ForeignType type;

  @override
  bool operator ==(Object other) {
    return other is EditBirthAbroadDocsProvider &&
        other.model == model &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$birthAbroadHash() => r'7c5e93d19c321c3b588ad6343f060a8586566ef6';

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
