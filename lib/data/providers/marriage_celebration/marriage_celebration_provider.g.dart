// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marriage_celebration_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$marriageDocumentsHash() => r'd948c239a4d4426f81295b8a61641590f9fcb116';

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

typedef MarriageDocumentsRef
    = AutoDisposeFutureProviderRef<List<DocumentResponse>>;

/// See also [marriageDocuments].
@ProviderFor(marriageDocuments)
const marriageDocumentsProvider = MarriageDocumentsFamily();

/// See also [marriageDocuments].
class MarriageDocumentsFamily
    extends Family<AsyncValue<List<DocumentResponse>>> {
  /// See also [marriageDocuments].
  const MarriageDocumentsFamily();

  /// See also [marriageDocuments].
  MarriageDocumentsProvider call({
    required MaritalStatus maritalStatus,
    required Binary hasChildren,
    ChildrenRelationShip? childrenRelationShip,
  }) {
    return MarriageDocumentsProvider(
      maritalStatus: maritalStatus,
      hasChildren: hasChildren,
      childrenRelationShip: childrenRelationShip,
    );
  }

  @override
  MarriageDocumentsProvider getProviderOverride(
    covariant MarriageDocumentsProvider provider,
  ) {
    return call(
      maritalStatus: provider.maritalStatus,
      hasChildren: provider.hasChildren,
      childrenRelationShip: provider.childrenRelationShip,
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
  String? get name => r'marriageDocumentsProvider';
}

/// See also [marriageDocuments].
class MarriageDocumentsProvider
    extends AutoDisposeFutureProvider<List<DocumentResponse>> {
  /// See also [marriageDocuments].
  MarriageDocumentsProvider({
    required this.maritalStatus,
    required this.hasChildren,
    this.childrenRelationShip,
  }) : super.internal(
          (ref) => marriageDocuments(
            ref,
            maritalStatus: maritalStatus,
            hasChildren: hasChildren,
            childrenRelationShip: childrenRelationShip,
          ),
          from: marriageDocumentsProvider,
          name: r'marriageDocumentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$marriageDocumentsHash,
          dependencies: MarriageDocumentsFamily._dependencies,
          allTransitiveDependencies:
              MarriageDocumentsFamily._allTransitiveDependencies,
        );

  final MaritalStatus maritalStatus;
  final Binary hasChildren;
  final ChildrenRelationShip? childrenRelationShip;

  @override
  bool operator ==(Object other) {
    return other is MarriageDocumentsProvider &&
        other.maritalStatus == maritalStatus &&
        other.hasChildren == hasChildren &&
        other.childrenRelationShip == childrenRelationShip;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, maritalStatus.hashCode);
    hash = _SystemHash.combine(hash, hasChildren.hashCode);
    hash = _SystemHash.combine(hash, childrenRelationShip.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$marriagesHash() => r'b11526ed2f44037dd42108bfddf5bdb898a407f5';
typedef MarriagesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<ResponseMarriageModel>>>;

/// See also [marriages].
@ProviderFor(marriages)
const marriagesProvider = MarriagesFamily();

/// See also [marriages].
class MarriagesFamily extends Family<
    AsyncValue<ResponseModelPagination<List<ResponseMarriageModel>>>> {
  /// See also [marriages].
  const MarriagesFamily();

  /// See also [marriages].
  MarriagesProvider call({
    int? pageNo,
  }) {
    return MarriagesProvider(
      pageNo: pageNo,
    );
  }

  @override
  MarriagesProvider getProviderOverride(
    covariant MarriagesProvider provider,
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
  String? get name => r'marriagesProvider';
}

/// See also [marriages].
class MarriagesProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<ResponseMarriageModel>>> {
  /// See also [marriages].
  MarriagesProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => marriages(
            ref,
            pageNo: pageNo,
          ),
          from: marriagesProvider,
          name: r'marriagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$marriagesHash,
          dependencies: MarriagesFamily._dependencies,
          allTransitiveDependencies: MarriagesFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is MarriagesProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$marriageCelebrationHash() =>
    r'dd6758d657c84910a0254293011f70e3a6a22f2a';

/// See also [MarriageCelebration].
@ProviderFor(MarriageCelebration)
final marriageCelebrationProvider = AutoDisposeNotifierProvider<
    MarriageCelebration, MarriageCelebrationModel>.internal(
  MarriageCelebration.new,
  name: r'marriageCelebrationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marriageCelebrationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarriageCelebration = AutoDisposeNotifier<MarriageCelebrationModel>;
String _$witness1Hash() => r'c0cf1ddd35e4c05f617f36963f47c093c751e6f5';

/// See also [Witness1].
@ProviderFor(Witness1)
final witness1Provider =
    AutoDisposeNotifierProvider<Witness1, Witness>.internal(
  Witness1.new,
  name: r'witness1Provider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$witness1Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Witness1 = AutoDisposeNotifier<Witness>;
String _$witnesssHash() => r'908e8de10ba7bc31d7ecefbed8968b312e0005b5';

abstract class _$Witnesss extends BuildlessAutoDisposeNotifier<Witness> {
  late final int index;

  Witness build(
    int index,
  );
}

/// See also [Witnesss].
@ProviderFor(Witnesss)
const witnesssProvider = WitnesssFamily();

/// See also [Witnesss].
class WitnesssFamily extends Family<Witness> {
  /// See also [Witnesss].
  const WitnesssFamily();

  /// See also [Witnesss].
  WitnesssProvider call(
    int index,
  ) {
    return WitnesssProvider(
      index,
    );
  }

  @override
  WitnesssProvider getProviderOverride(
    covariant WitnesssProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'witnesssProvider';
}

/// See also [Witnesss].
class WitnesssProvider
    extends AutoDisposeNotifierProviderImpl<Witnesss, Witness> {
  /// See also [Witnesss].
  WitnesssProvider(
    this.index,
  ) : super.internal(
          () => Witnesss()..index = index,
          from: witnesssProvider,
          name: r'witnesssProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$witnesssHash,
          dependencies: WitnesssFamily._dependencies,
          allTransitiveDependencies: WitnesssFamily._allTransitiveDependencies,
        );

  final int index;

  @override
  bool operator ==(Object other) {
    return other is WitnesssProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Witness runNotifierBuild(
    covariant Witnesss notifier,
  ) {
    return notifier.build(
      index,
    );
  }
}

String _$partnersHash() => r'833d4abcb59799874f520e00fbdeb1d7580c9351';

abstract class _$Partners extends BuildlessAutoDisposeNotifier<Partner> {
  late final int indexPartner;

  Partner build(
    int indexPartner,
  );
}

/// See also [Partners].
@ProviderFor(Partners)
const partnersProvider = PartnersFamily();

/// See also [Partners].
class PartnersFamily extends Family<Partner> {
  /// See also [Partners].
  const PartnersFamily();

  /// See also [Partners].
  PartnersProvider call(
    int indexPartner,
  ) {
    return PartnersProvider(
      indexPartner,
    );
  }

  @override
  PartnersProvider getProviderOverride(
    covariant PartnersProvider provider,
  ) {
    return call(
      provider.indexPartner,
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
  String? get name => r'partnersProvider';
}

/// See also [Partners].
class PartnersProvider
    extends AutoDisposeNotifierProviderImpl<Partners, Partner> {
  /// See also [Partners].
  PartnersProvider(
    this.indexPartner,
  ) : super.internal(
          () => Partners()..indexPartner = indexPartner,
          from: partnersProvider,
          name: r'partnersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$partnersHash,
          dependencies: PartnersFamily._dependencies,
          allTransitiveDependencies: PartnersFamily._allTransitiveDependencies,
        );

  final int indexPartner;

  @override
  bool operator ==(Object other) {
    return other is PartnersProvider && other.indexPartner == indexPartner;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, indexPartner.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Partner runNotifierBuild(
    covariant Partners notifier,
  ) {
    return notifier.build(
      indexPartner,
    );
  }
}

String _$marriageHash() => r'b260fa2b711a32a59cb3ee73013eba85d311eaa8';

/// See also [Marriage].
@ProviderFor(Marriage)
final marriageProvider = AutoDisposeNotifierProvider<Marriage, void>.internal(
  Marriage.new,
  name: r'marriageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$marriageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Marriage = AutoDisposeNotifier<void>;
String _$marriagesFilterHash() => r'508eacb2e5d7c823b73a1d489067d39ca4ce7a6f';

/// See also [MarriagesFilter].
@ProviderFor(MarriagesFilter)
final marriagesFilterProvider =
    AutoDisposeNotifierProvider<MarriagesFilter, QueryMarriages>.internal(
  MarriagesFilter.new,
  name: r'marriagesFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$marriagesFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MarriagesFilter = AutoDisposeNotifier<QueryMarriages>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
