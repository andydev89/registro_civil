// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_of_name_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$changeNamesHash() => r'e348e9ff4190ba6f44fc4c2e6d20b2988c41340e';

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

typedef ChangeNamesRef = AutoDisposeFutureProviderRef<
    ResponseModelPagination<List<ChangeOfNameListModel>>>;

/// See also [changeNames].
@ProviderFor(changeNames)
const changeNamesProvider = ChangeNamesFamily();

/// See also [changeNames].
class ChangeNamesFamily extends Family<
    AsyncValue<ResponseModelPagination<List<ChangeOfNameListModel>>>> {
  /// See also [changeNames].
  const ChangeNamesFamily();

  /// See also [changeNames].
  ChangeNamesProvider call({
    int? pageNo,
  }) {
    return ChangeNamesProvider(
      pageNo: pageNo,
    );
  }

  @override
  ChangeNamesProvider getProviderOverride(
    covariant ChangeNamesProvider provider,
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
  String? get name => r'changeNamesProvider';
}

/// See also [changeNames].
class ChangeNamesProvider extends AutoDisposeFutureProvider<
    ResponseModelPagination<List<ChangeOfNameListModel>>> {
  /// See also [changeNames].
  ChangeNamesProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => changeNames(
            ref,
            pageNo: pageNo,
          ),
          from: changeNamesProvider,
          name: r'changeNamesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changeNamesHash,
          dependencies: ChangeNamesFamily._dependencies,
          allTransitiveDependencies:
              ChangeNamesFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is ChangeNamesProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$changeOfNameHash() => r'ac27f24955d621a226a842bdd3e7d615775d9a39';
typedef ChangeOfNameRef = AutoDisposeFutureProviderRef<
    Result<CommandWithTransactionCodeModel, StatusCodeType>>;

/// See also [changeOfName].
@ProviderFor(changeOfName)
const changeOfNameProvider = ChangeOfNameFamily();

/// See also [changeOfName].
class ChangeOfNameFamily extends Family<
    AsyncValue<Result<CommandWithTransactionCodeModel, StatusCodeType>>> {
  /// See also [changeOfName].
  const ChangeOfNameFamily();

  /// See also [changeOfName].
  ChangeOfNameProvider call({
    required ChangeOfNameModel changeOfNameModel,
  }) {
    return ChangeOfNameProvider(
      changeOfNameModel: changeOfNameModel,
    );
  }

  @override
  ChangeOfNameProvider getProviderOverride(
    covariant ChangeOfNameProvider provider,
  ) {
    return call(
      changeOfNameModel: provider.changeOfNameModel,
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
  String? get name => r'changeOfNameProvider';
}

/// See also [changeOfName].
class ChangeOfNameProvider extends AutoDisposeFutureProvider<
    Result<CommandWithTransactionCodeModel, StatusCodeType>> {
  /// See also [changeOfName].
  ChangeOfNameProvider({
    required this.changeOfNameModel,
  }) : super.internal(
          (ref) => changeOfName(
            ref,
            changeOfNameModel: changeOfNameModel,
          ),
          from: changeOfNameProvider,
          name: r'changeOfNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changeOfNameHash,
          dependencies: ChangeOfNameFamily._dependencies,
          allTransitiveDependencies:
              ChangeOfNameFamily._allTransitiveDependencies,
        );

  final ChangeOfNameModel changeOfNameModel;

  @override
  bool operator ==(Object other) {
    return other is ChangeOfNameProvider &&
        other.changeOfNameModel == changeOfNameModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, changeOfNameModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$changeOfNameByIdHash() => r'511a2cfe459cf9e467c71597a6d0a82fba0ec550';
typedef ChangeOfNameByIdRef
    = AutoDisposeFutureProviderRef<ChangeOfNameListModel>;

/// See also [changeOfNameById].
@ProviderFor(changeOfNameById)
const changeOfNameByIdProvider = ChangeOfNameByIdFamily();

/// See also [changeOfNameById].
class ChangeOfNameByIdFamily extends Family<AsyncValue<ChangeOfNameListModel>> {
  /// See also [changeOfNameById].
  const ChangeOfNameByIdFamily();

  /// See also [changeOfNameById].
  ChangeOfNameByIdProvider call(
    String id,
  ) {
    return ChangeOfNameByIdProvider(
      id,
    );
  }

  @override
  ChangeOfNameByIdProvider getProviderOverride(
    covariant ChangeOfNameByIdProvider provider,
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
  String? get name => r'changeOfNameByIdProvider';
}

/// See also [changeOfNameById].
class ChangeOfNameByIdProvider
    extends AutoDisposeFutureProvider<ChangeOfNameListModel> {
  /// See also [changeOfNameById].
  ChangeOfNameByIdProvider(
    this.id,
  ) : super.internal(
          (ref) => changeOfNameById(
            ref,
            id,
          ),
          from: changeOfNameByIdProvider,
          name: r'changeOfNameByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changeOfNameByIdHash,
          dependencies: ChangeOfNameByIdFamily._dependencies,
          allTransitiveDependencies:
              ChangeOfNameByIdFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is ChangeOfNameByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$changeNameHash() => r'bc767d97a8a981210151e306c029a2e7fcd10365';

/// See also [ChangeName].
@ProviderFor(ChangeName)
final changeNameProvider =
    AutoDisposeNotifierProvider<ChangeName, ChangeOfNameModel>.internal(
  ChangeName.new,
  name: r'changeNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$changeNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChangeName = AutoDisposeNotifier<ChangeOfNameModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
