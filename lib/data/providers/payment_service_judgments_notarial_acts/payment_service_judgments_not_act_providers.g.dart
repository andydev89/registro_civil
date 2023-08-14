// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_service_judgments_not_act_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getservicesHash() => r'882b0d634d48edb7ef734320fb544bdc86017b13';

/// See also [getservices].
@ProviderFor(getservices)
final getservicesProvider = AutoDisposeFutureProvider<
    Result<List<PaymentofservicesModel>, StatusCodeType>>.internal(
  getservices,
  name: r'getservicesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getservicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetservicesRef = AutoDisposeFutureProviderRef<
    Result<List<PaymentofservicesModel>, StatusCodeType>>;
String _$createpaymentofservicesHash() =>
    r'54f3a6e791d6111976014e0317249cc8d4ec4972';

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

typedef CreatepaymentofservicesRef = AutoDisposeFutureProviderRef<
    Result<CommandWithTransactionCodeModel, StatusCodeType>>;

/// See also [createpaymentofservices].
@ProviderFor(createpaymentofservices)
const createpaymentofservicesProvider = CreatepaymentofservicesFamily();

/// See also [createpaymentofservices].
class CreatepaymentofservicesFamily extends Family<
    AsyncValue<Result<CommandWithTransactionCodeModel, StatusCodeType>>> {
  /// See also [createpaymentofservices].
  const CreatepaymentofservicesFamily();

  /// See also [createpaymentofservices].
  CreatepaymentofservicesProvider call(
    PaymentServiceJudgmentsNotarialActsModel model,
  ) {
    return CreatepaymentofservicesProvider(
      model,
    );
  }

  @override
  CreatepaymentofservicesProvider getProviderOverride(
    covariant CreatepaymentofservicesProvider provider,
  ) {
    return call(
      provider.model,
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
  String? get name => r'createpaymentofservicesProvider';
}

/// See also [createpaymentofservices].
class CreatepaymentofservicesProvider extends AutoDisposeFutureProvider<
    Result<CommandWithTransactionCodeModel, StatusCodeType>> {
  /// See also [createpaymentofservices].
  CreatepaymentofservicesProvider(
    this.model,
  ) : super.internal(
          (ref) => createpaymentofservices(
            ref,
            model,
          ),
          from: createpaymentofservicesProvider,
          name: r'createpaymentofservicesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createpaymentofservicesHash,
          dependencies: CreatepaymentofservicesFamily._dependencies,
          allTransitiveDependencies:
              CreatepaymentofservicesFamily._allTransitiveDependencies,
        );

  final PaymentServiceJudgmentsNotarialActsModel model;

  @override
  bool operator ==(Object other) {
    return other is CreatepaymentofservicesProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$createaPaymentservicesHash() =>
    r'f9dc0f178ed043ae735c2be34dda8ed81bd22533';

/// See also [CreateaPaymentservices].
@ProviderFor(CreateaPaymentservices)
final createaPaymentservicesProvider = AutoDisposeNotifierProvider<
    CreateaPaymentservices, CreateaPaymentservices>.internal(
  CreateaPaymentservices.new,
  name: r'createaPaymentservicesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createaPaymentservicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CreateaPaymentservices = AutoDisposeNotifier<CreateaPaymentservices>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
