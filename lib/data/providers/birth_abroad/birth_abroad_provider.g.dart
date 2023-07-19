// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_abroad_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$birthsAbroadHash() => r'6686163cfb93ecc574b0a07f9c9d977228243a8f';

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
