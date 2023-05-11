// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPlaceToPayTransactionHash() =>
    r'920f8a56c36d2f06fc930c1ed03d8c19d9b1b3e5';

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

typedef CreatePlaceToPayTransactionRef = AutoDisposeFutureProviderRef<
    Result<PlaceToPayReferenceModel, StatusCode>>;

/// See also [createPlaceToPayTransaction].
@ProviderFor(createPlaceToPayTransaction)
const createPlaceToPayTransactionProvider = CreatePlaceToPayTransactionFamily();

/// See also [createPlaceToPayTransaction].
class CreatePlaceToPayTransactionFamily
    extends Family<AsyncValue<Result<PlaceToPayReferenceModel, StatusCode>>> {
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
class CreatePlaceToPayTransactionProvider extends AutoDisposeFutureProvider<
    Result<PlaceToPayReferenceModel, StatusCode>> {
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

String _$isPlaceToPayTransactionCompletedHash() =>
    r'f38b2e85715db71d42bc5caa6f83d84171495a50';
typedef IsPlaceToPayTransactionCompletedRef
    = AutoDisposeFutureProviderRef<Result<bool, StatusCode>>;

/// See also [isPlaceToPayTransactionCompleted].
@ProviderFor(isPlaceToPayTransactionCompleted)
const isPlaceToPayTransactionCompletedProvider =
    IsPlaceToPayTransactionCompletedFamily();

/// See also [isPlaceToPayTransactionCompleted].
class IsPlaceToPayTransactionCompletedFamily
    extends Family<AsyncValue<Result<bool, StatusCode>>> {
  /// See also [isPlaceToPayTransactionCompleted].
  const IsPlaceToPayTransactionCompletedFamily();

  /// See also [isPlaceToPayTransactionCompleted].
  IsPlaceToPayTransactionCompletedProvider call({
    required PlaceToPayReferenceModel placeToPayReference,
  }) {
    return IsPlaceToPayTransactionCompletedProvider(
      placeToPayReference: placeToPayReference,
    );
  }

  @override
  IsPlaceToPayTransactionCompletedProvider getProviderOverride(
    covariant IsPlaceToPayTransactionCompletedProvider provider,
  ) {
    return call(
      placeToPayReference: provider.placeToPayReference,
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
  String? get name => r'isPlaceToPayTransactionCompletedProvider';
}

/// See also [isPlaceToPayTransactionCompleted].
class IsPlaceToPayTransactionCompletedProvider
    extends AutoDisposeFutureProvider<Result<bool, StatusCode>> {
  /// See also [isPlaceToPayTransactionCompleted].
  IsPlaceToPayTransactionCompletedProvider({
    required this.placeToPayReference,
  }) : super.internal(
          (ref) => isPlaceToPayTransactionCompleted(
            ref,
            placeToPayReference: placeToPayReference,
          ),
          from: isPlaceToPayTransactionCompletedProvider,
          name: r'isPlaceToPayTransactionCompletedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isPlaceToPayTransactionCompletedHash,
          dependencies: IsPlaceToPayTransactionCompletedFamily._dependencies,
          allTransitiveDependencies:
              IsPlaceToPayTransactionCompletedFamily._allTransitiveDependencies,
        );

  final PlaceToPayReferenceModel placeToPayReference;

  @override
  bool operator ==(Object other) {
    return other is IsPlaceToPayTransactionCompletedProvider &&
        other.placeToPayReference == placeToPayReference;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, placeToPayReference.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$checkPendingTransactionsHash() =>
    r'56a3ff2629093f94bc9ba331e72dd49856829153';

/// See also [checkPendingTransactions].
@ProviderFor(checkPendingTransactions)
final checkPendingTransactionsProvider =
    AutoDisposeFutureProvider<void>.internal(
  checkPendingTransactions,
  name: r'checkPendingTransactionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$checkPendingTransactionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CheckPendingTransactionsRef = AutoDisposeFutureProviderRef<void>;
String _$executeCheckingPendingTransactionsHash() =>
    r'f408b5a3dc8833d9d60f5d0f89a161e0cd056b5c';

/// See also [executeCheckingPendingTransactions].
@ProviderFor(executeCheckingPendingTransactions)
final executeCheckingPendingTransactionsProvider =
    AutoDisposeProvider<void>.internal(
  executeCheckingPendingTransactions,
  name: r'executeCheckingPendingTransactionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$executeCheckingPendingTransactionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ExecuteCheckingPendingTransactionsRef = AutoDisposeProviderRef<void>;
String _$transactionsStatusHash() =>
    r'ef40c9b6c12d0de9ab0c92481ced57fb796b58dd';

/// See also [TransactionsStatus].
@ProviderFor(TransactionsStatus)
final transactionsStatusProvider = AutoDisposeNotifierProvider<
    TransactionsStatus, List<PlaceToPayReferenceModel>>.internal(
  TransactionsStatus.new,
  name: r'transactionsStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionsStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TransactionsStatus
    = AutoDisposeNotifier<List<PlaceToPayReferenceModel>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
