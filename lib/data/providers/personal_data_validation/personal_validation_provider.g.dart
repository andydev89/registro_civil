// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_validation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$personalValidationsHash() =>
    r'deb0a0c64777f0be47876e148ddbf55c74d54a0f';

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

typedef PersonalValidationsRef
    = AutoDisposeFutureProviderRef<ResponseModelPagination<List<dynamic>>>;

/// See also [personalValidations].
@ProviderFor(personalValidations)
const personalValidationsProvider = PersonalValidationsFamily();

/// See also [personalValidations].
class PersonalValidationsFamily
    extends Family<AsyncValue<ResponseModelPagination<List<dynamic>>>> {
  /// See also [personalValidations].
  const PersonalValidationsFamily();

  /// See also [personalValidations].
  PersonalValidationsProvider call({
    int? pageNo,
  }) {
    return PersonalValidationsProvider(
      pageNo: pageNo,
    );
  }

  @override
  PersonalValidationsProvider getProviderOverride(
    covariant PersonalValidationsProvider provider,
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
  String? get name => r'personalValidationsProvider';
}

/// See also [personalValidations].
class PersonalValidationsProvider
    extends AutoDisposeFutureProvider<ResponseModelPagination<List<dynamic>>> {
  /// See also [personalValidations].
  PersonalValidationsProvider({
    this.pageNo,
  }) : super.internal(
          (ref) => personalValidations(
            ref,
            pageNo: pageNo,
          ),
          from: personalValidationsProvider,
          name: r'personalValidationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$personalValidationsHash,
          dependencies: PersonalValidationsFamily._dependencies,
          allTransitiveDependencies:
              PersonalValidationsFamily._allTransitiveDependencies,
        );

  final int? pageNo;

  @override
  bool operator ==(Object other) {
    return other is PersonalValidationsProvider && other.pageNo == pageNo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
