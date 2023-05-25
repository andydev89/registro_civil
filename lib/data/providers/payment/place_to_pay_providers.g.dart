// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_to_pay_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createPlaceToPayTransactionHash() =>
    r'af6824f0e40276b3a2c4e01d4e21b8a4e18116b6';

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
    Result<PlaceToPayReferenceModel, StatusCodeType>>;

/// See also [createPlaceToPayTransaction].
@ProviderFor(createPlaceToPayTransaction)
const createPlaceToPayTransactionProvider = CreatePlaceToPayTransactionFamily();

/// See also [createPlaceToPayTransaction].
class CreatePlaceToPayTransactionFamily extends Family<
    AsyncValue<Result<PlaceToPayReferenceModel, StatusCodeType>>> {
  /// See also [createPlaceToPayTransaction].
  const CreatePlaceToPayTransactionFamily();

  /// See also [createPlaceToPayTransaction].
  CreatePlaceToPayTransactionProvider call({
    required PlaceToPayModel placeToPayModel,
    required String transactionCode,
  }) {
    return CreatePlaceToPayTransactionProvider(
      placeToPayModel: placeToPayModel,
      transactionCode: transactionCode,
    );
  }

  @override
  CreatePlaceToPayTransactionProvider getProviderOverride(
    covariant CreatePlaceToPayTransactionProvider provider,
  ) {
    return call(
      placeToPayModel: provider.placeToPayModel,
      transactionCode: provider.transactionCode,
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
    Result<PlaceToPayReferenceModel, StatusCodeType>> {
  /// See also [createPlaceToPayTransaction].
  CreatePlaceToPayTransactionProvider({
    required this.placeToPayModel,
    required this.transactionCode,
  }) : super.internal(
          (ref) => createPlaceToPayTransaction(
            ref,
            placeToPayModel: placeToPayModel,
            transactionCode: transactionCode,
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
  final String transactionCode;

  @override
  bool operator ==(Object other) {
    return other is CreatePlaceToPayTransactionProvider &&
        other.placeToPayModel == placeToPayModel &&
        other.transactionCode == transactionCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, placeToPayModel.hashCode);
    hash = _SystemHash.combine(hash, transactionCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$isPlaceToPayTransactionCompletedHash() =>
    r'0fdb5301360c42bb9292668d42eec2fd6c848a51';
typedef IsPlaceToPayTransactionCompletedRef
    = AutoDisposeFutureProviderRef<Result<bool, StatusCodeType>>;

/// See also [isPlaceToPayTransactionCompleted].
@ProviderFor(isPlaceToPayTransactionCompleted)
const isPlaceToPayTransactionCompletedProvider =
    IsPlaceToPayTransactionCompletedFamily();

/// See also [isPlaceToPayTransactionCompleted].
class IsPlaceToPayTransactionCompletedFamily
    extends Family<AsyncValue<Result<bool, StatusCodeType>>> {
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
    extends AutoDisposeFutureProvider<Result<bool, StatusCodeType>> {
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

String _$notifyCompletePaymentToServicesHash() =>
    r'2d42dbd2d50d36fef1fffa8c0029093110f8b8c3';
typedef NotifyCompletePaymentToServicesRef = AutoDisposeFutureProviderRef<void>;

/// See also [notifyCompletePaymentToServices].
@ProviderFor(notifyCompletePaymentToServices)
const notifyCompletePaymentToServicesProvider =
    NotifyCompletePaymentToServicesFamily();

/// See also [notifyCompletePaymentToServices].
class NotifyCompletePaymentToServicesFamily extends Family<AsyncValue<void>> {
  /// See also [notifyCompletePaymentToServices].
  const NotifyCompletePaymentToServicesFamily();

  /// See also [notifyCompletePaymentToServices].
  NotifyCompletePaymentToServicesProvider call({
    required ServiceType serviceType,
    required PlaceToPayTransactionDetailsModel placeToPayTransactionDetails,
    required String transactionCode,
  }) {
    return NotifyCompletePaymentToServicesProvider(
      serviceType: serviceType,
      placeToPayTransactionDetails: placeToPayTransactionDetails,
      transactionCode: transactionCode,
    );
  }

  @override
  NotifyCompletePaymentToServicesProvider getProviderOverride(
    covariant NotifyCompletePaymentToServicesProvider provider,
  ) {
    return call(
      serviceType: provider.serviceType,
      placeToPayTransactionDetails: provider.placeToPayTransactionDetails,
      transactionCode: provider.transactionCode,
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
  String? get name => r'notifyCompletePaymentToServicesProvider';
}

/// See also [notifyCompletePaymentToServices].
class NotifyCompletePaymentToServicesProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [notifyCompletePaymentToServices].
  NotifyCompletePaymentToServicesProvider({
    required this.serviceType,
    required this.placeToPayTransactionDetails,
    required this.transactionCode,
  }) : super.internal(
          (ref) => notifyCompletePaymentToServices(
            ref,
            serviceType: serviceType,
            placeToPayTransactionDetails: placeToPayTransactionDetails,
            transactionCode: transactionCode,
          ),
          from: notifyCompletePaymentToServicesProvider,
          name: r'notifyCompletePaymentToServicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notifyCompletePaymentToServicesHash,
          dependencies: NotifyCompletePaymentToServicesFamily._dependencies,
          allTransitiveDependencies:
              NotifyCompletePaymentToServicesFamily._allTransitiveDependencies,
        );

  final ServiceType serviceType;
  final PlaceToPayTransactionDetailsModel placeToPayTransactionDetails;
  final String transactionCode;

  @override
  bool operator ==(Object other) {
    return other is NotifyCompletePaymentToServicesProvider &&
        other.serviceType == serviceType &&
        other.placeToPayTransactionDetails == placeToPayTransactionDetails &&
        other.transactionCode == transactionCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, serviceType.hashCode);
    hash = _SystemHash.combine(hash, placeToPayTransactionDetails.hashCode);
    hash = _SystemHash.combine(hash, transactionCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$checkPendingTransactionsHash() =>
    r'8ea255d7ee98ba64bf7ccb759277ce1517db7a48';

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
    r'aeda80373b7ca4e665fc5916fe5fd8c825c66b7a';

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
    r'e1c6f12d6e7aa17f274e7c577c0fc5f07d3f060b';

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
