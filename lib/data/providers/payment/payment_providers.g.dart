// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPlaceToPayTransactionHash() =>
    r'2956fa2f31eab7898ea2576bd69e5742e083e6b4';

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

typedef CreatePlaceToPayTransactionRef
    = AutoDisposeFutureProviderRef<Result<dynamic, StatusCode>>;

/// See also [createPlaceToPayTransaction].
@ProviderFor(createPlaceToPayTransaction)
const createPlaceToPayTransactionProvider = CreatePlaceToPayTransactionFamily();

/// See also [createPlaceToPayTransaction].
class CreatePlaceToPayTransactionFamily
    extends Family<AsyncValue<Result<dynamic, StatusCode>>> {
  /// See also [createPlaceToPayTransaction].
  const CreatePlaceToPayTransactionFamily();

  /// See also [createPlaceToPayTransaction].
  CreatePlaceToPayTransactionProvider call({
    required PlaceToPayModel placeToPayModel,
  }) {
    return CreatePlaceToPayTransactionProvider(
      placeToPayModel: placeToPayModel,
    );
  }

  @override
  CreatePlaceToPayTransactionProvider getProviderOverride(
    covariant CreatePlaceToPayTransactionProvider provider,
  ) {
    return call(
      placeToPayModel: provider.placeToPayModel,
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
  String? get name => r'createPlaceToPayTransactionProvider';
}

/// See also [createPlaceToPayTransaction].
class CreatePlaceToPayTransactionProvider
    extends AutoDisposeFutureProvider<Result<dynamic, StatusCode>> {
  /// See also [createPlaceToPayTransaction].
  CreatePlaceToPayTransactionProvider({
    required this.placeToPayModel,
  }) : super.internal(
          (ref) => createPlaceToPayTransaction(
            ref,
            placeToPayModel: placeToPayModel,
          ),
          from: createPlaceToPayTransactionProvider,
          name: r'createPlaceToPayTransactionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPlaceToPayTransactionHash,
          dependencies: CreatePlaceToPayTransactionFamily._dependencies,
          allTransitiveDependencies:
              CreatePlaceToPayTransactionFamily._allTransitiveDependencies,
        );

  final PlaceToPayModel placeToPayModel;

  @override
  bool operator ==(Object other) {
    return other is CreatePlaceToPayTransactionProvider &&
        other.placeToPayModel == placeToPayModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, placeToPayModel.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
